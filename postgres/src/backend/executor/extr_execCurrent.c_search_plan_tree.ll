; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execCurrent.c_search_plan_tree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execCurrent.c_search_plan_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_11__*, i32, i32*)* @search_plan_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @search_plan_tree(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = icmp eq %struct.TYPE_11__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %128

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = call i32 @nodeTag(%struct.TYPE_11__* %20)
  switch i32 %21, label %115 [
    i32 130, label %22
    i32 131, label %22
    i32 135, label %22
    i32 136, label %22
    i32 139, label %22
    i32 128, label %22
    i32 137, label %22
    i32 138, label %22
    i32 140, label %34
    i32 133, label %67
    i32 132, label %100
    i32 134, label %100
    i32 129, label %107
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = bitcast %struct.TYPE_11__* %23 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %9, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @RelationGetRelid(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %8, align 8
  br label %33

33:                                               ; preds = %31, %22
  br label %116

34:                                               ; preds = %19
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = bitcast %struct.TYPE_11__* %35 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %63, %34
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %37
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %46, i64 %48
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = call %struct.TYPE_10__* @search_plan_tree(%struct.TYPE_11__* %50, i32 %51, i32* %52)
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %12, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %63

57:                                               ; preds = %43
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %128

61:                                               ; preds = %57
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %8, align 8
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %37

66:                                               ; preds = %37
  br label %116

67:                                               ; preds = %19
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = bitcast %struct.TYPE_11__* %68 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %13, align 8
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %96, %67
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %70
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %79, i64 %81
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = call %struct.TYPE_10__* @search_plan_tree(%struct.TYPE_11__* %83, i32 %84, i32* %85)
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %15, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %88 = icmp ne %struct.TYPE_10__* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %76
  br label %96

90:                                               ; preds = %76
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = icmp ne %struct.TYPE_10__* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %128

94:                                               ; preds = %90
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %8, align 8
  br label %96

96:                                               ; preds = %94, %89
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %70

99:                                               ; preds = %70
  br label %116

100:                                              ; preds = %19, %19
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = call %struct.TYPE_10__* @search_plan_tree(%struct.TYPE_11__* %103, i32 %104, i32* %105)
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %8, align 8
  br label %116

107:                                              ; preds = %19
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = bitcast %struct.TYPE_11__* %108 to %struct.TYPE_9__*
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call %struct.TYPE_10__* @search_plan_tree(%struct.TYPE_11__* %111, i32 %112, i32* %113)
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %8, align 8
  br label %116

115:                                              ; preds = %19
  br label %116

116:                                              ; preds = %115, %107, %100, %99, %66, %33
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = icmp ne %struct.TYPE_10__* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32*, i32** %7, align 8
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %124, %119, %116
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %4, align 8
  br label %128

128:                                              ; preds = %126, %93, %60, %18
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %129
}

declare dso_local i32 @nodeTag(%struct.TYPE_11__*) #1

declare dso_local i32 @RelationGetRelid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
