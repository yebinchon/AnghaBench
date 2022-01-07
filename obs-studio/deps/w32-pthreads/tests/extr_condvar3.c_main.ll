; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar3.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar3.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32* }

@NUMTHREADS = common dso_local global i32 0, align 4
@cv = common dso_local global i32 0, align 4
@mutex = common dso_local global i32 0, align 4
@mythread = common dso_local global i32 0, align 4
@shared = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @NUMTHREADS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca %struct.TYPE_7__, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = bitcast %struct.timespec* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  store i32 1000000, i32* %6, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 0
  %15 = call i32* (...) @pthread_self()
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32* %15, i32** %16, align 8
  %17 = bitcast %struct.TYPE_7__* %14 to i8*
  %18 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = bitcast %struct.TYPE_7__* %7 to i8*
  %20 = bitcast %struct.TYPE_7__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 16 %20, i64 8, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i64 @pthread_cond_init(i32* @cv, i32* null)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = call i64 @pthread_mutex_init(i32* @mutex, i32* null)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = call i64 @pthread_mutex_lock(i32* @mutex)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = call i32 @PTW32_FTIME(%struct.TYPE_8__* %5)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 1000000, %43
  %45 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 1
  %47 = load i32, i32* @mythread, align 4
  %48 = call i64 @pthread_create(%struct.TYPE_7__* %46, i32* null, i32 %47, i8* inttoptr (i64 1 to i8*))
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 5
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %59, %0
  %56 = load i64, i64* @shared, align 8
  %57 = icmp sgt i64 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = call i64 @pthread_cond_timedwait(i32* @cv, i32* @mutex, %struct.timespec* %4)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  br label %55

64:                                               ; preds = %55
  %65 = load i64, i64* @shared, align 8
  %66 = icmp sgt i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @pthread_join(i32* %75, i32* null)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = call i64 @pthread_cond_destroy(i32* @cv)
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  store i32 0, i32* %1, align 4
  %84 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #3

declare dso_local i32* @pthread_self(...) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @pthread_cond_init(i32*, i32*) #3

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #3

declare dso_local i64 @pthread_mutex_lock(i32*) #3

declare dso_local i32 @PTW32_FTIME(%struct.TYPE_8__*) #3

declare !callback !2 dso_local i64 @pthread_create(%struct.TYPE_7__*, i32*, i32, i8*) #3

declare dso_local i64 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #3

declare dso_local i64 @pthread_mutex_unlock(i32*) #3

declare dso_local i64 @pthread_join(i32*, i32*) #3

declare dso_local i64 @pthread_cond_destroy(i32*) #3

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
