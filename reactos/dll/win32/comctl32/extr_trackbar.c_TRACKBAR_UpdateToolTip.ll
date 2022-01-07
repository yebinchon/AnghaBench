; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_UpdateToolTip.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_UpdateToolTip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i8*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@TRACKBAR_UpdateToolTip.fmt = internal constant [4 x i8] c"%ld\00", align 1
@TTF_IDISHWND = common dso_local global i32 0, align 4
@TTF_TRACK = common dso_local global i32 0, align 4
@TTF_ABSOLUTE = common dso_local global i32 0, align 4
@TTM_UPDATETIPTEXTW = common dso_local global i32 0, align 4
@TTM_GETBUBBLESIZE = common dso_local global i32 0, align 4
@TBS_VERT = common dso_local global i32 0, align 4
@TBTS_LEFT = common dso_local global i64 0, align 8
@TOOLTIP_OFFSET = common dso_local global i32 0, align 4
@TBTS_TOP = common dso_local global i64 0, align 8
@TTM_TRACKPOSITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @TRACKBAR_UpdateToolTip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TRACKBAR_UpdateToolTip(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_14__, align 4
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %138

13:                                               ; preds = %1
  %14 = call i32 @ZeroMemory(%struct.TYPE_11__* %4, i32 24)
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i32 24, i32* %15, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @TTF_IDISHWND, align 4
  %21 = load i32, i32* @TTF_TRACK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @TTF_ABSOLUTE, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @wsprintfW(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TRACKBAR_UpdateToolTip.fmt, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TTM_UPDATETIPTEXTW, align 4
  %37 = ptrtoint %struct.TYPE_11__* %4 to i32
  %38 = call i32 @SendMessageW(i32 %35, i32 %36, i32 0, i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @GetClientRect(i32 %41, %struct.TYPE_13__* %6)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TTM_GETBUBBLESIZE, align 4
  %47 = ptrtoint %struct.TYPE_11__* %4 to i32
  %48 = call i32 @SendMessageW(i32 %45, i32 %46, i32 0, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TBS_VERT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %13
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TBTS_LEFT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @LOWORD(i32 %62)
  %64 = sub nsw i32 0, %63
  %65 = load i32, i32* @TOOLTIP_OFFSET, align 4
  %66 = sub nsw i32 %64, %65
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  br label %74

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TOOLTIP_OFFSET, align 4
  %72 = add nsw i32 %70, %71
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %78, %82
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @HIWORD(i32 %84)
  %86 = sub nsw i32 %83, %85
  %87 = sdiv i32 %86, 2
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  br label %123

89:                                               ; preds = %13
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TBTS_TOP, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @HIWORD(i32 %96)
  %98 = sub nsw i32 0, %97
  %99 = load i32, i32* @TOOLTIP_OFFSET, align 4
  %100 = sub nsw i32 %98, %99
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  br label %108

102:                                              ; preds = %89
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TOOLTIP_OFFSET, align 4
  %106 = add nsw i32 %104, %105
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %102, %95
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %112, %116
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @LOWORD(i32 %118)
  %120 = sub nsw i32 %117, %119
  %121 = sdiv i32 %120, 2
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %108, %74
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ClientToScreen(i32 %126, %struct.TYPE_14__* %5)
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @TTM_TRACKPOSITION, align 4
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @MAKELPARAM(i32 %133, i32 %135)
  %137 = call i32 @SendMessageW(i32 %130, i32 %131, i32 0, i32 %136)
  br label %138

138:                                              ; preds = %123, %12
  ret void
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
