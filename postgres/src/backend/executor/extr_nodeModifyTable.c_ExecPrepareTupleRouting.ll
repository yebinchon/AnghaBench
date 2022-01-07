; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeModifyTable.c_ExecPrepareTupleRouting.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeModifyTable.c_ExecPrepareTupleRouting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32*, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_16__*, %struct.TYPE_21__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { i32*, %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_22__*, %struct.TYPE_23__*, i32*, %struct.TYPE_20__*, i32*)* @ExecPrepareTupleRouting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ExecPrepareTupleRouting(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, i32* %2, %struct.TYPE_20__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %20 = call %struct.TYPE_20__* @ExecFindPartition(%struct.TYPE_22__* %15, %struct.TYPE_20__* %16, i32* %17, i32* %18, %struct.TYPE_23__* %19)
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %11, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %12, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %25 = icmp ne %struct.TYPE_21__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %30, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = icmp ne %struct.TYPE_17__* %33, null
  br i1 %34, label %35, label %70

35:                                               ; preds = %5
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  store i32* %54, i32** %58, align 8
  br label %69

59:                                               ; preds = %40, %35
  %60 = load i32*, i32** %10, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  store i32* %60, i32** %64, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %59, %47
  br label %70

70:                                               ; preds = %69, %5
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = icmp ne %struct.TYPE_18__* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  store i32* %78, i32** %82, align 8
  br label %83

83:                                               ; preds = %75, %70
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  store %struct.TYPE_19__* %86, %struct.TYPE_19__** %13, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %88 = icmp ne %struct.TYPE_19__* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %14, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = call i32* @execute_attr_map_slot(i32 %95, i32* %96, i32* %97)
  store i32* %98, i32** %10, align 8
  br label %99

99:                                               ; preds = %89, %83
  %100 = load i32*, i32** %10, align 8
  ret i32* %100
}

declare dso_local %struct.TYPE_20__* @ExecFindPartition(%struct.TYPE_22__*, %struct.TYPE_20__*, i32*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @execute_attr_map_slot(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
