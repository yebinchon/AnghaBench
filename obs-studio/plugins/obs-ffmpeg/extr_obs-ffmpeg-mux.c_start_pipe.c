
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {int pipe; } ;
struct dstr {int array; } ;


 int build_command_line (struct ffmpeg_muxer*,struct dstr*,char const*) ;
 int dstr_free (struct dstr*) ;
 int os_process_pipe_create (int ,char*) ;

__attribute__((used)) static inline void start_pipe(struct ffmpeg_muxer *stream, const char *path)
{
 struct dstr cmd;
 build_command_line(stream, &cmd, path);
 stream->pipe = os_process_pipe_create(cmd.array, "w");
 dstr_free(&cmd);
}
