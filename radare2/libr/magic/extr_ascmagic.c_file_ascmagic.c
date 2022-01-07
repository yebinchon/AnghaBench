
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char ut8 ;
typedef char unichar ;
typedef int ubuf ;
struct names {size_t type; scalar_t__ name; } ;
typedef int nbuf ;
struct TYPE_8__ {char* human; char* mime; } ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ RMagic ;


 size_t HOWMANY ;
 scalar_t__ ISSPC (char) ;
 size_t MAXLINELEN ;
 int NNAMES ;
 int R_MAGIC_MIME ;
 int R_MAGIC_MIME_ENCODING ;
 int R_MAGIC_MIME_TYPE ;
 int R_MAGIC_NO_CHECK_TOKENS ;
 int TEXTTEST ;
 scalar_t__ ascmatch (char const*,char*,size_t) ;
 char* calloc (int,size_t) ;
 char* encode_utf8 (char*,size_t,char*,size_t) ;
 int file_looks_utf8 (char const*,size_t,char*,size_t*) ;
 int file_oomem (TYPE_1__*,size_t) ;
 int file_printf (TYPE_1__*,char const*) ;
 scalar_t__ file_softmagic (TYPE_1__*,char*,int,int ) ;
 int free (char*) ;
 int from_ebcdic (char const*,size_t,char*) ;
 scalar_t__ looks_ascii (char const*,size_t,char*,size_t*) ;
 scalar_t__ looks_extended (char const*,size_t,char*,size_t*) ;
 scalar_t__ looks_latin1 (char const*,size_t,char*,size_t*) ;
 size_t looks_ucs16 (char const*,size_t,char*,size_t*) ;
 scalar_t__ looks_utf8_with_BOM (char const*,size_t,char*,size_t*) ;
 char* malloc (size_t) ;
 int memcmp (char const*,char*,int) ;
 struct names const* names ;
 TYPE_2__* types ;

