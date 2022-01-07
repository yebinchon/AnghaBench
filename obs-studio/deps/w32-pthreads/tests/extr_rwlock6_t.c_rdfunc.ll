; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_rwlock6_t.c_rdfunc.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_rwlock6_t.c_rdfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@rwlock1 = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@bankAccount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rdfunc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %3, align 4
  %7 = bitcast %struct.timespec* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  store i32 1000000, i32* %6, align 4
  %8 = call i32 @PTW32_FTIME(%struct.TYPE_3__* %5)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 1000000, %13
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = call i64 @pthread_rwlock_timedrdlock(i32* @rwlock1, %struct.timespec* %4)
  %25 = load i64, i64* @ETIMEDOUT, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  store i32 0, i32* %3, align 4
  br label %48

29:                                               ; preds = %1
  %30 = load i8*, i8** %2, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 3
  store i64 %37, i64* %35, align 8
  %38 = call i64 @pthread_rwlock_timedrdlock(i32* @rwlock1, %struct.timespec* %4)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* @bankAccount, align 4
  store i32 %42, i32* %3, align 4
  %43 = call i64 @pthread_rwlock_unlock(i32* @rwlock1)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %47

47:                                               ; preds = %34, %29
  br label %48

48:                                               ; preds = %47, %20
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  ret i8* %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PTW32_FTIME(%struct.TYPE_3__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @pthread_rwlock_timedrdlock(i32*, %struct.timespec*) #2

declare dso_local i64 @pthread_rwlock_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
