; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_MouseMove.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_MouseMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@TBS_VERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"(x=%d. y=%d)\0A\00", align 1
@TB_AUTO_PAGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TB_DRAG_MODE = common dso_local global i32 0, align 4
@TME_LEAVE = common dso_local global i32 0, align 4
@TB_THUMB_HOT = common dso_local global i32 0, align 4
@TME_CANCEL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TB_THUMBTRACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i8*)* @TRACKBAR_MouseMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TRACKBAR_MouseMove(%struct.TYPE_14__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca %struct.TYPE_13__, align 4
  %15 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TBS_VERT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  br label %26

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i8* [ %23, %22 ], [ %25, %24 ]
  store i8* %27, i8** %8, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TB_AUTO_PAGE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %26
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = bitcast %struct.TYPE_15__* %11 to { i8*, i8* }*
  %47 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %46, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @TRACKBAR_AutoPage(%struct.TYPE_14__* %45, i8* %48, i8* %50)
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %4, align 4
  br label %163

53:                                               ; preds = %26
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TB_DRAG_MODE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %129, label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @GetWindowTheme(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %127

66:                                               ; preds = %60
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %12, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 4
  %76 = bitcast %struct.TYPE_15__* %13 to { i8*, i8* }*
  %77 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %76, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @PtInRect(i32* %75, i8* %78, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %66
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 12, i32* %84, align 4
  %85 = load i32, i32* @TME_LEAVE, align 4
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = call i32 @TrackMouseEvent(%struct.TYPE_13__* %14)
  %92 = load i32, i32* @TB_THUMB_HOT, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %112

97:                                               ; preds = %66
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32 12, i32* %98, align 4
  %99 = load i32, i32* @TME_CANCEL, align 4
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = call i32 @TrackMouseEvent(%struct.TYPE_13__* %15)
  %106 = load i32, i32* @TB_THUMB_HOT, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %97, %83
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 4
  %124 = load i32, i32* @FALSE, align 4
  %125 = call i32 @InvalidateRect(i32 %121, i32* %123, i32 %124)
  br label %126

126:                                              ; preds = %118, %112
  br label %127

127:                                              ; preds = %126, %60
  %128 = load i32, i32* @TRUE, align 4
  store i32 %128, i32* %4, align 4
  br label %163

129:                                              ; preds = %53
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = call i64 @TRACKBAR_ConvertPlaceToPosition(%struct.TYPE_14__* %130, i8* %131)
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* @TRUE, align 4
  store i32 %137, i32* %4, align 4
  br label %163

138:                                              ; preds = %129
  %139 = load i64, i64* %9, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = call i32 @TRACKBAR_UpdateThumb(%struct.TYPE_14__* %142)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = load i32, i32* @TB_THUMBTRACK, align 4
  %146 = sext i32 %145 to i64
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = shl i64 %149, 16
  %151 = or i64 %146, %150
  %152 = trunc i64 %151 to i32
  %153 = call i32 @notify_with_scroll(%struct.TYPE_14__* %144, i32 %152)
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* %9, align 8
  %157 = call i32 @TRACKBAR_InvalidateThumbMove(%struct.TYPE_14__* %154, i64 %155, i64 %156)
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @UpdateWindow(i32 %160)
  %162 = load i32, i32* @TRUE, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %138, %136, %127, %40
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @TRACE(i8*, i8*, i8*) #1

declare dso_local i32 @TRACKBAR_AutoPage(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i64 @GetWindowTheme(i32) #1

declare dso_local i64 @PtInRect(i32*, i8*, i8*) #1

declare dso_local i32 @TrackMouseEvent(%struct.TYPE_13__*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i64 @TRACKBAR_ConvertPlaceToPosition(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @TRACKBAR_UpdateThumb(%struct.TYPE_14__*) #1

declare dso_local i32 @notify_with_scroll(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @TRACKBAR_InvalidateThumbMove(%struct.TYPE_14__*, i64, i64) #1

declare dso_local i32 @UpdateWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
