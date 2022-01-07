; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_MinimizeBand.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_MinimizeBand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [59 x i8] c"Illegal MinimizeBand, requested=%d, current band count=%d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@RBBS_HIDDEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Ignoring minimize request on a hidden band (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"(%d): Minimizing the first band in row is by maximizing the second\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"(%d): Only one band in row - nothing to do\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CCS_VERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64)* @REBAR_MinimizeBand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_MinimizeBand(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18, %15, %2
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %156

31:                                               ; preds = %18
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = trunc i64 %33 to i32
  %35 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %32, i32 %34)
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %6, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RBBS_HIDDEN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %156

46:                                               ; preds = %31
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @prev_visible(%struct.TYPE_15__* %47, i64 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %53, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %52, %46
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @next_visible(%struct.TYPE_15__* %63, i64 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %62
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %73, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %72
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @TRACE(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i32 @REBAR_MaximizeBand(%struct.TYPE_15__* %85, i32 %86, i32 %87)
  br label %92

89:                                               ; preds = %72, %62
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %90)
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %3, align 4
  br label %156

94:                                               ; preds = %52
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %102, i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, %101
  store i64 %107, i64* %105, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %108, i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %113, i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 4
  store i64 %112, i64* %116, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 4
  store i64 %119, i64* %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @get_row_begin_for_band(%struct.TYPE_15__* %124, i64 %125)
  store i32 %126, i32* %8, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @get_row_end_for_band(%struct.TYPE_15__* %127, i64 %128)
  store i32 %129, i32* %9, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @REBAR_SetRowRectsX(%struct.TYPE_15__* %130, i32 %131, i32 %132)
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @CCS_VERT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %94
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @REBAR_CalcVertBand(%struct.TYPE_15__* %141, i32 %142, i32 %143)
  br label %150

145:                                              ; preds = %94
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @REBAR_CalcHorzBand(%struct.TYPE_15__* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @REBAR_MoveChildWindows(%struct.TYPE_15__* %151, i32 %152, i32 %153)
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %150, %92, %42, %24
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @ERR(i8*, i64, i64) #1

declare dso_local %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @prev_visible(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @next_visible(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @REBAR_MaximizeBand(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @get_row_begin_for_band(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @get_row_end_for_band(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @REBAR_SetRowRectsX(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @REBAR_CalcVertBand(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @REBAR_CalcHorzBand(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @REBAR_MoveChildWindows(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
