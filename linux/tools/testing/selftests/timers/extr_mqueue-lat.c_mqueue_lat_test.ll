; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_mqueue-lat.c_mqueue_lat_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_mqueue-lat.c_mqueue_lat_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mq_attr = type { i32 }
%struct.timespec = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"/foo\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mq_open\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@TARGET_TIMEOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"mq_timedreceive\00", align 1
@UNRESONABLE_LATENCY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqueue_lat_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.mq_attr, align 4
  %4 = alloca %struct.timespec, align 4
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.timespec, align 4
  %14 = alloca i32, align 4
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = or i32 %15, %16
  %18 = call i64 @mq_open(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17, i32 438, i32* null)
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %86

23:                                               ; preds = %0
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @mq_getattr(i64 %24, %struct.mq_attr* %3)
  store i32 100, i32* %9, align 4
  %26 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %27 = call i32 @clock_gettime(i32 %26, %struct.timespec* %4)
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %65, %23
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %11, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  %38 = load i32, i32* @CLOCK_REALTIME, align 4
  %39 = call i32 @clock_gettime(i32 %38, %struct.timespec* %6)
  %40 = bitcast %struct.timespec* %7 to i8*
  %41 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load i32, i32* @TARGET_TIMEOUT, align 4
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @timespec_add(i32 %44, i32 %42)
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = bitcast %struct.timespec* %7 to i8*
  %48 = bitcast %struct.timespec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load i64, i64* %2, align 8
  %50 = trunc i64 %35 to i32
  %51 = call i32 @mq_timedreceive(i64 %49, i8* %37, i32 %50, i32* null, %struct.timespec* %7)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %32
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @ETIMEDOUT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %61

60:                                               ; preds = %54, %32
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %60, %58
  %62 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %14, align 4
  switch i32 %63, label %88 [
    i32 0, label %64
    i32 1, label %86
  ]

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %28

68:                                               ; preds = %28
  %69 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %70 = call i32 @clock_gettime(i32 %69, %struct.timespec* %5)
  %71 = load i64, i64* %2, align 8
  %72 = call i32 @mq_close(i64 %71)
  %73 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @timespec_sub(i32 %74, i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = sdiv i32 %77, %78
  %80 = load i32, i32* @TARGET_TIMEOUT, align 4
  %81 = load i32, i32* @UNRESONABLE_LATENCY, align 4
  %82 = add nsw i32 %80, %81
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  store i32 -1, i32* %1, align 4
  br label %86

85:                                               ; preds = %68
  store i32 0, i32* %1, align 4
  br label %86

86:                                               ; preds = %85, %84, %61, %21
  %87 = load i32, i32* %1, align 4
  ret i32 %87

88:                                               ; preds = %61
  unreachable
}

declare dso_local i64 @mq_open(i8*, i32, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @mq_getattr(i64, %struct.mq_attr*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @timespec_add(i32, i32) #1

declare dso_local i32 @mq_timedreceive(i64, i8*, i32, i32*, %struct.timespec*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mq_close(i64) #1

declare dso_local i32 @timespec_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
