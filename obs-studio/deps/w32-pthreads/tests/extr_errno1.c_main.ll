; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_errno1.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_errno1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32* }

@NUMTHREADS = common dso_local global i32 0, align 4
@stop_here = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@threadbag = common dso_local global %struct.TYPE_6__* null, align 8
@mythread = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Thread %d: started %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* @NUMTHREADS, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca %struct.TYPE_5__, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = call i32 @pthread_mutex_lock(i32* @stop_here)
  store i64 0, i64* @errno, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 0
  %15 = call i32* (...) @pthread_self()
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32* %15, i32** %16, align 8
  %17 = bitcast %struct.TYPE_5__* %14 to i8*
  %18 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = bitcast %struct.TYPE_5__* %6 to i8*
  %20 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 16 %20, i64 8, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %55, %0
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @NUMTHREADS, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @threadbag, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @threadbag, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %36, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %43
  %45 = load i32, i32* @mythread, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @threadbag, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = bitcast %struct.TYPE_6__* %49 to i8*
  %51 = call i64 @pthread_create(%struct.TYPE_5__* %44, i32* null, i32 %45, i8* %50)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %30
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %26

58:                                               ; preds = %26
  %59 = call i32 @Sleep(i32 2000)
  %60 = call i32 @pthread_mutex_unlock(i32* @stop_here)
  %61 = load i32, i32* @NUMTHREADS, align 4
  %62 = mul nsw i32 %61, 1000
  %63 = call i32 @Sleep(i32 %62)
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %91, %58
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @NUMTHREADS, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @threadbag, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %2, align 4
  %78 = load i32, i32* %2, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %68
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @threadbag, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %88)
  br label %90

90:                                               ; preds = %80, %68
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %64

94:                                               ; preds = %64
  %95 = load i32, i32* %2, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  store i32 1, i32* %3, align 4
  br label %100

100:                                              ; preds = %105, %94
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @NUMTHREADS, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %100

108:                                              ; preds = %100
  %109 = load i32, i32* %2, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  store i32 0, i32* %1, align 4
  %114 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @pthread_self(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare !callback !2 dso_local i64 @pthread_create(%struct.TYPE_5__*, i32*, i32, i8*) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
