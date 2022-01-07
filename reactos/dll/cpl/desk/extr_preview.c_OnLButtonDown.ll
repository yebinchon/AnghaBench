; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_preview.c_OnLButtonDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_preview.c_OnLButtonDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@IDX_DESKTOP = common dso_local global i64 0, align 8
@IDX_INACTIVE_BORDER = common dso_local global i64 0, align 8
@IDX_INACTIVE_CAPTION = common dso_local global i64 0, align 8
@IDX_CAPTION_BUTTON = common dso_local global i64 0, align 8
@IDX_ACTIVE_BORDER = common dso_local global i64 0, align 8
@IDX_ACTIVE_CAPTION = common dso_local global i64 0, align 8
@IDX_MENU = common dso_local global i64 0, align 8
@IDX_WINDOW = common dso_local global i64 0, align 8
@IDX_SCROLLBAR = common dso_local global i64 0, align 8
@IDX_DIALOG = common dso_local global i64 0, align 8
@IDX_3D_OBJECTS = common dso_local global i64 0, align 8
@WM_COMMAND = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_5__*)* @OnLButtonDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnLButtonDown(i32 %0, i32 %1, i32 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %12 = load i64, i64* @IDX_DESKTOP, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 12
  %19 = bitcast %struct.TYPE_6__* %11 to i64*
  %20 = load i64, i64* %19, align 4
  %21 = call i64 @PtInRect(i32* %18, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @IDX_INACTIVE_BORDER, align 8
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %23, %4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 11
  %28 = bitcast %struct.TYPE_6__* %11 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i64 @PtInRect(i32* %27, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @IDX_INACTIVE_CAPTION, align 8
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %32, %25
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 10
  %37 = bitcast %struct.TYPE_6__* %11 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = call i64 @PtInRect(i32* %36, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @IDX_CAPTION_BUTTON, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %41, %34
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 9
  %46 = bitcast %struct.TYPE_6__* %11 to i64*
  %47 = load i64, i64* %46, align 4
  %48 = call i64 @PtInRect(i32* %45, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i64, i64* @IDX_ACTIVE_BORDER, align 8
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %50, %43
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 8
  %55 = bitcast %struct.TYPE_6__* %11 to i64*
  %56 = load i64, i64* %55, align 4
  %57 = call i64 @PtInRect(i32* %54, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i64, i64* @IDX_ACTIVE_CAPTION, align 8
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %59, %52
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 7
  %64 = bitcast %struct.TYPE_6__* %11 to i64*
  %65 = load i64, i64* %64, align 4
  %66 = call i64 @PtInRect(i32* %63, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i64, i64* @IDX_CAPTION_BUTTON, align 8
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %68, %61
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 6
  %73 = bitcast %struct.TYPE_6__* %11 to i64*
  %74 = load i64, i64* %73, align 4
  %75 = call i64 @PtInRect(i32* %72, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i64, i64* @IDX_MENU, align 8
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %77, %70
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  %82 = bitcast %struct.TYPE_6__* %11 to i64*
  %83 = load i64, i64* %82, align 4
  %84 = call i64 @PtInRect(i32* %81, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i64, i64* @IDX_WINDOW, align 8
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %86, %79
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = bitcast %struct.TYPE_6__* %11 to i64*
  %92 = load i64, i64* %91, align 4
  %93 = call i64 @PtInRect(i32* %90, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i64, i64* @IDX_SCROLLBAR, align 8
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %95, %88
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = bitcast %struct.TYPE_6__* %11 to i64*
  %101 = load i64, i64* %100, align 4
  %102 = call i64 @PtInRect(i32* %99, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i64, i64* @IDX_DIALOG, align 8
  store i64 %105, i64* %10, align 8
  br label %106

106:                                              ; preds = %104, %97
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = bitcast %struct.TYPE_6__* %11 to i64*
  %110 = load i64, i64* %109, align 4
  %111 = call i64 @PtInRect(i32* %108, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i64, i64* @IDX_ACTIVE_CAPTION, align 8
  store i64 %114, i64* %10, align 8
  br label %115

115:                                              ; preds = %113, %106
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = bitcast %struct.TYPE_6__* %11 to i64*
  %119 = load i64, i64* %118, align 4
  %120 = call i64 @PtInRect(i32* %117, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i64, i64* @IDX_CAPTION_BUTTON, align 8
  store i64 %123, i64* %10, align 8
  br label %124

124:                                              ; preds = %122, %115
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = bitcast %struct.TYPE_6__* %11 to i64*
  %128 = load i64, i64* %127, align 4
  %129 = call i64 @PtInRect(i32* %126, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i64, i64* @IDX_3D_OBJECTS, align 8
  store i64 %132, i64* %10, align 8
  br label %133

133:                                              ; preds = %131, %124
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @GetParent(i32 %134)
  %136 = load i32, i32* @WM_COMMAND, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @GWLP_ID, align 4
  %139 = call i32 @GetWindowLongPtrW(i32 %137, i32 %138)
  %140 = call i32 @MAKEWPARAM(i32 %139, i32 0)
  %141 = load i64, i64* %10, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 @SendMessage(i32 %135, i32 %136, i32 %140, i32 %142)
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i64 @PtInRect(i32*, i64) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @MAKEWPARAM(i32, i32) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
