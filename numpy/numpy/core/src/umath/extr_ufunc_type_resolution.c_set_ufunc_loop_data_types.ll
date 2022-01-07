; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_set_ufunc_loop_data_types.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_set_ufunc_loop_data_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**, i32**, i32*, i32**)* @set_ufunc_loop_data_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ufunc_loop_data_types(%struct.TYPE_5__* %0, i32** %1, i32** %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %134, %5
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %137

27:                                               ; preds = %23
  %28 = load i32**, i32*** %11, align 8
  %29 = icmp ne i32** %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32**, i32*** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i32**, i32*** %9, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* %35, i32** %39, align 8
  %40 = load i32**, i32*** %9, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @Py_XINCREF(i32* %44)
  br label %125

46:                                               ; preds = %27
  %47 = load i32**, i32*** %8, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %80

53:                                               ; preds = %46
  %54 = load i32**, i32*** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = call %struct.TYPE_6__* @PyArray_DESCR(i32* %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %61, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %53
  %69 = load i32**, i32*** %8, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = call %struct.TYPE_6__* @PyArray_DESCR(i32* %73)
  %75 = call i32* @ensure_dtype_nbo(%struct.TYPE_6__* %74)
  %76 = load i32**, i32*** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* %75, i32** %79, align 8
  br label %124

80:                                               ; preds = %53, %46
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %80
  %85 = load i32**, i32*** %8, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %112

89:                                               ; preds = %84
  %90 = load i32**, i32*** %8, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 0
  %92 = load i32*, i32** %91, align 8
  %93 = call %struct.TYPE_6__* @PyArray_DESCR(i32* %92)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %95, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %89
  %103 = load i32**, i32*** %8, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  %105 = load i32*, i32** %104, align 8
  %106 = call %struct.TYPE_6__* @PyArray_DESCR(i32* %105)
  %107 = call i32* @ensure_dtype_nbo(%struct.TYPE_6__* %106)
  %108 = load i32**, i32*** %9, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  store i32* %107, i32** %111, align 8
  br label %123

112:                                              ; preds = %89, %84, %80
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32* @PyArray_DescrFromType(i32 %117)
  %119 = load i32**, i32*** %9, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  store i32* %118, i32** %122, align 8
  br label %123

123:                                              ; preds = %112, %102
  br label %124

124:                                              ; preds = %123, %68
  br label %125

125:                                              ; preds = %124, %30
  %126 = load i32**, i32*** %9, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %138

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %23

137:                                              ; preds = %23
  store i32 0, i32* %6, align 4
  br label %155

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %143, %138
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %12, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load i32**, i32*** %9, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @Py_DECREF(i32* %148)
  %150 = load i32**, i32*** %9, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  store i32* null, i32** %153, align 8
  br label %139

154:                                              ; preds = %139
  store i32 -1, i32* %6, align 4
  br label %155

155:                                              ; preds = %154, %137
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i32 @Py_XINCREF(i32*) #1

declare dso_local %struct.TYPE_6__* @PyArray_DESCR(i32*) #1

declare dso_local i32* @ensure_dtype_nbo(%struct.TYPE_6__*) #1

declare dso_local i32* @PyArray_DescrFromType(i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
