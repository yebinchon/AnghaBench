; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_ptw32_reuse.c_ptw32_threadReusePop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_ptw32_reuse.c_ptw32_threadReusePop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32* }

@ptw32_thread_reuse_lock = common dso_local global i32 0, align 4
@PTW32_THREAD_REUSE_EMPTY = common dso_local global i8* null, align 8
@ptw32_threadReuseTop = common dso_local global i8* null, align 8
@ptw32_threadReuseBottom = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, i32* } @ptw32_threadReusePop() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = call i32 @ptw32_mcs_lock_acquire(i32* @ptw32_thread_reuse_lock, i32* %2)
  %6 = load i8*, i8** @PTW32_THREAD_REUSE_EMPTY, align 8
  %7 = load i8*, i8** @ptw32_threadReuseTop, align 8
  %8 = icmp ne i8* %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %0
  %10 = load i8*, i8** @ptw32_threadReuseTop, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to i8*
  store i8* %15, i8** @ptw32_threadReuseTop, align 8
  %16 = load i8*, i8** @PTW32_THREAD_REUSE_EMPTY, align 8
  %17 = load i8*, i8** @ptw32_threadReuseTop, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = load i8*, i8** @PTW32_THREAD_REUSE_EMPTY, align 8
  store i8* %20, i8** @ptw32_threadReuseBottom, align 8
  br label %21

21:                                               ; preds = %19, %9
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = bitcast %struct.TYPE_5__* %1 to i8*
  %27 = bitcast %struct.TYPE_5__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  br label %28

28:                                               ; preds = %21, %0
  %29 = call i32 @ptw32_mcs_lock_release(i32* %2)
  %30 = bitcast %struct.TYPE_5__* %1 to { i32, i32* }*
  %31 = load { i32, i32* }, { i32, i32* }* %30, align 8
  ret { i32, i32* } %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
