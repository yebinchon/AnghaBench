; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_vbarray.c_VBArray_getItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_vbarray.c_VBArray_getItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_VBARRAY_EXPECTED = common dso_local global i32 0, align 4
@JS_E_SUBSCRIPT_OUT_OF_RANGE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@DISP_E_BADINDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32*, i32*)* @VBArray_getItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @VBArray_getItem(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_3__* @vbarray_this(i32* %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %14, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @JS_E_VBARRAY_EXPECTED, align 4
  %27 = call i64 @throw_type_error(i32* %25, i32 %26, i32* null)
  store i64 %27, i64* %7, align 8
  br label %109

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SafeArrayGetDim(i32 %32)
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @JS_E_SUBSCRIPT_OUT_OF_RANGE, align 4
  %38 = call i64 @throw_range_error(i32* %36, i32 %37, i32* null)
  store i64 %38, i64* %7, align 8
  br label %109

39:                                               ; preds = %28
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32* @heap_alloc(i32 %43)
  store i32* %44, i32** %16, align 8
  %45 = load i32*, i32** %16, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  %48 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %48, i64* %7, align 8
  br label %109

49:                                               ; preds = %39
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i64 @to_int32(i32* %55, i32 %60, i32* %64)
  store i64 %65, i64* %18, align 8
  %66 = load i64, i64* %18, align 8
  %67 = call i64 @FAILED(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @heap_free(i32* %70)
  %72 = load i64, i64* %18, align 8
  store i64 %72, i64* %7, align 8
  br label %109

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %50

77:                                               ; preds = %50
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %16, align 8
  %82 = bitcast i32* %17 to i8*
  %83 = call i64 @SafeArrayGetElement(i32 %80, i32* %81, i8* %82)
  store i64 %83, i64* %18, align 8
  %84 = load i32*, i32** %16, align 8
  %85 = call i32 @heap_free(i32* %84)
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* @DISP_E_BADINDEX, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* @JS_E_SUBSCRIPT_OUT_OF_RANGE, align 4
  %92 = call i64 @throw_range_error(i32* %90, i32 %91, i32* null)
  store i64 %92, i64* %7, align 8
  br label %109

93:                                               ; preds = %77
  %94 = load i64, i64* %18, align 8
  %95 = call i64 @FAILED(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i64, i64* %18, align 8
  store i64 %98, i64* %7, align 8
  br label %109

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99
  %101 = load i32*, i32** %13, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32*, i32** %13, align 8
  %105 = call i64 @variant_to_jsval(i32* %17, i32* %104)
  store i64 %105, i64* %18, align 8
  %106 = call i32 @VariantClear(i32* %17)
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i64, i64* %18, align 8
  store i64 %108, i64* %7, align 8
  br label %109

109:                                              ; preds = %107, %97, %89, %69, %47, %35, %24
  %110 = load i64, i64* %7, align 8
  ret i64 %110
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_3__* @vbarray_this(i32*) #1

declare dso_local i64 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @SafeArrayGetDim(i32) #1

declare dso_local i64 @throw_range_error(i32*, i32, i32*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i64 @to_int32(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i64 @SafeArrayGetElement(i32, i32*, i8*) #1

declare dso_local i64 @variant_to_jsval(i32*, i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
