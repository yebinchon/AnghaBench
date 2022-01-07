; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_cswap_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_cswap_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@cswap_.i__ = internal global i32 0, align 4
@cswap_.ix = internal global i32 0, align 4
@cswap_.iy = internal global i32 0, align 4
@cswap_.ctemp = internal global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cswap_(i32* %0, %struct.TYPE_4__* %1, i32* %2, %struct.TYPE_4__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 -1
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 -1
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %190

23:                                               ; preds = %5
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %128

32:                                               ; preds = %27, %23
  store i32 1, i32* @cswap_.ix, align 4
  store i32 1, i32* @cswap_.iy, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 0, %38
  %40 = add nsw i32 %39, 1
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %40, %42
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @cswap_.ix, align 4
  br label %45

45:                                               ; preds = %36, %32
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 0, %51
  %53 = add nsw i32 %52, 1
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %53, %55
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @cswap_.iy, align 4
  br label %58

58:                                               ; preds = %49, %45
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  store i32 1, i32* @cswap_.i__, align 4
  br label %61

61:                                               ; preds = %124, %58
  %62 = load i32, i32* @cswap_.i__, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %127

65:                                               ; preds = %61
  %66 = load i32, i32* @cswap_.ix, align 4
  store i32 %66, i32* %13, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cswap_.ctemp, i32 0, i32 1), align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cswap_.ctemp, i32 0, i32 0), align 4
  %79 = load i32, i32* @cswap_.ix, align 4
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* @cswap_.iy, align 4
  store i32 %80, i32* %14, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %86, i32* %91, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %97, i32* %102, align 4
  %103 = load i32, i32* @cswap_.iy, align 4
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cswap_.ctemp, i32 0, i32 1), align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %104, i32* %109, align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cswap_.ctemp, i32 0, i32 0), align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 %110, i32* %115, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @cswap_.ix, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* @cswap_.ix, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @cswap_.iy, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* @cswap_.iy, align 4
  br label %124

124:                                              ; preds = %65
  %125 = load i32, i32* @cswap_.i__, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @cswap_.i__, align 4
  br label %61

127:                                              ; preds = %61
  store i32 0, i32* %6, align 4
  br label %190

128:                                              ; preds = %31
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %12, align 4
  store i32 1, i32* @cswap_.i__, align 4
  br label %131

131:                                              ; preds = %186, %128
  %132 = load i32, i32* @cswap_.i__, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %189

135:                                              ; preds = %131
  %136 = load i32, i32* @cswap_.i__, align 4
  store i32 %136, i32* %13, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cswap_.ctemp, i32 0, i32 1), align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cswap_.ctemp, i32 0, i32 0), align 4
  %149 = load i32, i32* @cswap_.i__, align 4
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* @cswap_.i__, align 4
  store i32 %150, i32* %14, align 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  store i32 %156, i32* %161, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  store i32 %167, i32* %172, align 4
  %173 = load i32, i32* @cswap_.i__, align 4
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cswap_.ctemp, i32 0, i32 1), align 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  store i32 %174, i32* %179, align 4
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cswap_.ctemp, i32 0, i32 0), align 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  store i32 %180, i32* %185, align 4
  br label %186

186:                                              ; preds = %135
  %187 = load i32, i32* @cswap_.i__, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* @cswap_.i__, align 4
  br label %131

189:                                              ; preds = %131
  store i32 0, i32* %6, align 4
  br label %190

190:                                              ; preds = %189, %127, %22
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
