; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_vbarray.c_VBArray_ubound.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_vbarray.c_VBArray_ubound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_VBARRAY_EXPECTED = common dso_local global i32 0, align 4
@DISP_E_BADINDEX = common dso_local global i64 0, align 8
@JS_E_SUBSCRIPT_OUT_OF_RANGE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32*, i32*)* @VBArray_ubound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @VBArray_ubound(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %9, align 8
  %19 = call %struct.TYPE_3__* @vbarray_this(i32* %18)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %14, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @JS_E_VBARRAY_EXPECTED, align 4
  %25 = call i64 @throw_type_error(i32* %23, i32 %24, i32* null)
  store i64 %25, i64* %7, align 8
  br label %71

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @to_int32(i32* %30, i32 %33, i32* %15)
  store i64 %34, i64* %16, align 8
  %35 = load i64, i64* %16, align 8
  %36 = call i64 @FAILED(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i64, i64* %16, align 8
  store i64 %39, i64* %7, align 8
  br label %71

40:                                               ; preds = %29
  br label %42

41:                                               ; preds = %26
  store i32 1, i32* %15, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i64 @SafeArrayGetUBound(i32 %45, i32 %46, i32* %15)
  store i64 %47, i64* %16, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* @DISP_E_BADINDEX, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* @JS_E_SUBSCRIPT_OUT_OF_RANGE, align 4
  %54 = call i64 @throw_range_error(i32* %52, i32 %53, i32* null)
  store i64 %54, i64* %7, align 8
  br label %71

55:                                               ; preds = %42
  %56 = load i64, i64* %16, align 8
  %57 = call i64 @FAILED(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* %16, align 8
  store i64 %60, i64* %7, align 8
  br label %71

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = load i32*, i32** %13, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @jsval_number(i32 %66)
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i64, i64* @S_OK, align 8
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %69, %59, %51, %38, %22
  %72 = load i64, i64* %7, align 8
  ret i64 %72
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_3__* @vbarray_this(i32*) #1

declare dso_local i64 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i64 @to_int32(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @SafeArrayGetUBound(i32, i32, i32*) #1

declare dso_local i64 @throw_range_error(i32*, i32, i32*) #1

declare dso_local i32 @jsval_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
