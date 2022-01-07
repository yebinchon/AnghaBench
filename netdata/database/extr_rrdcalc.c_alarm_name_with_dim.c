
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

char *alarm_name_with_dim(char *name, size_t namelen, const char *dim, size_t dimlen) {
    char *newname,*move;

    newname = malloc(namelen + dimlen + 2);
    if(newname) {
        move = newname;
        memcpy(move, name, namelen);
        move += namelen;

        *move++ = '_';
        memcpy(move, dim, dimlen);
        move += dimlen;
        *move = '\0';
    } else {
        newname = name;
    }

    return newname;
}
