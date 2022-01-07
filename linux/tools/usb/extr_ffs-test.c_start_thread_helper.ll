; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/extr_ffs-test.c_start_thread_helper.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/extr_ffs-test.c_start_thread_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i8*, i8*, i8*, i64 (%struct.thread*, i32, i32)*, i64 (%struct.thread*, i32, i64)*, i64, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s: starts\0A\00", align 1
@cleanup_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s: %s: EOF\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s: ends\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @start_thread_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @start_thread_helper(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.thread*
  store %struct.thread* %10, %struct.thread** %7, align 8
  %11 = load %struct.thread*, %struct.thread** %7, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load %struct.thread*, %struct.thread** %7, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.thread*, %struct.thread** %7, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.thread*, %struct.thread** %7, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i8* [ %22, %19 ], [ %26, %23 ]
  store i8* %28, i8** %5, align 8
  %29 = load %struct.thread*, %struct.thread** %7, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.thread*, %struct.thread** %7, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  br label %41

37:                                               ; preds = %27
  %38 = load %struct.thread*, %struct.thread** %7, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i8* [ %36, %33 ], [ %40, %37 ]
  store i8* %42, i8** %6, align 8
  %43 = load i32, i32* @cleanup_thread, align 4
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @pthread_cleanup_push(i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %103, %41
  %47 = call i32 (...) @pthread_testcancel()
  %48 = load %struct.thread*, %struct.thread** %7, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 3
  %50 = load i64 (%struct.thread*, i32, i32)*, i64 (%struct.thread*, i32, i32)** %49, align 8
  %51 = load %struct.thread*, %struct.thread** %7, align 8
  %52 = load %struct.thread*, %struct.thread** %7, align 8
  %53 = getelementptr inbounds %struct.thread, %struct.thread* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.thread*, %struct.thread** %7, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = call i64 %50(%struct.thread* %51, i32 %54, i32 %57)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %46
  %62 = load %struct.thread*, %struct.thread** %7, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 4
  %64 = load i64 (%struct.thread*, i32, i64)*, i64 (%struct.thread*, i32, i64)** %63, align 8
  %65 = load %struct.thread*, %struct.thread** %7, align 8
  %66 = load %struct.thread*, %struct.thread** %7, align 8
  %67 = getelementptr inbounds %struct.thread, %struct.thread* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i64 %64(%struct.thread* %65, i32 %68, i64 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i8*, i8** %6, align 8
  store i8* %71, i8** %3, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %74

72:                                               ; preds = %46
  %73 = load i8*, i8** %5, align 8
  store i8* %73, i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %74

74:                                               ; preds = %72, %61
  %75 = load i64, i64* %8, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %103

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %3, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %82, i8* %83)
  br label %104

85:                                               ; preds = %78
  %86 = load i64, i64* @errno, align 8
  %87 = load i64, i64* @EINTR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* @errno, align 8
  %91 = load i64, i64* @EAGAIN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89, %85
  %94 = load i8*, i8** %3, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %94, i8* %95)
  br label %101

97:                                               ; preds = %89
  %98 = load i8*, i8** %3, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %98, i8* %99)
  br label %104

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102, %77
  br label %46

104:                                              ; preds = %97, %81
  %105 = call i32 @pthread_cleanup_pop(i32 1)
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.thread*, %struct.thread** %7, align 8
  %108 = getelementptr inbounds %struct.thread, %struct.thread* %107, i32 0, i32 5
  store i64 %106, i64* %108, align 8
  %109 = load %struct.thread*, %struct.thread** %7, align 8
  %110 = getelementptr inbounds %struct.thread, %struct.thread* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %111)
  ret i8* null
}

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32 @pthread_cleanup_push(i32, i8*) #1

declare dso_local i32 @pthread_testcancel(...) #1

declare dso_local i32 @debug(i8*, i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*, i8*) #1

declare dso_local i32 @pthread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
