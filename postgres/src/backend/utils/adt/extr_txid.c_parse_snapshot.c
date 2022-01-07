
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ txid ;
typedef int TxidSnapshot ;
typedef int StringInfo ;


 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int buf_add_txid (int ,scalar_t__) ;
 int * buf_finalize (int ) ;
 int buf_init (scalar_t__,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,char const*) ;
 scalar_t__ str2txid (char const*,char const**) ;

__attribute__((used)) static TxidSnapshot *
parse_snapshot(const char *str)
{
 txid xmin;
 txid xmax;
 txid last_val = 0,
    val;
 const char *str_start = str;
 const char *endp;
 StringInfo buf;

 xmin = str2txid(str, &endp);
 if (*endp != ':')
  goto bad_format;
 str = endp + 1;

 xmax = str2txid(str, &endp);
 if (*endp != ':')
  goto bad_format;
 str = endp + 1;


 if (xmin == 0 || xmax == 0 || xmin > xmax)
  goto bad_format;


 buf = buf_init(xmin, xmax);


 while (*str != '\0')
 {

  val = str2txid(str, &endp);
  str = endp;


  if (val < xmin || val >= xmax || val < last_val)
   goto bad_format;


  if (val != last_val)
   buf_add_txid(buf, val);
  last_val = val;

  if (*str == ',')
   str++;
  else if (*str != '\0')
   goto bad_format;
 }

 return buf_finalize(buf);

bad_format:
 ereport(ERROR,
   (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
    errmsg("invalid input syntax for type %s: \"%s\"",
     "txid_snapshot", str_start)));
 return ((void*)0);
}
