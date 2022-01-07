
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct blkio {scalar_t__ enabled; scalar_t__ delay_counter; int updated; scalar_t__ Write; scalar_t__ Read; int filename; } ;
typedef int procfile ;


 scalar_t__ CONFIG_BOOLEAN_AUTO ;
 scalar_t__ CONFIG_BOOLEAN_YES ;
 int PROCFILE_FLAG_DEFAULT ;
 scalar_t__ Read_hash ;
 scalar_t__ Write_hash ;
 scalar_t__ cgroup_recheck_zero_blkio_every_iterations ;
 int cgroups_check ;
 int error (char*,int ) ;
 scalar_t__ likely (int ) ;
 scalar_t__ netdata_zero_metrics_enabled ;
 unsigned long procfile_lines (int *) ;
 char* procfile_lineword (int *,unsigned long,int) ;
 int * procfile_readall (int *) ;
 int * procfile_reopen (int *,int ,int *,int ) ;
 scalar_t__ simple_hash (char*) ;
 scalar_t__ str2ull (char*) ;
 int strcmp (char*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void cgroup_read_blkio(struct blkio *io) {
    if(unlikely(io->enabled == CONFIG_BOOLEAN_AUTO && io->delay_counter > 0)) {
        io->delay_counter--;
        return;
    }

    if(likely(io->filename)) {
        static procfile *ff = ((void*)0);

        ff = procfile_reopen(ff, io->filename, ((void*)0), PROCFILE_FLAG_DEFAULT);
        if(unlikely(!ff)) {
            io->updated = 0;
            cgroups_check = 1;
            return;
        }

        ff = procfile_readall(ff);
        if(unlikely(!ff)) {
            io->updated = 0;
            cgroups_check = 1;
            return;
        }

        unsigned long i, lines = procfile_lines(ff);

        if(unlikely(lines < 1)) {
            error("CGROUP: file '%s' should have 1+ lines.", io->filename);
            io->updated = 0;
            return;
        }

        io->Read = 0;
        io->Write = 0;






        for(i = 0; i < lines ; i++) {
            char *s = procfile_lineword(ff, i, 1);
            uint32_t hash = simple_hash(s);

            if(unlikely(hash == Read_hash && !strcmp(s, "Read")))
                io->Read += str2ull(procfile_lineword(ff, i, 2));

            else if(unlikely(hash == Write_hash && !strcmp(s, "Write")))
                io->Write += str2ull(procfile_lineword(ff, i, 2));
        }

        io->updated = 1;

        if(unlikely(io->enabled == CONFIG_BOOLEAN_AUTO)) {
            if(unlikely(io->Read || io->Write || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))
                io->enabled = CONFIG_BOOLEAN_YES;
            else
                io->delay_counter = cgroup_recheck_zero_blkio_every_iterations;
        }
    }
}
