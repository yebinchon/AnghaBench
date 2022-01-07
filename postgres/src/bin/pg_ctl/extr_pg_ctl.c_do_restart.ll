; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_do_restart.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_do_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s: PID file \22%s\22 does not exist\0A\00", align 1
@progname = common dso_local global i32 0, align 4
@pid_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Is server running?\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"trying to start server anyway\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"%s: cannot restart server; single-user server is running (PID: %ld)\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Please terminate the single-user server and try again.\0A\00", align 1
@sig = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"%s: could not send stop signal (PID: %ld): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@shutdown_mode = common dso_local global i64 0, align 8
@SMART_MODE = common dso_local global i64 0, align 8
@backup_file = common dso_local global i32 0, align 4
@DB_IN_ARCHIVE_RECOVERY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [101 x i8] c"WARNING: online backup mode is active\0AShutdown will not complete until pg_stop_backup() is called.\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"waiting for server to shut down...\00", align 1
@wait_seconds = common dso_local global i32 0, align 4
@WAITS_PER_SEC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c" failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%s: server does not shut down\0A\00", align 1
@.str.11 = private unnamed_addr constant [118 x i8] c"HINT: The \22-m fast\22 option immediately disconnects sessions rather than\0Awaiting for session-initiated disconnection.\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"server stopped\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"%s: old server process (PID: %ld) seems to be gone\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"starting server anyway\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_restart() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.stat, align 4
  %4 = call i64 @get_pgpid(i32 0)
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @progname, align 4
  %10 = load i32, i32* @pid_file, align 4
  %11 = call i32 (i8*, ...) @write_stderr(i8* %8, i32 %9, i32 %10)
  %12 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @write_stderr(i8* %12)
  %14 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @write_stderr(i8* %14)
  %16 = call i32 (...) @do_start()
  br label %131

17:                                               ; preds = %0
  %18 = load i64, i64* %2, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load i64, i64* %2, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i64 @postmaster_is_alive(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* @progname, align 4
  %30 = load i64, i64* %2, align 8
  %31 = call i32 (i8*, ...) @write_stderr(i8* %28, i32 %29, i64 %30)
  %32 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @write_stderr(i8* %32)
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35, %17
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %2, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @postmaster_is_alive(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %122

42:                                               ; preds = %37
  %43 = load i64, i64* %2, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @sig, align 4
  %46 = call i64 @kill(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32, i32* @progname, align 4
  %51 = load i64, i64* %2, align 8
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @strerror(i32 %52)
  %54 = call i32 (i8*, ...) @write_stderr(i8* %49, i32 %50, i64 %51, i32 %53)
  %55 = call i32 @exit(i32 1) #3
  unreachable

56:                                               ; preds = %42
  %57 = load i64, i64* @shutdown_mode, align 8
  %58 = load i64, i64* @SMART_MODE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* @backup_file, align 4
  %62 = call i64 @stat(i32 %61, %struct.stat* %3)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = call i64 (...) @get_control_dbstate()
  %66 = load i64, i64* @DB_IN_ARCHIVE_RECOVERY, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = call i8* @_(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.6, i64 0, i64 0))
  %70 = call i32 @print_msg(i8* %69)
  br label %71

71:                                               ; preds = %68, %64, %60, %56
  %72 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %73 = call i32 @print_msg(i8* %72)
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %97, %71
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* @wait_seconds, align 4
  %77 = load i32, i32* @WAITS_PER_SEC, align 4
  %78 = mul nsw i32 %76, %77
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %74
  %81 = call i64 @get_pgpid(i32 0)
  store i64 %81, i64* %2, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load i32, i32* %1, align 4
  %85 = load i32, i32* @WAITS_PER_SEC, align 4
  %86 = srem i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @print_msg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i32, i32* @USEC_PER_SEC, align 4
  %92 = load i32, i32* @WAITS_PER_SEC, align 4
  %93 = sdiv i32 %91, %92
  %94 = call i32 @pg_usleep(i32 %93)
  br label %96

95:                                               ; preds = %80
  br label %100

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %1, align 4
  br label %74

100:                                              ; preds = %95, %74
  %101 = load i64, i64* %2, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %105 = call i32 @print_msg(i8* %104)
  %106 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %107 = load i32, i32* @progname, align 4
  %108 = call i32 (i8*, ...) @write_stderr(i8* %106, i32 %107)
  %109 = load i64, i64* @shutdown_mode, align 8
  %110 = load i64, i64* @SMART_MODE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = call i8* @_(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.11, i64 0, i64 0))
  %114 = call i32 (i8*, ...) @write_stderr(i8* %113)
  br label %115

115:                                              ; preds = %112, %103
  %116 = call i32 @exit(i32 1) #3
  unreachable

117:                                              ; preds = %100
  %118 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %119 = call i32 @print_msg(i8* %118)
  %120 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %121 = call i32 @print_msg(i8* %120)
  br label %129

122:                                              ; preds = %37
  %123 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0))
  %124 = load i32, i32* @progname, align 4
  %125 = load i64, i64* %2, align 8
  %126 = call i32 (i8*, ...) @write_stderr(i8* %123, i32 %124, i64 %125)
  %127 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %128 = call i32 (i8*, ...) @write_stderr(i8* %127)
  br label %129

129:                                              ; preds = %122, %117
  %130 = call i32 (...) @do_start()
  br label %131

131:                                              ; preds = %129, %7
  ret void
}

declare dso_local i64 @get_pgpid(i32) #1

declare dso_local i32 @write_stderr(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @do_start(...) #1

declare dso_local i64 @postmaster_is_alive(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i64 @get_control_dbstate(...) #1

declare dso_local i32 @print_msg(i8*) #1

declare dso_local i32 @pg_usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
