; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_latch.c_InitializeLatchSupport.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_latch.c_InitializeLatchSupport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IsUnderPostmaster = common dso_local global i64 0, align 8
@selfpipe_owner_pid = common dso_local global i64 0, align 8
@MyProcPid = common dso_local global i64 0, align 8
@selfpipe_readfd = common dso_local global i32 0, align 4
@selfpipe_writefd = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pipe() failed: %m\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"fcntl(F_SETFL) failed on read-end of self-pipe: %m\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"fcntl(F_SETFL) failed on write-end of self-pipe: %m\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"fcntl(F_SETFD) failed on read-end of self-pipe: %m\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"fcntl(F_SETFD) failed on write-end of self-pipe: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitializeLatchSupport() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = load i64, i64* @IsUnderPostmaster, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = load i64, i64* @selfpipe_owner_pid, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load i64, i64* @selfpipe_owner_pid, align 8
  %9 = load i64, i64* @MyProcPid, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load i32, i32* @selfpipe_readfd, align 4
  %14 = call i32 @close(i32 %13)
  %15 = load i32, i32* @selfpipe_writefd, align 4
  %16 = call i32 @close(i32 %15)
  store i32 -1, i32* @selfpipe_writefd, align 4
  store i32 -1, i32* @selfpipe_readfd, align 4
  store i64 0, i64* @selfpipe_owner_pid, align 8
  br label %22

17:                                               ; preds = %4
  %18 = load i32, i32* @selfpipe_readfd, align 4
  %19 = icmp eq i32 %18, -1
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  br label %22

22:                                               ; preds = %17, %7
  br label %32

23:                                               ; preds = %0
  %24 = load i32, i32* @selfpipe_readfd, align 4
  %25 = icmp eq i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i64, i64* @selfpipe_owner_pid, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  br label %32

32:                                               ; preds = %23, %22
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %34 = call i64 @pipe(i32* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @FATAL, align 4
  %38 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %32
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @F_SETFL, align 4
  %43 = load i32, i32* @O_NONBLOCK, align 4
  %44 = call i32 @fcntl(i32 %41, i32 %42, i32 %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @FATAL, align 4
  %48 = call i32 @elog(i32 %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %39
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @F_SETFL, align 4
  %53 = load i32, i32* @O_NONBLOCK, align 4
  %54 = call i32 @fcntl(i32 %51, i32 %52, i32 %53)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @FATAL, align 4
  %58 = call i32 @elog(i32 %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %49
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @F_SETFD, align 4
  %63 = load i32, i32* @FD_CLOEXEC, align 4
  %64 = call i32 @fcntl(i32 %61, i32 %62, i32 %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @FATAL, align 4
  %68 = call i32 @elog(i32 %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %59
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @F_SETFD, align 4
  %73 = load i32, i32* @FD_CLOEXEC, align 4
  %74 = call i32 @fcntl(i32 %71, i32 %72, i32 %73)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @FATAL, align 4
  %78 = call i32 @elog(i32 %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %69
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* @selfpipe_readfd, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* @selfpipe_writefd, align 4
  %84 = load i64, i64* @MyProcPid, align 8
  store i64 %84, i64* @selfpipe_owner_pid, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
