; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_reduction.c_allocate_reduce_result.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_reduction.c_allocate_reduce_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@PyArray_Type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64*, %struct.TYPE_9__*, i32)* @allocate_reduce_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @allocate_reduce_result(i32* %0, i64* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* @NPY_MAXDIMS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i32, i32* @NPY_MAXDIMS, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64* @PyArray_DIMS(i32* %25)
  store i64* %26, i64** %13, align 8
  %27 = load i32, i32* @NPY_MAXDIMS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca %struct.TYPE_8__, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @PyArray_NDIM(i32* %30)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = icmp eq %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load i32*, i32** %5, align 8
  %36 = call %struct.TYPE_9__* @PyArray_DTYPE(i32* %35)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %7, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = call i32 @Py_INCREF(%struct.TYPE_9__* %37)
  br label %39

39:                                               ; preds = %34, %4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @PyArray_NDIM(i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @PyArray_STRIDES(i32* %42)
  %44 = call i32 @PyArray_CreateSortedStridePerm(i32 %41, i32 %43, %struct.TYPE_8__* %29)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load i64*, i64** %13, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memcpy(i64* %24, i64* %51, i32 %55)
  br label %57

57:                                               ; preds = %50, %39
  %58 = load i32, i32* %16, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %89, %57
  %61 = load i32, i32* %15, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %60
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %17, align 8
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %17, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %63
  %75 = load i64, i64* %17, align 8
  %76 = getelementptr inbounds i64, i64* %21, i64 %75
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* %17, align 8
  %78 = getelementptr inbounds i64, i64* %24, i64 %77
  store i64 1, i64* %78, align 8
  br label %88

79:                                               ; preds = %63
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %17, align 8
  %82 = getelementptr inbounds i64, i64* %21, i64 %81
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %17, align 8
  %84 = getelementptr inbounds i64, i64* %24, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = mul i64 %86, %85
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %79, %74
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %15, align 4
  br label %60

92:                                               ; preds = %60
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32*, i32** %5, align 8
  %97 = call i32* @Py_TYPE(i32* %96)
  br label %99

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %95
  %100 = phi i32* [ %97, %95 ], [ @PyArray_Type, %98 ]
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32*, i32** %5, align 8
  br label %108

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32* [ %106, %105 ], [ null, %107 ]
  %110 = call i64 @PyArray_NewFromDescr(i32* %100, %struct.TYPE_9__* %101, i32 %102, i64* %24, i64* %21, i32* null, i32 0, i32* %109)
  %111 = inttoptr i64 %110 to i32*
  %112 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %112)
  ret i32* %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64* @PyArray_DIMS(i32*) #2

declare dso_local i32 @PyArray_NDIM(i32*) #2

declare dso_local %struct.TYPE_9__* @PyArray_DTYPE(i32*) #2

declare dso_local i32 @Py_INCREF(%struct.TYPE_9__*) #2

declare dso_local i32 @PyArray_CreateSortedStridePerm(i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @PyArray_STRIDES(i32*) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i64 @PyArray_NewFromDescr(i32*, %struct.TYPE_9__*, i32, i64*, i64*, i32*, i32, i32*) #2

declare dso_local i32* @Py_TYPE(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
