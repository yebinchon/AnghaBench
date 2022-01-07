; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_number.c_Number_toPrecision.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_number.c_Number_toPrecision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@JS_E_NUMBER_EXPECTED = common dso_local global i32 0, align 4
@JS_E_PRECISION_OUT_OF_RANGE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Number_toPrecision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Number_toPrecision(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
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
  br label %123

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @to_int32(i32* %31, i32 %34, i32* %15)
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %19, align 4
  store i32 %40, i32* %7, align 4
  br label %123

41:                                               ; preds = %30
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %15, align 4
  %46 = icmp sgt i32 %45, 21
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %41
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @JS_E_PRECISION_OUT_OF_RANGE, align 4
  %50 = call i32 @throw_range_error(i32* %48, i32 %49, i32* null)
  store i32 %50, i32* %7, align 4
  br label %123

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @is_finite(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %59, %52
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @jsval_number(i32 %64)
  %66 = call i32 @to_string(i32* %63, i32 %65, i32** %17)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = call i64 @FAILED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %7, align 4
  br label %123

72:                                               ; preds = %62
  br label %111

73:                                               ; preds = %59
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i32, i32* %18, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* %18, align 4
  br label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %18, align 4
  %83 = sub nsw i32 0, %82
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi i32 [ %80, %79 ], [ %83, %81 ]
  %86 = call i32 @log10(i32 %85)
  %87 = call i32 @floor(i32 %86)
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %90

89:                                               ; preds = %73
  store i32 1, i32* %16, align 4
  br label %90

90:                                               ; preds = %89, %84
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %15, align 4
  %97 = sub nsw i32 %96, 1
  %98 = call i32* @number_to_exponential(i32 %95, i32 %97)
  store i32* %98, i32** %17, align 8
  br label %105

99:                                               ; preds = %90
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i32* @number_to_fixed(i32 %100, i32 %103)
  store i32* %104, i32** %17, align 8
  br label %105

105:                                              ; preds = %99, %94
  %106 = load i32*, i32** %17, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %109, i32* %7, align 4
  br label %123

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %72
  %112 = load i32*, i32** %13, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32*, i32** %17, align 8
  %116 = call i32 @jsval_string(i32* %115)
  %117 = load i32*, i32** %13, align 8
  store i32 %116, i32* %117, align 4
  br label %121

118:                                              ; preds = %111
  %119 = load i32*, i32** %17, align 8
  %120 = call i32 @jsstr_release(i32* %119)
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32, i32* @S_OK, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %121, %108, %70, %47, %39, %23
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local %struct.TYPE_3__* @number_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @to_int32(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @throw_range_error(i32*, i32, i32*) #1

declare dso_local i32 @is_finite(i32) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @log10(i32) #1

declare dso_local i32* @number_to_exponential(i32, i32) #1

declare dso_local i32* @number_to_fixed(i32, i32) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
