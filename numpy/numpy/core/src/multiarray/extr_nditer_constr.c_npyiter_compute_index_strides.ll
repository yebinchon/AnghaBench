; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_compute_index_strides.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_compute_index_strides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_ITFLAG_HASINDEX = common dso_local global i32 0, align 4
@NPY_ITER_C_INDEX = common dso_local global i32 0, align 4
@NPY_ITER_F_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @npyiter_compute_index_strides to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npyiter_compute_index_strides(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @NIT_ITFLAGS(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @NIT_NDIM(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @NIT_NOP(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @NIT_ITERSIZE(i32* %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NPY_ITFLAG_HASINDEX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i32* @NIT_AXISDATA(i32* %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i64* @NAD_PTRS(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %28, %23
  br label %139

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NPY_ITER_C_INDEX, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @NIT_AXISDATA_SIZEOF(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i32* @NIT_AXISDATA(i32* %47)
  store i32* %48, i32** %10, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %80, %42
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %49
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @NAD_SHAPE(i32* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32*, i32** %10, align 8
  %60 = call i32* @NAD_STRIDES(i32* %59)
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 0, i32* %63, align 4
  br label %71

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i32* @NAD_STRIDES(i32* %66)
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %65, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %58
  %72 = load i32*, i32** %10, align 8
  %73 = call i64* @NAD_PTRS(i32* %72)
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @NIT_ADVANCE_AXISDATA(i32* %83, i32 1)
  br label %49

85:                                               ; preds = %49
  br label %139

86:                                               ; preds = %37
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @NPY_ITER_F_INDEX, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %138

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @NIT_AXISDATA_SIZEOF(i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32*, i32** %3, align 8
  %97 = call i32* @NIT_AXISDATA(i32* %96)
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i32* @NIT_INDEX_AXISDATA(i32* %97, i32 %99)
  store i32* %100, i32** %10, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %132, %91
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %101
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @NAD_SHAPE(i32* %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32*, i32** %10, align 8
  %112 = call i32* @NAD_STRIDES(i32* %111)
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 0, i32* %115, align 4
  br label %123

116:                                              ; preds = %105
  %117 = load i32, i32* %9, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = call i32* @NAD_STRIDES(i32* %118)
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %117, i32* %122, align 4
  br label %123

123:                                              ; preds = %116, %110
  %124 = load i32*, i32** %10, align 8
  %125 = call i64* @NAD_PTRS(i32* %124)
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  store i64 0, i64* %128, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %9, align 4
  %131 = mul nsw i32 %130, %129
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @NIT_ADVANCE_AXISDATA(i32* %135, i32 -1)
  br label %101

137:                                              ; preds = %101
  br label %138

138:                                              ; preds = %137, %86
  br label %139

139:                                              ; preds = %36, %138, %85
  ret void
}

declare dso_local i32 @NIT_ITFLAGS(i32*) #1

declare dso_local i32 @NIT_NDIM(i32*) #1

declare dso_local i32 @NIT_NOP(i32*) #1

declare dso_local i32 @NIT_ITERSIZE(i32*) #1

declare dso_local i32* @NIT_AXISDATA(i32*) #1

declare dso_local i64* @NAD_PTRS(i32*) #1

declare dso_local i32 @NIT_AXISDATA_SIZEOF(i32, i32, i32) #1

declare dso_local i32 @NAD_SHAPE(i32*) #1

declare dso_local i32* @NAD_STRIDES(i32*) #1

declare dso_local i32 @NIT_ADVANCE_AXISDATA(i32*, i32) #1

declare dso_local i32* @NIT_INDEX_AXISDATA(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
