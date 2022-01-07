; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_MouseCheckUserColorArray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_MouseCheckUserColorArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@IDC_COLOR_USRDEF = common dso_local global i32 0, align 4
@DISTANCE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32, i32)* @CC_MouseCheckUserColorArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CC_MouseCheckUserColorArray(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca %struct.TYPE_14__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %17, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @CONV_LPARAMTOPOINT(i32 %23, %struct.TYPE_15__* %11)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ClientToScreen(i32 %27, %struct.TYPE_15__* %11)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IDC_COLOR_USRDEF, align 4
  %33 = call i32 @GetDlgItem(i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @GetWindowRect(i32 %34, %struct.TYPE_14__* %12)
  %36 = bitcast %struct.TYPE_15__* %11 to i64*
  %37 = load i64, i64* %36, align 4
  %38 = call i64 @PtInRect(%struct.TYPE_14__* %12, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %105

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %42, %44
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %49, %51
  %53 = load i32, i32* %7, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @ScreenToClient(i32 %55, %struct.TYPE_15__* %11)
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %13, align 4
  %60 = srem i32 %58, %59
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @DISTANCE, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %40
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %14, align 4
  %69 = srem i32 %67, %68
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @DISTANCE, align 4
  %72 = sub nsw i32 %70, %71
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %13, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %15, align 4
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %14, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %16, align 4
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %16, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %83, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @CC_DrawFocusRect(%struct.TYPE_16__* %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %5, align 4
  br label %107

104:                                              ; preds = %65, %40
  br label %105

105:                                              ; preds = %104, %4
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %74
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @CONV_LPARAMTOPOINT(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_14__*) #1

declare dso_local i64 @PtInRect(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @ScreenToClient(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @CC_DrawFocusRect(%struct.TYPE_16__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
