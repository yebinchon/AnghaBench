; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_do_start.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_do_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctl_command = common dso_local global i64 0, align 8
@RESTART_COMMAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"%s: another server might be running; trying to start server anyway\0A\00", align 1
@progname = common dso_local global i32 0, align 4
@pgdata_opt = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@exec_path = common dso_local global i32* null, align 8
@argv0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@PG_BACKEND_VERSIONSTR = common dso_local global i32 0, align 4
@do_start.env_var = internal global [32 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [22 x i8] c"PG_GRANDPARENT_PID=%d\00", align 1
@do_wait = common dso_local global i64 0, align 8
@postmasterPID = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@trap_sigint_during_startup = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"waiting for server to start...\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"server started\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c" stopped waiting\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%s: server did not start in time\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"%s: could not start server\0AExamine the log output.\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"server starting\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@allow_core_files = common dso_local global i64 0, align 8
@postmasterProcess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_start() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %3 = load i64, i64* @ctl_command, align 8
  %4 = load i64, i64* @RESTART_COMMAND, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = call i64 @get_pgpid(i32 0)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = call i32 @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @progname, align 4
  %13 = call i32 @write_stderr(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %6
  br label %15

15:                                               ; preds = %14, %0
  %16 = call i32 (...) @read_post_opts()
  %17 = load i64, i64* @ctl_command, align 8
  %18 = load i64, i64* @RESTART_COMMAND, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** @pgdata_opt, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %15
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** @pgdata_opt, align 8
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32*, i32** @exec_path, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @argv0, align 4
  %29 = load i32, i32* @PG_BACKEND_VERSIONSTR, align 4
  %30 = call i32* @find_other_exec_or_die(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32* %30, i32** @exec_path, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = call i64 (...) @getppid()
  %33 = trunc i64 %32 to i32
  %34 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @do_start.env_var, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = call i32 @putenv(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @do_start.env_var, i64 0, i64 0))
  %36 = call i64 (...) @start_postmaster()
  store i64 %36, i64* %2, align 8
  %37 = load i64, i64* @do_wait, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %31
  %40 = load i64, i64* %2, align 8
  store i64 %40, i64* @postmasterPID, align 8
  %41 = load i32, i32* @SIGINT, align 4
  %42 = load i32, i32* @trap_sigint_during_startup, align 4
  %43 = call i32 @pqsignal(i32 %41, i32 %42)
  %44 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 @print_msg(i32 %44)
  %46 = load i64, i64* %2, align 8
  %47 = call i32 @wait_for_postmaster(i64 %46, i32 0)
  switch i32 %47, label %67 [
    i32 129, label %48
    i32 128, label %53
    i32 130, label %60
  ]

48:                                               ; preds = %39
  %49 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %50 = call i32 @print_msg(i32 %49)
  %51 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %52 = call i32 @print_msg(i32 %51)
  br label %67

53:                                               ; preds = %39
  %54 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %55 = call i32 @print_msg(i32 %54)
  %56 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %57 = load i32, i32* @progname, align 4
  %58 = call i32 @write_stderr(i32 %56, i32 %57)
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %39
  %61 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %62 = call i32 @print_msg(i32 %61)
  %63 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  %64 = load i32, i32* @progname, align 4
  %65 = call i32 @write_stderr(i32 %63, i32 %64)
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %39, %48
  br label %71

68:                                               ; preds = %31
  %69 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %70 = call i32 @print_msg(i32 %69)
  br label %71

71:                                               ; preds = %68, %67
  ret void
}

declare dso_local i64 @get_pgpid(i32) #1

declare dso_local i32 @write_stderr(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @read_post_opts(...) #1

declare dso_local i32* @find_other_exec_or_die(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @getppid(...) #1

declare dso_local i32 @putenv(i8*) #1

declare dso_local i64 @start_postmaster(...) #1

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @print_msg(i32) #1

declare dso_local i32 @wait_for_postmaster(i64, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
