; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsplitloc.c__bt_strategy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsplitloc.c__bt_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, i64, i32 }

@SPLIT_DEFAULT = common dso_local global i32 0, align 4
@SPLIT_MANY_DUPLICATES = common dso_local global i32 0, align 4
@SPLIT_SINGLE_VALUE = common dso_local global i32 0, align 4
@P_HIKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i32*)* @_bt_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_strategy(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* @SPLIT_DEFAULT, align 4
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  br label %110

32:                                               ; preds = %4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = call i32 @_bt_interval_edges(%struct.TYPE_6__* %33, i32** %12, i32** %13)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i64 @_bt_split_lastleft(%struct.TYPE_6__* %35, i32* %36)
  store i64 %37, i64* %10, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i64 @_bt_split_firstright(%struct.TYPE_6__* %38, i32* %39)
  store i64 %40, i64* %11, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @_bt_keep_natts_fast(i32 %43, i64 %44, i64 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %32
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %5, align 4
  br label %110

52:                                               ; preds = %32
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @_bt_split_lastleft(%struct.TYPE_6__* %53, i32* %54)
  store i64 %55, i64* %10, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i64 @_bt_split_firstright(%struct.TYPE_6__* %56, i32* %57)
  store i64 %58, i64* %11, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @_bt_keep_natts_fast(i32 %61, i64 %62, i64 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %52
  %69 = load i32, i32* @SPLIT_MANY_DUPLICATES, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %5, align 4
  br label %110

72:                                               ; preds = %52
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @SPLIT_SINGLE_VALUE, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %107

80:                                               ; preds = %72
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @P_HIKEY, align 4
  %85 = call i32 @PageGetItemId(i32 %83, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i64 @PageGetItem(i32 %88, i32 %89)
  store i64 %90, i64* %17, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %17, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @_bt_keep_natts_fast(i32 %93, i64 %94, i64 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %80
  %103 = load i32, i32* @SPLIT_SINGLE_VALUE, align 4
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  br label %106

105:                                              ; preds = %80
  br label %106

106:                                              ; preds = %105, %102
  br label %107

107:                                              ; preds = %106, %77
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %68, %50, %28
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(i32) #1

declare dso_local i32 @_bt_interval_edges(%struct.TYPE_6__*, i32**, i32**) #1

declare dso_local i64 @_bt_split_lastleft(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @_bt_split_firstright(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @_bt_keep_natts_fast(i32, i64, i64) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
