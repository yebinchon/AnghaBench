; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar4.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar4.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32*, i32* }
%struct.timespec = type { i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32* }

@NUMTHREADS = common dso_local global i32 0, align 4
@cvthing = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PTHREAD_COND_INITIALIZER = common dso_local global i32* null, align 8
@PTHREAD_MUTEX_INITIALIZER = common dso_local global i32* null, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@mythread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @NUMTHREADS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca %struct.TYPE_8__, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = bitcast %struct.timespec* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  store i32 1000000, i32* %6, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 0
  %15 = call i32* (...) @pthread_self()
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32* %15, i32** %16, align 8
  %17 = bitcast %struct.TYPE_8__* %14 to i8*
  %18 = bitcast %struct.TYPE_8__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = bitcast %struct.TYPE_8__* %7 to i8*
  %20 = bitcast %struct.TYPE_8__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 16 %20, i64 8, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 1), align 8
  %27 = load i32*, i32** @PTHREAD_COND_INITIALIZER, align 8
  %28 = icmp eq i32* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 2), align 8
  %32 = load i32*, i32** @PTHREAD_MUTEX_INITIALIZER, align 8
  %33 = icmp eq i32* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = call i64 @pthread_mutex_lock(i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 2))
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 2), align 8
  %41 = load i32*, i32** @PTHREAD_MUTEX_INITIALIZER, align 8
  %42 = icmp ne i32* %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = call i32 @PTW32_FTIME(%struct.TYPE_9__* %5)
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 1000000, %50
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 5
  store i64 %55, i64* %53, align 8
  %56 = call i64 @pthread_cond_timedwait(i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 1), i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 2), %struct.timespec* %4)
  %57 = load i64, i64* @ETIMEDOUT, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 1), align 8
  %62 = load i32*, i32** @PTHREAD_COND_INITIALIZER, align 8
  %63 = icmp ne i32* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 1
  %67 = load i32, i32* @mythread, align 4
  %68 = call i64 @pthread_create(%struct.TYPE_8__* %66, i32* null, i32 %67, i8* inttoptr (i64 1 to i8*))
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = call i32 @PTW32_FTIME(%struct.TYPE_9__* %5)
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 1000000, %77
  %79 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 5
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %87, %0
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 0), align 8
  %85 = icmp sgt i64 %84, 0
  %86 = xor i1 %85, true
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = call i64 @pthread_cond_timedwait(i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 1), i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 2), %struct.timespec* %4)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  br label %83

92:                                               ; preds = %83
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 0), align 8
  %94 = icmp sgt i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = call i64 @pthread_mutex_unlock(i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 2))
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @pthread_join(i32* %103, i32* null)
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = call i64 @pthread_mutex_destroy(i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 2))
  %109 = icmp eq i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 2), align 8
  %113 = icmp eq i32* %112, null
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = call i64 @pthread_cond_destroy(i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 1))
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cvthing, i32 0, i32 1), align 8
  %121 = icmp eq i32* %120, null
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  store i32 0, i32* %1, align 4
  %124 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %1, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #3

declare dso_local i32* @pthread_self(...) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @pthread_mutex_lock(i32**) #3

declare dso_local i32 @PTW32_FTIME(%struct.TYPE_9__*) #3

declare dso_local i64 @pthread_cond_timedwait(i32**, i32**, %struct.timespec*) #3

declare !callback !2 dso_local i64 @pthread_create(%struct.TYPE_8__*, i32*, i32, i8*) #3

declare dso_local i64 @pthread_mutex_unlock(i32**) #3

declare dso_local i64 @pthread_join(i32*, i32*) #3

declare dso_local i64 @pthread_mutex_destroy(i32**) #3

declare dso_local i64 @pthread_cond_destroy(i32**) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
