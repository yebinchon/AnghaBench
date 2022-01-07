; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_clks.c_CLK_set_gclk_freq.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_clks.c_CLK_set_gclk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_13__ = type { i32*, i32* }

@GCLK = common dso_local global %struct.TYPE_12__* null, align 8
@DC_CLK_SET_GCLK_FREQ_BEGIN = common dso_local global i32 0, align 4
@DC_CLK_SET_GCLK_FREQ_SYNC_1 = common dso_local global i32 0, align 4
@USE_DPLL_DEF = common dso_local global i32 0, align 4
@DC_CLK_SET_GCLK_FREQ_SYNC_2 = common dso_local global i32 0, align 4
@system_clks = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@DC_CLK_SET_GCLK_FREQ_SYNC_3 = common dso_local global i32 0, align 4
@DC_CLK_SET_GCLK_FREQ_SYNC_4 = common dso_local global i32 0, align 4
@DC_CLK_SET_GCLK_FREQ_SYNC_5 = common dso_local global i32 0, align 4
@DC_CLK_SET_GCLK_FREQ_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CLK_set_gclk_freq(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** @GCLK, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %5, align 8
  %7 = load i32, i32* @DC_CLK_SET_GCLK_FREQ_BEGIN, align 4
  %8 = call i32 @DBGC(i32 %7)
  br label %9

9:                                                ; preds = %16, %2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* @DC_CLK_SET_GCLK_FREQ_SYNC_1, align 4
  %18 = call i32 @DBGC(i32 %17)
  br label %9

19:                                               ; preds = %9
  %20 = load i32, i32* @USE_DPLL_DEF, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  store i32 %20, i32* %27, align 8
  br label %28

28:                                               ; preds = %35, %19
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @DC_CLK_SET_GCLK_FREQ_SYNC_2, align 4
  %37 = call i32 @DBGC(i32 %36)
  br label %28

38:                                               ; preds = %28
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @system_clks, i32 0, i32 0), align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sdiv i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i64 %44, i64* %51, align 8
  br label %52

52:                                               ; preds = %59, %38
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @DC_CLK_SET_GCLK_FREQ_SYNC_3, align 4
  %61 = call i32 @DBGC(i32 %60)
  br label %52

62:                                               ; preds = %52
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %77, %62
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @DC_CLK_SET_GCLK_FREQ_SYNC_4, align 4
  %79 = call i32 @DBGC(i32 %78)
  br label %70

80:                                               ; preds = %70
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = load i64, i64* %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %95, %80
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @DC_CLK_SET_GCLK_FREQ_SYNC_5, align 4
  %97 = call i32 @DBGC(i32 %96)
  br label %88

98:                                               ; preds = %88
  %99 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @system_clks, i32 0, i32 0), align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = load i64, i64* %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = udiv i64 %102, %110
  %112 = trunc i64 %111 to i32
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @system_clks, i32 0, i32 1), align 8
  %114 = load i64, i64* %3, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @DC_CLK_SET_GCLK_FREQ_COMPLETE, align 4
  %117 = call i32 @DBGC(i32 %116)
  %118 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @system_clks, i32 0, i32 1), align 8
  %119 = load i64, i64* %3, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  ret i32 %121
}

declare dso_local i32 @DBGC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