int file_ascmagic(RMagic *ms, const ut8 *buf, size_t nbytes) {
return 0;
 size_t i;
 ut8 *nbuf = ((void*)0), *utf8_buf = ((void*)0), *utf8_end;
 unichar *ubuf = ((void*)0);
 size_t ulen, mlen;
 const struct names *p;
 int rv = -1;
 int mime = ms->flags & R_MAGIC_MIME;

 const char *code = ((void*)0);
 const char *code_mime = ((void*)0);
 const char *type = ((void*)0);
 const char *subtype = ((void*)0);
 const char *subtype_mime = ((void*)0);

 int has_escapes = 0;
 int has_backspace = 0;
 int seen_cr = 0;

 int n_crlf = 0;
 int n_lf = 0;
 int n_cr = 0;
 int n_nel = 0;

 size_t last_line_end = (size_t)-1;
 int has_long_lines = 0;





 while (nbytes > 1 && buf[nbytes - 1] == '\0') {
  nbytes--;
 }

 if (!(nbuf = calloc (1, (nbytes + 1) * sizeof (nbuf[0])))) {
  goto done;
 }
 if (!(ubuf = calloc (1, (nbytes + 1) * sizeof (ubuf[0])))) {
  goto done;
 }







 if (looks_ascii(buf, nbytes, ubuf, &ulen)) {
  code = "ASCII";
  code_mime = "us-ascii";
  type = "text";
 } else if (looks_utf8_with_BOM(buf, nbytes, ubuf, &ulen) > 0) {
  code = "UTF-8 Unicode (with BOM)";
  code_mime = "utf-8";
  type = "text";
 } else if (file_looks_utf8(buf, nbytes, ubuf, &ulen) > 1) {
  code = "UTF-8 Unicode";
  code_mime = "utf-8";
  type = "text";
 } else if ((i = looks_ucs16(buf, nbytes, ubuf, &ulen)) != 0) {
  if (i == 1) {
   code = "Little-endian UTF-16 Unicode";
  } else {
   code = "Big-endian UTF-16 Unicode";
  }

  type = "character data";
  code_mime = "utf-16";
 } else if (looks_latin1(buf, nbytes, ubuf, &ulen)) {
  if (!memcmp (buf, "\xff\xff\xff\xff", 4)) {

   goto done;
  }
  code = "ISO-8859";
  type = "text";
  code_mime = "iso-8859-1";
 } else if (looks_extended(buf, nbytes, ubuf, &ulen)) {
  code = "Non-ISO extended-ASCII";
  type = "text";
  code_mime = "unknown";
 } else {
  from_ebcdic(buf, nbytes, nbuf);

  if (looks_ascii(nbuf, nbytes, ubuf, &ulen)) {
   code = "EBCDIC";
   type = "character data";
   code_mime = "ebcdic";
  } else if (looks_latin1(nbuf, nbytes, ubuf, &ulen)) {
   code = "International EBCDIC";
   type = "character data";
   code_mime = "ebcdic";
  } else {
   rv = 0;
   goto done;
  }
 }

 if (nbytes <= 1) {
  rv = 0;
  goto done;
 }







 mlen = ulen * 6;
 if (!(utf8_buf = malloc(mlen))) {
  file_oomem(ms, mlen);
  goto done;
 }
 if (!(utf8_end = encode_utf8 (utf8_buf, mlen, ubuf, ulen))) {
  goto done;
 }
 if (file_softmagic(ms, utf8_buf, utf8_end - utf8_buf, TEXTTEST) != 0) {
  rv = 1;
  goto done;
 }


 if ((ms->flags & R_MAGIC_NO_CHECK_TOKENS) != 0) {
  goto subtype_identified;
 }

 i = 0;
 while (i < ulen) {
  size_t end;


  while (i < ulen && ISSPC (ubuf[i])) {
   i++;
  }
  if (i >= ulen) {
   break;
  }


  for (end = i + 1; end < nbytes; end++) {
   if (ISSPC (ubuf[end])) {
    break;
   }
  }


  for (p = names; p < names + NNAMES; p++) {
   if (ascmatch((const ut8 *)p->name, ubuf + i,
       end - i)) {
    subtype = types[p->type].human;
    subtype_mime = types[p->type].mime;
    goto subtype_identified;
   }
  }

  i = end;
 }

subtype_identified:


 for (i = 0; i < ulen; i++) {
  if (ubuf[i] == '\n') {
   if (seen_cr) {
    n_crlf++;
   } else {
    n_lf++;
   }
   last_line_end = i;
  } else if (seen_cr) {
   n_cr++;
  }

  seen_cr = (ubuf[i] == '\r');
  if (seen_cr) {
   last_line_end = i;
  }

  if (ubuf[i] == 0x85) {
   n_nel++;
   last_line_end = i;
  }

  if (i > last_line_end + MAXLINELEN) {
   has_long_lines = 1;
  }

  if (ubuf[i] == '\033') {
   has_escapes = 1;
  }
  if (ubuf[i] == '\b') {
   has_backspace = 1;
  }
 }





 if (seen_cr && nbytes < HOWMANY) {
  n_cr++;
 }

 if (mime) {
  if (mime & R_MAGIC_MIME_TYPE) {
   if (subtype_mime) {
    if (file_printf (ms, subtype_mime) == -1) {
     goto done;
    }
   } else {
    if (file_printf (ms, "text/plain") == -1) {
     goto done;
    }
   }
  }

  if ((mime == 0 || mime == R_MAGIC_MIME) && code_mime) {
   if ((mime & R_MAGIC_MIME_TYPE) &&
    file_printf (ms, " charset=") == -1) {
    goto done;
   }
   if (file_printf (ms, code_mime) == -1) {
    goto done;
   }
  }

  if (mime == R_MAGIC_MIME_ENCODING) {
   if (file_printf (ms, "binary") == -1) {
    rv = 1;
    goto done;
   }
  }
 } else {
  if (file_printf (ms, code) == -1) {
   goto done;
  }

  if (subtype) {
   if (file_printf (ms, " ") == -1) {
    goto done;
   }
   if (file_printf (ms, subtype) == -1) {
    goto done;
   }
  }

  if (file_printf (ms, " ") == -1) {
   goto done;
  }
  if (file_printf (ms, type) == -1) {
   goto done;
  }

  if (has_long_lines) {
   if (file_printf (ms, ", with very long lines") == -1) {
    goto done;
   }
  }





  if ((n_crlf == 0 && n_cr == 0 && n_nel == 0 && n_lf == 0) ||
      (n_crlf != 0 || n_cr != 0 || n_nel != 0)) {
   if (file_printf (ms, ", with") == -1) {
    goto done;
   }

   if (n_crlf == 0 && n_cr == 0 && n_nel == 0 && n_lf == 0) {
    if (file_printf (ms, " no") == -1) {
     goto done;
    }
   } else {
    if (n_crlf) {
     if (file_printf (ms, " CRLF") == -1) {
      goto done;
     }
     if (n_cr || n_lf || n_nel) {
      if (file_printf (ms, ",") == -1) {
       goto done;
      }
     }
    }
    if (n_cr) {
     if (file_printf (ms, " CR") == -1) {
      goto done;
     }
     if (n_lf || n_nel) {
      if (file_printf (ms, ",") == -1) {
       goto done;
      }
     }
    }
    if (n_lf) {
     if (file_printf (ms, " LF") == -1) {
      goto done;
     }
     if (n_nel) {
      if (file_printf (ms, ",") == -1) {
       goto done;
      }
     }
    }
    if (n_nel) {
     if (file_printf (ms, " NEL") == -1) {
      goto done;
     }
    }
   }

   if (file_printf (ms, " line terminators") == -1) {
    goto done;
   }
  }

  if (has_escapes) {
   if (file_printf (ms, ", with escape sequences") == -1) {
    goto done;
   }
  }
  if (has_backspace) {
   if (file_printf (ms, ", with overstriking") == -1) {
    goto done;
   }
  }
 }
 rv = 1;
done:
 free (nbuf);
 free (ubuf);
 free (utf8_buf);
 return rv;
}
