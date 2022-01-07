; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_HandleLRDrag.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_HandleLRDrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i64, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@CCS_VERT = common dso_local global i32 0, align 4
@REBAR_PRE_GRIPPER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_22__*)* @REBAR_HandleLRDrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @REBAR_HandleLRDrag(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  store i64 0, i64* %11, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @get_row_begin_for_band(%struct.TYPE_20__* %18, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @get_row_end_for_band(%struct.TYPE_20__* %21, i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call %struct.TYPE_21__* @REBAR_GetBand(%struct.TYPE_20__* %24, i64 %25)
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %5, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CCS_VERT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  br label %45

41:                                               ; preds = %2
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i64 [ %40, %37 ], [ %44, %41 ]
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @REBAR_PRE_GRIPPER, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = sub nsw i64 %46, %53
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %135

58:                                               ; preds = %45
  %59 = load i64, i64* %9, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %58
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %9, align 8
  %66 = sub nsw i64 0, %65
  %67 = load i32, i32* @TRUE, align 4
  %68 = call i64 @REBAR_ShrinkBandsRTL(%struct.TYPE_20__* %62, i64 %63, i64 %64, i64 %66, i32 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %9, align 8
  %71 = sub nsw i64 0, %70
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %61
  %74 = load i64, i64* %9, align 8
  %75 = sub nsw i64 0, %74
  %76 = load i64, i64* %11, align 8
  %77 = sub nsw i64 %75, %76
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %73, %61
  br label %134

91:                                               ; preds = %58
  %92 = load i64, i64* %9, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %133

94:                                               ; preds = %91
  %95 = load i64, i64* %9, align 8
  store i64 %95, i64* %11, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i64 @prev_visible(%struct.TYPE_20__* %96, i64 %97)
  %99 = icmp sge i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = call i64 @REBAR_ShrinkBandsLTR(%struct.TYPE_20__* %101, i64 %102, i64 %103, i64 %104, i32 %105)
  store i64 %106, i64* %11, align 8
  br label %107

107:                                              ; preds = %100, %94
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %9, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %132

111:                                              ; preds = %107
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i64 @prev_visible(%struct.TYPE_20__* %113, i64 %114)
  %116 = call %struct.TYPE_21__* @REBAR_GetBand(%struct.TYPE_20__* %112, i64 %115)
  store %struct.TYPE_21__* %116, %struct.TYPE_21__** %13, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %11, align 8
  %119 = sub nsw i64 %117, %118
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %119
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @TRUE, align 4
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %111, %107
  br label %133

133:                                              ; preds = %132, %91
  br label %134

134:                                              ; preds = %133, %90
  br label %135

135:                                              ; preds = %134, %45
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* %9, align 8
  %145 = add nsw i64 %143, %144
  %146 = load i32, i32* @TRUE, align 4
  %147 = call i32 @REBAR_MoveBandToRowOffset(%struct.TYPE_20__* %139, i64 %140, i64 %141, i64 %142, i64 %145, i32 %146)
  br label %148

148:                                              ; preds = %138, %135
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* %8, align 8
  %152 = call i32 @REBAR_SetRowRectsX(%struct.TYPE_20__* %149, i64 %150, i64 %151)
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @CCS_VERT, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %148
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @REBAR_CalcVertBand(%struct.TYPE_20__* %160, i32 0, i32 %163)
  br label %171

165:                                              ; preds = %148
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @REBAR_CalcHorzBand(%struct.TYPE_20__* %166, i32 0, i32 %169)
  br label %171

171:                                              ; preds = %165, %159
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* %8, align 8
  %175 = call i32 @REBAR_MoveChildWindows(%struct.TYPE_20__* %172, i64 %173, i64 %174)
  ret void
}

declare dso_local i64 @get_row_begin_for_band(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @get_row_end_for_band(%struct.TYPE_20__*, i64) #1

declare dso_local %struct.TYPE_21__* @REBAR_GetBand(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @REBAR_ShrinkBandsRTL(%struct.TYPE_20__*, i64, i64, i64, i32) #1

declare dso_local i64 @prev_visible(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @REBAR_ShrinkBandsLTR(%struct.TYPE_20__*, i64, i64, i64, i32) #1

declare dso_local i32 @REBAR_MoveBandToRowOffset(%struct.TYPE_20__*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @REBAR_SetRowRectsX(%struct.TYPE_20__*, i64, i64) #1

declare dso_local i32 @REBAR_CalcVertBand(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @REBAR_CalcHorzBand(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @REBAR_MoveChildWindows(%struct.TYPE_20__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
