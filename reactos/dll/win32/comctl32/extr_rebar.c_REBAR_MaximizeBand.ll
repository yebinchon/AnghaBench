; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_MaximizeBand.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_MaximizeBand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Illegal MaximizeBand, requested=%d, current band count=%d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@RBBS_HIDDEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Ignoring maximize request on a hidden band (%d)\0A\00", align 1
@REBAR_POST_CHILD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"(%d, %ld): Wanted size %d, obtained %d (shrink %d, %d)\0A\00", align 1
@CCS_VERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64, i64)* @REBAR_MaximizeBand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_MaximizeBand(%struct.TYPE_17__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22, %19, %3
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32)
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %4, align 4
  br label %155

35:                                               ; preds = %22
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call %struct.TYPE_18__* @REBAR_GetBand(%struct.TYPE_17__* %36, i64 %37)
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %8, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RBBS_HIDDEN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %155

49:                                               ; preds = %35
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = load i32, i32* @REBAR_POST_CHILD, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %14, align 4
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %49
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %11, align 4
  br label %74

69:                                               ; preds = %61, %49
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %69, %67
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @get_row_begin_for_band(%struct.TYPE_17__* %75, i64 %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @get_row_end_for_band(%struct.TYPE_17__* %78, i64 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %81, %84
  store i32 %85, i32* %12, align 4
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %74
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i64, i64* %6, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @TRUE, align 4
  %94 = call i32 @REBAR_ShrinkBandsRTL(%struct.TYPE_17__* %89, i32 %90, i64 %91, i32 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %88, %74
  %96 = load i32, i32* %12, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @next_visible(%struct.TYPE_17__* %100, i64 %101)
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @TRUE, align 4
  %106 = call i32 @REBAR_ShrinkBandsLTR(%struct.TYPE_17__* %99, i32 %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %98, %95
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @TRACE(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %120, i64 %121, i32 %122, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @REBAR_SetRowRectsX(%struct.TYPE_17__* %129, i32 %130, i32 %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CCS_VERT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %107
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @REBAR_CalcVertBand(%struct.TYPE_17__* %140, i32 %141, i32 %142)
  br label %149

144:                                              ; preds = %107
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @REBAR_CalcHorzBand(%struct.TYPE_17__* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @REBAR_MoveChildWindows(%struct.TYPE_17__* %150, i32 %151, i32 %152)
  %154 = load i32, i32* @TRUE, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %149, %45, %28
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @ERR(i8*, i64, i64) #1

declare dso_local %struct.TYPE_18__* @REBAR_GetBand(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @get_row_begin_for_band(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @get_row_end_for_band(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @REBAR_ShrinkBandsRTL(%struct.TYPE_17__*, i32, i64, i32, i32) #1

declare dso_local i32 @REBAR_ShrinkBandsLTR(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @next_visible(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @TRACE(i8*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @REBAR_SetRowRectsX(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @REBAR_CalcVertBand(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @REBAR_CalcHorzBand(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @REBAR_MoveChildWindows(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
