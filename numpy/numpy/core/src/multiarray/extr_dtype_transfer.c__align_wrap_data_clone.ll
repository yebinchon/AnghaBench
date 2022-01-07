; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c__align_wrap_data_clone.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c__align_wrap_data_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i32*, i32*, i32* }

@NPY_LOWLEVEL_BUFFER_BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @_align_wrap_data_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_align_wrap_data_clone(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  store i32 48, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NPY_LOWLEVEL_BUFFER_BLOCKSIZE, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %11, %14
  %16 = add nsw i32 %10, %15
  %17 = load i32, i32* @NPY_LOWLEVEL_BUFFER_BLOCKSIZE, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = add nsw i32 %16, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @PyArray_malloc(i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %5, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %130

29:                                               ; preds = %1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @memcpy(%struct.TYPE_4__* %30, i32* %31, i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = bitcast %struct.TYPE_4__* %34 to i8*
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @NPY_LOWLEVEL_BUFFER_BLOCKSIZE, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %43, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %29
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = call i8* @NPY_AUXDATA_CLONE(i32* %60)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 5
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = call i32 @PyArray_free(%struct.TYPE_4__* %70)
  store i32* null, i32** %2, align 8
  br label %130

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %29
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %98

78:                                               ; preds = %73
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i8* @NPY_AUXDATA_CLONE(i32* %81)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @NPY_AUXDATA_FREE(i32* %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = call i32 @PyArray_free(%struct.TYPE_4__* %95)
  store i32* null, i32** %2, align 8
  br label %130

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %73
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %127

103:                                              ; preds = %98
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = call i8* @NPY_AUXDATA_CLONE(i32* %106)
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 6
  store i32* %108, i32** %110, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %103
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @NPY_AUXDATA_FREE(i32* %118)
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @NPY_AUXDATA_FREE(i32* %122)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %125 = call i32 @PyArray_free(%struct.TYPE_4__* %124)
  store i32* null, i32** %2, align 8
  br label %130

126:                                              ; preds = %103
  br label %127

127:                                              ; preds = %126, %98
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %129 = bitcast %struct.TYPE_4__* %128 to i32*
  store i32* %129, i32** %2, align 8
  br label %130

130:                                              ; preds = %127, %115, %90, %69, %28
  %131 = load i32*, i32** %2, align 8
  ret i32* %131
}

declare dso_local i64 @PyArray_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i8* @NPY_AUXDATA_CLONE(i32*) #1

declare dso_local i32 @PyArray_free(%struct.TYPE_4__*) #1

declare dso_local i32 @NPY_AUXDATA_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
