; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/log/extr_log.c_open_all_log_files.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/log/extr_log.c_open_all_log_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDIN_FILENO = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stdout_filename = common dso_local global i8* null, align 8
@output_log_syslog = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@stderr_filename = common dso_local global i8* null, align 8
@error_log_syslog = common dso_local global i32 0, align 4
@stdaccess_fd = common dso_local global i32 0, align 4
@stdaccess = common dso_local global i32 0, align 4
@stdaccess_filename = common dso_local global i8* null, align 8
@access_log_syslog = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_all_log_files() #0 {
  %1 = load i32, i32* @STDIN_FILENO, align 4
  %2 = load i32, i32* @stdin, align 4
  %3 = call i32 @open_log_file(i32 %1, i32 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32* null)
  %4 = load i32, i32* @STDOUT_FILENO, align 4
  %5 = load i32, i32* @stdout, align 4
  %6 = load i8*, i8** @stdout_filename, align 8
  %7 = call i32 @open_log_file(i32 %4, i32 %5, i8* %6, i32* @output_log_syslog, i32 0, i32* null)
  %8 = load i32, i32* @STDERR_FILENO, align 4
  %9 = load i32, i32* @stderr, align 4
  %10 = load i8*, i8** @stderr_filename, align 8
  %11 = call i32 @open_log_file(i32 %8, i32 %9, i8* %10, i32* @error_log_syslog, i32 0, i32* null)
  %12 = load i32, i32* @stdaccess_fd, align 4
  %13 = load i32, i32* @stdaccess, align 4
  %14 = load i8*, i8** @stdaccess_filename, align 8
  %15 = call i32 @open_log_file(i32 %12, i32 %13, i8* %14, i32* @access_log_syslog, i32 1, i32* @stdaccess_fd)
  store i32 %15, i32* @stdaccess, align 4
  ret void
}

declare dso_local i32 @open_log_file(i32, i32, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
