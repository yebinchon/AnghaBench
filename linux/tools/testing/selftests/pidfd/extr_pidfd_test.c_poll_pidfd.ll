; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_poll_pidfd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_poll_pidfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epoll_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EPOLL_CLOEXEC = common dso_local global i32 0, align 4
@MAX_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"%s test: Failed to create epoll file descriptor (errno %d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"%s test: Failed to add epoll file descriptor (errno %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%s test: Unexpected epoll_wait result (c=%d, events=%x) \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"(errno %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @poll_pidfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_pidfd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.epoll_event, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @EPOLL_CLOEXEC, align 4
  %11 = call i32 @epoll_create1(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @MAX_EVENTS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca %struct.epoll_event, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 (i8*, i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @EPOLLIN, align 4
  %26 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %7, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @epoll_ctl(i32 %30, i32 %31, i32 %32, %struct.epoll_event* %7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 (i8*, i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %39)
  br label %41

41:                                               ; preds = %35, %24
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MAX_EVENTS, align 4
  %44 = call i32 @epoll_wait(i32 %42, %struct.epoll_event* %15, i32 %43, i32 5000)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %15, i64 0
  %49 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 16
  %51 = load i32, i32* @EPOLLIN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %47, %41
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %15, i64 0
  %58 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 16
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 (i8*, i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %47
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %65)
  ret void
}

declare dso_local i32 @epoll_create1(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ksft_exit_fail_msg(i8*, i8*, i8*, ...) #1

declare dso_local i64 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
