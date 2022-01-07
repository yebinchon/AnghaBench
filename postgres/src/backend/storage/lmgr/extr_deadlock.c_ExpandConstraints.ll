; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_ExpandConstraints.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_ExpandConstraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@nWaitOrders = common dso_local global i64 0, align 8
@waitOrders = common dso_local global %struct.TYPE_11__* null, align 8
@waitOrderProcs = common dso_local global i64 0, align 8
@MaxBackends = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @ExpandConstraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExpandConstraints(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* @nWaitOrders, align 8
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %90, %42, %2
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %93

15:                                               ; preds = %11
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %9, align 8
  %22 = load i64, i64* @nWaitOrders, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %38, %15
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %8, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @waitOrders, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = icmp eq %struct.TYPE_9__* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %39

38:                                               ; preds = %28
  br label %24

39:                                               ; preds = %37, %24
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %11

43:                                               ; preds = %39
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** @waitOrders, align 8
  %46 = load i64, i64* @nWaitOrders, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %48, align 8
  %49 = load i64, i64* @waitOrderProcs, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** @waitOrders, align 8
  %54 = load i64, i64* @nWaitOrders, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i64 %52, i64* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @waitOrders, align 8
  %62 = load i64, i64* @nWaitOrders, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store i64 %60, i64* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @MaxBackends, align 4
  %75 = icmp sle i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** @waitOrders, align 8
  %83 = load i64, i64* @nWaitOrders, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @TopoSort(%struct.TYPE_9__* %78, %struct.TYPE_10__* %79, i32 %81, i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %94

90:                                               ; preds = %43
  %91 = load i64, i64* @nWaitOrders, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* @nWaitOrders, align 8
  br label %11

93:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TopoSort(%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
