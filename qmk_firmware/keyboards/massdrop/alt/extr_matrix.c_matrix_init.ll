; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@mlatest = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i32 0, align 4
@mlast = common dso_local global i32 0, align 4
@mdebounced = common dso_local global i32 0, align 4
@row_masks = common dso_local global i32* null, align 8
@PA = common dso_local global i64 0, align 8
@PB = common dso_local global i64 0, align 8
@row_pins = common dso_local global i32* null, align 8
@PORT = common dso_local global %struct.TYPE_14__* null, align 8
@row_ports = common dso_local global i64* null, align 8
@MATRIX_COLS = common dso_local global i32 0, align 4
@col_pins = common dso_local global i32* null, align 8
@col_ports = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @mlatest, align 4
  %4 = load i32, i32* @MATRIX_ROWS, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = trunc i64 %6 to i32
  %8 = call i32 @memset(i32 %3, i32 0, i32 %7)
  %9 = load i32, i32* @mlast, align 4
  %10 = load i32, i32* @MATRIX_ROWS, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i32 @memset(i32 %9, i32 0, i32 %13)
  %15 = load i32, i32* @mdebounced, align 4
  %16 = load i32, i32* @MATRIX_ROWS, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i32 %15, i32 0, i32 %19)
  %21 = load i32*, i32** @row_masks, align 8
  %22 = load i64, i64* @PA, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** @row_masks, align 8
  %25 = load i64, i64* @PB, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 0, i32* %26, align 4
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %121, %0
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @MATRIX_ROWS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %124

31:                                               ; preds = %27
  %32 = load i32*, i32** @row_pins, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** @PORT, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = load i64*, i64** @row_ports, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %37, i32* %48, align 8
  %49 = load i32*, i32** @row_pins, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 1, %53
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** @PORT, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = load i64*, i64** @row_ports, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 %54, i32* %65, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** @PORT, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = load i64*, i64** @row_ports, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load i32*, i32** @row_pins, align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** @PORT, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = load i64*, i64** @row_ports, align 8
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load i32*, i32** @row_pins, align 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  %106 = load i32*, i32** @row_pins, align 8
  %107 = load i32, i32* %1, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 1, %110
  %112 = load i32*, i32** @row_masks, align 8
  %113 = load i64*, i64** @row_ports, align 8
  %114 = load i32, i32* %1, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %111
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %31
  %122 = load i32, i32* %1, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %1, align 4
  br label %27

124:                                              ; preds = %27
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %164, %124
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* @MATRIX_COLS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %167

129:                                              ; preds = %125
  %130 = load i32*, i32** @col_pins, align 8
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 1, %134
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** @PORT, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = load i64*, i64** @col_ports, align 8
  %140 = load i32, i32* %2, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  store i32 %135, i32* %146, align 4
  %147 = load i32*, i32** @col_pins, align 8
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 1, %151
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** @PORT, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = load i64*, i64** @col_ports, align 8
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store i32 %152, i32* %163, align 8
  br label %164

164:                                              ; preds = %129
  %165 = load i32, i32* %2, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %2, align 4
  br label %125

167:                                              ; preds = %125
  %168 = call i32 (...) @matrix_init_quantum()
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @matrix_init_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
