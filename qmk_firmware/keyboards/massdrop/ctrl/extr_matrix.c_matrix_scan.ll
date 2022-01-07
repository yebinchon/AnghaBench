; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@mdebouncing = common dso_local global i64 0, align 8
@mlatest = common dso_local global i32* null, align 8
@MATRIX_ROWS = common dso_local global i32 0, align 4
@MATRIX_COLS = common dso_local global i32 0, align 4
@col_pins = common dso_local global i32* null, align 8
@PORT = common dso_local global %struct.TYPE_10__* null, align 8
@col_ports = common dso_local global i64* null, align 8
@PA = common dso_local global i64 0, align 8
@row_masks = common dso_local global i32* null, align 8
@PB = common dso_local global i64 0, align 8
@row_ports = common dso_local global i64* null, align 8
@row_pins = common dso_local global i32* null, align 8
@mlast = common dso_local global i32* null, align 8
@mdebounced = common dso_local global i32* null, align 8
@DEBOUNCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = call i64 (...) @timer_read64()
  %7 = load i64, i64* @mdebouncing, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %183

10:                                               ; preds = %0
  %11 = load i32*, i32** @mlatest, align 8
  %12 = load i32, i32* @MATRIX_ROWS, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memset(i32* %11, i32 0, i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %121, %10
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MATRIX_COLS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %124

21:                                               ; preds = %17
  %22 = load i32*, i32** @col_pins, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PORT, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i64*, i64** @col_ports, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %27, i32* %38, align 4
  %39 = call i32 @wait_us(i32 1)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PORT, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i64, i64* @PA, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @row_masks, align 8
  %49 = load i64, i64* @PA, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %47, %51
  %53 = load i64, i64* @PA, align 8
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %53
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PORT, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i64, i64* @PB, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** @row_masks, align 8
  %64 = load i64, i64* @PB, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %62, %66
  %68 = load i64, i64* @PB, align 8
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %68
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** @col_pins, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 1, %74
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PORT, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load i64*, i64** @col_ports, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %75, i32* %86, align 4
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %117, %21
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @MATRIX_ROWS, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %87
  %92 = load i64*, i64** @row_ports, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** @row_pins, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 1, %103
  %105 = and i32 %98, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %91
  %108 = load i32, i32* %4, align 4
  %109 = shl i32 1, %108
  %110 = load i32*, i32** @mlatest, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %109
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %107, %91
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %87

120:                                              ; preds = %87
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %17

124:                                              ; preds = %17
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %152, %124
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @MATRIX_ROWS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %125
  %130 = load i32*, i32** @mlast, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** @mlatest, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %134, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  store i32 1, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %129
  %143 = load i32*, i32** @mlatest, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** @mlast, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  br label %152

152:                                              ; preds = %142
  %153 = load i32, i32* %3, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %3, align 4
  br label %125

155:                                              ; preds = %125
  %156 = load i32, i32* %2, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %177, label %158

158:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %173, %158
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @MATRIX_ROWS, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %159
  %164 = load i32*, i32** @mlatest, align 8
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** @mdebounced, align 8
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %168, i32* %172, align 4
  br label %173

173:                                              ; preds = %163
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %3, align 4
  br label %159

176:                                              ; preds = %159
  store i64 0, i64* @mdebouncing, align 8
  br label %181

177:                                              ; preds = %155
  %178 = call i64 (...) @timer_read64()
  %179 = load i64, i64* @DEBOUNCE, align 8
  %180 = add nsw i64 %178, %179
  store i64 %180, i64* @mdebouncing, align 8
  br label %181

181:                                              ; preds = %177, %176
  %182 = call i32 (...) @matrix_scan_quantum()
  store i32 1, i32* %1, align 4
  br label %183

183:                                              ; preds = %181, %9
  %184 = load i32, i32* %1, align 4
  ret i32 %184
}

declare dso_local i64 @timer_read64(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
