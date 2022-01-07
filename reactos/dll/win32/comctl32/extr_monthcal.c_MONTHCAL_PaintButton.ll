; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_PaintButton.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_PaintButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@DIRECTION_FORWARD = common dso_local global i32 0, align 4
@MC_NEXTPRESSED = common dso_local global i32 0, align 4
@MC_PREVPRESSED = common dso_local global i32 0, align 4
@MONTHCAL_PaintButton.states = internal constant [6 x i32] [i32 132, i32 131, i32 133, i32 129, i32 128, i32 130], align 16
@WS_DISABLED = common dso_local global i32 0, align 4
@SBP_ARROWBTN = common dso_local global i32 0, align 4
@DFCS_SCROLLRIGHT = common dso_local global i32 0, align 4
@DFCS_SCROLLLEFT = common dso_local global i32 0, align 4
@DFCS_PUSHED = common dso_local global i32 0, align 4
@DFCS_INACTIVE = common dso_local global i32 0, align 4
@DFC_SCROLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32)* @MONTHCAL_PaintButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MONTHCAL_PaintButton(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @GetWindowTheme(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @DIRECTION_FORWARD, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  br label %25

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32* [ %21, %19 ], [ %24, %22 ]
  store i32* %26, i32** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DIRECTION_FORWARD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MC_NEXTPRESSED, align 4
  %35 = and i32 %33, %34
  br label %42

36:                                               ; preds = %25
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MC_PREVPRESSED, align 4
  %41 = and i32 %39, %40
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i32 [ %35, %30 ], [ %41, %36 ]
  store i32 %43, i32* %9, align 4
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @DIRECTION_FORWARD, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 3, i32 0
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %68

57:                                               ; preds = %46
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @WS_DISABLED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %57
  br label %68

68:                                               ; preds = %67, %54
  %69 = load i64, i64* %7, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SBP_ARROWBTN, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* @MONTHCAL_PaintButton.states, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @DrawThemeBackground(i64 %69, i32 %70, i32 %71, i32 %75, i32* %76, i32* null)
  br label %112

78:                                               ; preds = %42
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @DIRECTION_FORWARD, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @DFCS_SCROLLRIGHT, align 4
  br label %86

84:                                               ; preds = %78
  %85 = load i32, i32* @DFCS_SCROLLLEFT, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* @DFCS_PUSHED, align 4
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %106

94:                                               ; preds = %86
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @WS_DISABLED, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @DFCS_INACTIVE, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %101, %94
  br label %106

106:                                              ; preds = %105, %90
  %107 = load i32, i32* %5, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* @DFC_SCROLL, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @DrawFrameControl(i32 %107, i32* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %106, %68
  ret void
}

declare dso_local i64 @GetWindowTheme(i32) #1

declare dso_local i32 @DrawThemeBackground(i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DrawFrameControl(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
