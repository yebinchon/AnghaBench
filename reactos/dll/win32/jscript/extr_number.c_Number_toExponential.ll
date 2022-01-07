; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_number.c_Number_toExponential.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_number.c_Number_toExponential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_NUMBER_EXPECTED = common dso_local global i32 0, align 4
@JS_E_FRACTION_DIGITS_OUT_OF_RANGE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Number_toExponential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Number_toExponential(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_3__* @number_this(i32* %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %14, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @JS_E_NUMBER_EXPECTED, align 4
  %26 = call i32 @throw_type_error(i32* %24, i32 %25, i32* null)
  store i32 %26, i32* %7, align 4
  br label %97

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @to_int32(i32* %31, i32 %34, i32* %16)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %18, align 4
  store i32 %40, i32* %7, align 4
  br label %97

41:                                               ; preds = %30
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %16, align 4
  %46 = icmp sgt i32 %45, 20
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %41
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @JS_E_FRACTION_DIGITS_OUT_OF_RANGE, align 4
  %50 = call i32 @throw_range_error(i32* %48, i32 %49, i32* null)
  store i32 %50, i32* %7, align 4
  br label %97

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @is_finite(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @jsval_number(i32 %61)
  %63 = call i32 @to_string(i32* %60, i32 %62, i32** %17)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = call i64 @FAILED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %18, align 4
  store i32 %68, i32* %7, align 4
  br label %97

69:                                               ; preds = %59
  br label %85

70:                                               ; preds = %52
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32* @number_to_exponential(i32 %77, i32 %78)
  store i32* %79, i32** %17, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %83, i32* %7, align 4
  br label %97

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i32*, i32** %13, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32*, i32** %17, align 8
  %90 = call i32 @jsval_string(i32* %89)
  %91 = load i32*, i32** %13, align 8
  store i32 %90, i32* %91, align 4
  br label %95

92:                                               ; preds = %85
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @jsstr_release(i32* %93)
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32, i32* @S_OK, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %82, %67, %47, %39, %23
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_3__* @number_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @to_int32(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @throw_range_error(i32*, i32, i32*) #1

declare dso_local i32 @is_finite(i32) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32* @number_to_exponential(i32, i32) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
