; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_TestMines.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_TestMines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__, i32, %struct.TYPE_17__**, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@MINE_WIDTH = common dso_local global i32 0, align 4
@MINE_HEIGHT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@FLAG = common dso_local global i32 0, align 4
@PLAYING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unknown message type received in TestMines\0A\00", align 1
@RDW_INVALIDATE = common dso_local global i32 0, align 4
@RDW_UPDATENOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i64, i32)* @TestMines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TestMines(%struct.TYPE_20__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.TYPE_19__* %4 to i64*
  store i64 %1, i64* %10, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @TRUE, align 8
  store i64 %11, i64* %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %13, %17
  %19 = load i32, i32* @MINE_WIDTH, align 4
  %20 = sdiv i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %23, %27
  %29 = load i32, i32* @MINE_HEIGHT, align 4
  %30 = sdiv i32 %28, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %184 [
    i32 132, label %33
    i32 131, label %72
    i32 130, label %137
    i32 129, label %143
    i32 128, label %179
  ]

33:                                               ; preds = %3
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %40, %33
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @UnpressBox(%struct.TYPE_20__* %48, i32 %52, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @PressBox(%struct.TYPE_20__* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %47, %40
  %71 = load i64, i64* @FALSE, align 8
  store i64 %71, i64* %7, align 8
  br label %186

72:                                               ; preds = %3
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %79, %72
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @UnpressBox(%struct.TYPE_20__* %87, i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %86, %79
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 4
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %106, i64 %108
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @FLAG, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %97
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PLAYING, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load i32, i32* @PLAYING, align 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @PlaceMines(%struct.TYPE_20__* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %124, %118, %97
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @CompleteBox(%struct.TYPE_20__* %133, i32 %134, i32 %135)
  br label %186

137:                                              ; preds = %3
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @PressBoxes(%struct.TYPE_20__* %138, i32 %139, i32 %140)
  %142 = load i64, i64* @FALSE, align 8
  store i64 %142, i64* %7, align 8
  br label %186

143:                                              ; preds = %3
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %157, label %150

150:                                              ; preds = %143
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %150, %143
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @UnpressBoxes(%struct.TYPE_20__* %158, i32 %162, i32 %166)
  br label %168

168:                                              ; preds = %157, %150
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 4
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @CompleteBoxes(%struct.TYPE_20__* %175, i32 %176, i32 %177)
  br label %186

179:                                              ; preds = %3
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @AddFlag(%struct.TYPE_20__* %180, i32 %181, i32 %182)
  br label %186

184:                                              ; preds = %3
  %185 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %179, %168, %137, %132, %70
  %187 = load i64, i64* %7, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %186
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @RDW_INVALIDATE, align 4
  %194 = load i32, i32* @RDW_UPDATENOW, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @RedrawWindow(i32 %192, i32* null, i32 0, i32 %195)
  br label %197

197:                                              ; preds = %189, %186
  ret void
}

declare dso_local i32 @UnpressBox(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @PressBox(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @PlaceMines(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @CompleteBox(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @PressBoxes(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @UnpressBoxes(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @CompleteBoxes(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @AddFlag(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @WINE_TRACE(i8*) #1

declare dso_local i32 @RedrawWindow(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
