; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_do_stop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_do_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s: PID file \22%s\22 does not exist\0A\00", align 1
@progname = common dso_local global i32 0, align 4
@pid_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Is server running?\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"%s: cannot stop server; single-user server is running (PID: %ld)\0A\00", align 1
@sig = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"%s: could not send stop signal (PID: %ld): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@do_wait = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"server shutting down\0A\00", align 1
@shutdown_mode = common dso_local global i64 0, align 8
@SMART_MODE = common dso_local global i64 0, align 8
@backup_file = common dso_local global i32 0, align 4
@DB_IN_ARCHIVE_RECOVERY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [101 x i8] c"WARNING: online backup mode is active\0AShutdown will not complete until pg_stop_backup() is called.\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"waiting for server to shut down...\00", align 1
@wait_seconds = common dso_local global i32 0, align 4
@WAITS_PER_SEC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c" failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"%s: server does not shut down\0A\00", align 1
@.str.10 = private unnamed_addr constant [118 x i8] c"HINT: The \22-m fast\22 option immediately disconnects sessions rather than\0Awaiting for session-initiated disconnection.\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"server stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_stop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.stat, align 4
  %4 = call i64 @get_pgpid(i32 0)
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @progname, align 4
  %10 = load i32, i32* @pid_file, align 4
  %11 = call i32 (i8*, ...) @write_stderr(i8* %8, i32 %9, i32 %10)
  %12 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @write_stderr(i8* %12)
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %0
  %16 = load i64, i64* %2, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i64, i64* %2, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %2, align 8
  %21 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @progname, align 4
  %23 = load i64, i64* %2, align 8
  %24 = call i32 (i8*, ...) @write_stderr(i8* %21, i32 %22, i64 %23)
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %2, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @sig, align 4
  %31 = call i64 @kill(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @progname, align 4
  %36 = load i64, i64* %2, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 (i8*, ...) @write_stderr(i8* %34, i32 %35, i64 %36, i32 %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %27
  %42 = load i32, i32* @do_wait, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i32 @print_msg(i8* %45)
  br label %113

47:                                               ; preds = %41
  %48 = load i64, i64* @shutdown_mode, align 8
  %49 = load i64, i64* @SMART_MODE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* @backup_file, align 4
  %53 = call i64 @stat(i32 %52, %struct.stat* %3)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = call i64 (...) @get_control_dbstate()
  %57 = load i64, i64* @DB_IN_ARCHIVE_RECOVERY, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = call i8* @_(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.5, i64 0, i64 0))
  %61 = call i32 @print_msg(i8* %60)
  br label %62

62:                                               ; preds = %59, %55, %51, %47
  %63 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %64 = call i32 @print_msg(i8* %63)
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %88, %62
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @wait_seconds, align 4
  %68 = load i32, i32* @WAITS_PER_SEC, align 4
  %69 = mul nsw i32 %67, %68
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = call i64 @get_pgpid(i32 0)
  store i64 %72, i64* %2, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* @WAITS_PER_SEC, align 4
  %77 = srem i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 @print_msg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i32, i32* @USEC_PER_SEC, align 4
  %83 = load i32, i32* @WAITS_PER_SEC, align 4
  %84 = sdiv i32 %82, %83
  %85 = call i32 @pg_usleep(i32 %84)
  br label %87

86:                                               ; preds = %71
  br label %91

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %1, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %1, align 4
  br label %65

91:                                               ; preds = %86, %65
  %92 = load i64, i64* %2, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %96 = call i32 @print_msg(i8* %95)
  %97 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %98 = load i32, i32* @progname, align 4
  %99 = call i32 (i8*, ...) @write_stderr(i8* %97, i32 %98)
  %100 = load i64, i64* @shutdown_mode, align 8
  %101 = load i64, i64* @SMART_MODE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = call i8* @_(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.10, i64 0, i64 0))
  %105 = call i32 (i8*, ...) @write_stderr(i8* %104)
  br label %106

106:                                              ; preds = %103, %94
  %107 = call i32 @exit(i32 1) #3
  unreachable

108:                                              ; preds = %91
  %109 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %110 = call i32 @print_msg(i8* %109)
  %111 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %112 = call i32 @print_msg(i8* %111)
  br label %113

113:                                              ; preds = %44, %108
  ret void
}

declare dso_local i64 @get_pgpid(i32) #1

declare dso_local i32 @write_stderr(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @print_msg(i8*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i64 @get_control_dbstate(...) #1

declare dso_local i32 @pg_usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
