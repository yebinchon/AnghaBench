; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_ptw32_OLL_lock.c_ptw32_oll_Close.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_ptw32_OLL_lock.c_ptw32_oll_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@ptw32_oll_snziRoot_open = common dso_local global i64 0, align 8
@PTW32_FALSE = common dso_local global i32 0, align 4
@ptw32_oll_snziRoot_closed = common dso_local global i64 0, align 8
@ptw32_oll_snziRoot_closedAndZero = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptw32_oll_Close(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = bitcast %struct.TYPE_11__* %5 to i8*
  %10 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ptw32_oll_snziRoot_open, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32, i32* @PTW32_FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %6
  %20 = bitcast %struct.TYPE_11__* %4 to i8*
  %21 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load i64, i64* @ptw32_oll_snziRoot_closed, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  br label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = ptrtoint %struct.TYPE_10__* %29 to i32
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_SIZE(i32 %30, i64 %33, i64 %36)
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %6, label %42

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ptw32_oll_snziRoot_closedAndZero, i32 0, i32 0, i32 0), align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %17
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_SIZE(i32, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
