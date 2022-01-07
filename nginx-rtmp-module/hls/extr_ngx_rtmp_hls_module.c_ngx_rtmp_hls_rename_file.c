
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_int_t ;
typedef int LPCTSTR ;


 int MOVEFILE_REPLACE_EXISTING ;
 int MoveFileEx (int ,int ,int ) ;
 int ngx_rename_file (int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_hls_rename_file(u_char *src, u_char *dst)
{





    return ngx_rename_file(src, dst);

}
