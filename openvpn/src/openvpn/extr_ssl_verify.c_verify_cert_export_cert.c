
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
typedef int openvpn_x509_cert_t ;
typedef int FILE ;


 int M_ERRNO ;
 int M_NONFATAL ;
 scalar_t__ SUCCESS ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int msg (int,char*,...) ;
 char* platform_create_temp_file (char const*,char*,struct gc_arena*) ;
 int platform_unlink (char const*) ;
 scalar_t__ x509_write_pem (int *,int *) ;

__attribute__((used)) static const char *
verify_cert_export_cert(openvpn_x509_cert_t *peercert, const char *tmp_dir, struct gc_arena *gc)
{
    FILE *peercert_file;
    const char *peercert_filename = "";


    if (!tmp_dir
        || !(peercert_filename = platform_create_temp_file(tmp_dir, "pcf", gc)))
    {
        msg(M_NONFATAL, "Failed to create peer cert file");
        return ((void*)0);
    }


    peercert_file = fopen(peercert_filename, "w+");
    if (!peercert_file)
    {
        msg(M_NONFATAL|M_ERRNO, "Failed to open temporary file: %s",
            peercert_filename);
        return ((void*)0);
    }

    if (SUCCESS != x509_write_pem(peercert_file, peercert))
    {
        msg(M_NONFATAL, "Error writing PEM file containing certificate");
        (void) platform_unlink(peercert_filename);
        peercert_filename = ((void*)0);
    }

    fclose(peercert_file);
    return peercert_filename;
}
