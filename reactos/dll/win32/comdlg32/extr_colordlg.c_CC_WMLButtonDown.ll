; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_WMLButtonDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_WMLButtonDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i8*, i8*, i8*, i32, i8* }
%struct.TYPE_11__ = type { i32 }

@IDC_COLOR_GRAPH = common dso_local global i8* null, align 8
@IDC_COLOR_LUMBAR = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @CC_WMLButtonDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CC_WMLButtonDown(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @CC_MouseCheckPredefColorArray(%struct.TYPE_12__* %7, i32 6, i32 8, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %51

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @CC_MouseCheckUserColorArray(%struct.TYPE_12__* %13, i32 2, i32 8, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  br label %50

18:                                               ; preds = %12
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** @IDC_COLOR_GRAPH, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @CC_MouseCheckColorGraph(i32 %21, i8* %22, i8** %24, i8** %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  store i32 2, i32* %6, align 4
  %31 = load i8*, i8** @IDC_COLOR_GRAPH, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  br label %49

34:                                               ; preds = %18
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** @IDC_COLOR_LUMBAR, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @CC_MouseCheckColorGraph(i32 %37, i8* %38, i8** null, i8** %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  store i32 2, i32* %6, align 4
  %45 = load i8*, i8** @IDC_COLOR_LUMBAR, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %34
  br label %49

49:                                               ; preds = %48, %30
  br label %50

50:                                               ; preds = %49, %17
  br label %51

51:                                               ; preds = %50, %11
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @SetCapture(i32 %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @CC_HSLtoRGB(i8* %61, i8* %64, i8* %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %54, %51
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %101

76:                                               ; preds = %73
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @CC_RGBtoHSL(i8 signext 72, i32 %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @CC_RGBtoHSL(i8 signext 83, i32 %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @CC_RGBtoHSL(i8 signext 76, i32 %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %76, %73
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %106 = call i32 @CC_EditSetRGB(%struct.TYPE_12__* %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = call i32 @CC_EditSetHSL(%struct.TYPE_12__* %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = call i32 @CC_PaintCross(%struct.TYPE_12__* %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = call i32 @CC_PaintTriangle(%struct.TYPE_12__* %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = call i32 @CC_PaintSelectedColor(%struct.TYPE_12__* %113)
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %3, align 4
  br label %118

116:                                              ; preds = %101
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %104
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @CC_MouseCheckPredefColorArray(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i64 @CC_MouseCheckUserColorArray(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i64 @CC_MouseCheckColorGraph(i32, i8*, i8**, i8**, i32) #1

declare dso_local i32 @SetCapture(i32) #1

declare dso_local i32 @CC_HSLtoRGB(i8*, i8*, i8*) #1

declare dso_local i8* @CC_RGBtoHSL(i8 signext, i32) #1

declare dso_local i32 @CC_EditSetRGB(%struct.TYPE_12__*) #1

declare dso_local i32 @CC_EditSetHSL(%struct.TYPE_12__*) #1

declare dso_local i32 @CC_PaintCross(%struct.TYPE_12__*) #1

declare dso_local i32 @CC_PaintTriangle(%struct.TYPE_12__*) #1

declare dso_local i32 @CC_PaintSelectedColor(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
