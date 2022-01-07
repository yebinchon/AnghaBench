; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_randomkit.c_rk_random.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_randomkit.c_rk_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64* }

@RK_STATE_LEN = common dso_local global i64 0, align 8
@N = common dso_local global i32 0, align 4
@M = common dso_local global i32 0, align 4
@UPPER_MASK = common dso_local global i64 0, align 8
@LOWER_MASK = common dso_local global i64 0, align 8
@MATRIX_A = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rk_random(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RK_STATE_LEN, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %166

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %62, %10
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @N, align 4
  %14 = load i32, i32* @M, align 4
  %15 = sub nsw i32 %13, %14
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UPPER_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LOWER_MASK, align 8
  %36 = and i64 %34, %35
  %37 = or i64 %26, %36
  store i64 %37, i64* %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @M, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %40, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = lshr i64 %47, 1
  %49 = xor i64 %46, %48
  %50 = load i64, i64* %3, align 8
  %51 = and i64 %50, 1
  %52 = sub i64 0, %51
  %53 = load i64, i64* @MATRIX_A, align 8
  %54 = and i64 %52, %53
  %55 = xor i64 %49, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %55, i64* %61, align 8
  br label %62

62:                                               ; preds = %17
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %11

65:                                               ; preds = %11
  br label %66

66:                                               ; preds = %118, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @N, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %121

71:                                               ; preds = %66
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @UPPER_MASK, align 8
  %80 = and i64 %78, %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LOWER_MASK, align 8
  %90 = and i64 %88, %89
  %91 = or i64 %80, %90
  store i64 %91, i64* %3, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @M, align 4
  %97 = load i32, i32* @N, align 4
  %98 = sub nsw i32 %96, %97
  %99 = add nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %94, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %3, align 8
  %104 = lshr i64 %103, 1
  %105 = xor i64 %102, %104
  %106 = load i64, i64* %3, align 8
  %107 = and i64 %106, 1
  %108 = sub i64 0, %107
  %109 = load i64, i64* @MATRIX_A, align 8
  %110 = and i64 %108, %109
  %111 = xor i64 %105, %110
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 %111, i64* %117, align 8
  br label %118

118:                                              ; preds = %71
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %66

121:                                              ; preds = %66
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* @N, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %124, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @UPPER_MASK, align 8
  %131 = and i64 %129, %130
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @LOWER_MASK, align 8
  %138 = and i64 %136, %137
  %139 = or i64 %131, %138
  store i64 %139, i64* %3, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* @M, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %3, align 8
  %149 = lshr i64 %148, 1
  %150 = xor i64 %147, %149
  %151 = load i64, i64* %3, align 8
  %152 = and i64 %151, 1
  %153 = sub i64 0, %152
  %154 = load i64, i64* @MATRIX_A, align 8
  %155 = and i64 %153, %154
  %156 = xor i64 %150, %155
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* @N, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %159, i64 %162
  store i64 %156, i64* %163, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %121, %1
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i64*, i64** %168, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %171, align 8
  %174 = getelementptr inbounds i64, i64* %169, i64 %172
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %3, align 8
  %176 = load i64, i64* %3, align 8
  %177 = lshr i64 %176, 11
  %178 = load i64, i64* %3, align 8
  %179 = xor i64 %178, %177
  store i64 %179, i64* %3, align 8
  %180 = load i64, i64* %3, align 8
  %181 = shl i64 %180, 7
  %182 = and i64 %181, 2636928640
  %183 = load i64, i64* %3, align 8
  %184 = xor i64 %183, %182
  store i64 %184, i64* %3, align 8
  %185 = load i64, i64* %3, align 8
  %186 = shl i64 %185, 15
  %187 = and i64 %186, 4022730752
  %188 = load i64, i64* %3, align 8
  %189 = xor i64 %188, %187
  store i64 %189, i64* %3, align 8
  %190 = load i64, i64* %3, align 8
  %191 = lshr i64 %190, 18
  %192 = load i64, i64* %3, align 8
  %193 = xor i64 %192, %191
  store i64 %193, i64* %3, align 8
  %194 = load i64, i64* %3, align 8
  ret i64 %194
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
