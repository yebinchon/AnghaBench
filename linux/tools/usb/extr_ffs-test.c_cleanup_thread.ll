; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/extr_ffs-test.c_cleanup_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/extr_ffs-test.c_cleanup_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32*, i32 }

@threads = common dso_local global %struct.thread* null, align 8
@FUNCTIONFS_FIFO_STATUS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%s: get fifo status\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: unclaimed = %d\0A\00", align 1
@FUNCTIONFS_FIFO_FLUSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: fifo flush\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s: close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cleanup_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.thread*
  store %struct.thread* %7, %struct.thread** %3, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %75

16:                                               ; preds = %1
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  %19 = load %struct.thread*, %struct.thread** %3, align 8
  %20 = load %struct.thread*, %struct.thread** @threads, align 8
  %21 = icmp ne %struct.thread* %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @FUNCTIONFS_FIFO_STATUS, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENODEV, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.thread*, %struct.thread** %3, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %28
  br label %58

38:                                               ; preds = %22
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load %struct.thread*, %struct.thread** %3, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @FUNCTIONFS_FIFO_FLUSH, align 4
  %49 = call i32 @ioctl(i32 %47, i32 %48)
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.thread*, %struct.thread** %3, align 8
  %53 = getelementptr inbounds %struct.thread, %struct.thread* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %41
  br label %57

57:                                               ; preds = %56, %38
  br label %58

58:                                               ; preds = %57, %37
  br label %59

59:                                               ; preds = %58, %16
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @close(i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.thread*, %struct.thread** %3, align 8
  %65 = getelementptr inbounds %struct.thread, %struct.thread* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %59
  %69 = load %struct.thread*, %struct.thread** %3, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @free(i32* %71)
  %73 = load %struct.thread*, %struct.thread** %3, align 8
  %74 = getelementptr inbounds %struct.thread, %struct.thread* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %68, %15
  ret void
}

declare dso_local i32 @ioctl(i32, i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @warn(i8*, i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
