; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_CompleteBoxes.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_CompleteBoxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64, i32 }

@COMPLETE = common dso_local global i64 0, align 8
@FLAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @CompleteBoxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CompleteBoxes(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %12, i64 %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @COMPLETE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %123

24:                                               ; preds = %3
  store i32 -1, i32* %8, align 4
  br label %25

25:                                               ; preds = %59, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  store i32 -1, i32* %9, align 4
  br label %29

29:                                               ; preds = %55, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp sle i32 %30, 1
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %35, i64 %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FLAG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %32
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %29

58:                                               ; preds = %29
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %25

62:                                               ; preds = %25
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %66, i64 %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %63, %75
  br i1 %76, label %77, label %122

77:                                               ; preds = %62
  store i32 -1, i32* %8, align 4
  br label %78

78:                                               ; preds = %118, %77
  %79 = load i32, i32* %8, align 4
  %80 = icmp sle i32 %79, 1
  br i1 %80, label %81, label %121

81:                                               ; preds = %78
  store i32 -1, i32* %9, align 4
  br label %82

82:                                               ; preds = %114, %81
  %83 = load i32, i32* %9, align 4
  %84 = icmp sle i32 %83, 1
  br i1 %84, label %85, label %117

85:                                               ; preds = %82
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %89, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %88, i64 %92
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %95, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @FLAG, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %85
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %106, %107
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add i32 %109, %110
  %112 = call i32 @CompleteBox(%struct.TYPE_6__* %105, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %104, %85
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %82

117:                                              ; preds = %82
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %78

121:                                              ; preds = %78
  br label %122

122:                                              ; preds = %121, %62
  br label %123

123:                                              ; preds = %122, %3
  ret void
}

declare dso_local i32 @CompleteBox(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
