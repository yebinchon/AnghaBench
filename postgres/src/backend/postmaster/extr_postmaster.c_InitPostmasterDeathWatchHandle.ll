; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_InitPostmasterDeathWatchHandle.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_InitPostmasterDeathWatchHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MyProcPid = common dso_local global i64 0, align 8
@PostmasterPid = common dso_local global i64 0, align 8
@postmaster_alive_fds = common dso_local global i32* null, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"could not create pipe to monitor postmaster death: %m\00", align 1
@POSTMASTER_FD_WATCH = common dso_local global i64 0, align 8
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"could not set postmaster death monitoring pipe to nonblocking mode: %m\00", align 1
@DUPLICATE_SAME_ACCESS = common dso_local global i32 0, align 4
@PostmasterHandle = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitPostmasterDeathWatchHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitPostmasterDeathWatchHandle() #0 {
  %1 = load i64, i64* @MyProcPid, align 8
  %2 = load i64, i64* @PostmasterPid, align 8
  %3 = icmp eq i64 %1, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @Assert(i32 %4)
  %6 = load i32*, i32** @postmaster_alive_fds, align 8
  %7 = call i64 @pipe(i32* %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i32, i32* @FATAL, align 4
  %11 = call i32 (...) @errcode_for_file_access()
  %12 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @ereport(i32 %10, i32 %12)
  br label %14

14:                                               ; preds = %9, %0
  %15 = load i32*, i32** @postmaster_alive_fds, align 8
  %16 = load i64, i64* @POSTMASTER_FD_WATCH, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @F_SETFL, align 4
  %20 = load i32, i32* @O_NONBLOCK, align 4
  %21 = call i32 @fcntl(i32 %18, i32 %19, i32 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load i32, i32* @FATAL, align 4
  %25 = call i32 (...) @errcode_for_socket_access()
  %26 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %23, %14
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg_internal(i8*, ...) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @errcode_for_socket_access(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
