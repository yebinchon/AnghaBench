; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar3_3.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar3_3.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@cnd = common dso_local global i32 0, align 4
@mtx = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast %struct.timespec* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  store i32 1000000, i32* %5, align 4
  %7 = call i64 @pthread_cond_init(i32* @cnd, i32 0)
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = call i64 @pthread_mutex_init(i32* @mtx, i32 0)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call i32 @PTW32_FTIME(%struct.TYPE_3__* %4)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 1000000, %20
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = call i64 @pthread_mutex_lock(i32* @mtx)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = call i32 @pthread_cond_timedwait(i32* @cnd, i32* @mtx, %struct.timespec* %3)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = call i64 @pthread_mutex_unlock(i32* @mtx)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = call i32 @pthread_cond_signal(i32* @cnd)
  store i32 %39, i32* %2, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = call i64 @pthread_mutex_lock(i32* @mtx)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 1000000, %51
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = call i32 @pthread_cond_timedwait(i32* @cnd, i32* @mtx, %struct.timespec* %3)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* @ETIMEDOUT, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = call i64 @pthread_mutex_unlock(i32* @mtx)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @pthread_cond_init(i32*, i32) #2

declare dso_local i64 @pthread_mutex_init(i32*, i32) #2

declare dso_local i32 @PTW32_FTIME(%struct.TYPE_3__*) #2

declare dso_local i64 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #2

declare dso_local i64 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @pthread_cond_signal(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
