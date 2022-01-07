; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_charAt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_charAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @String_charAt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @String_charAt(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %16, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @get_string_val(i32* %20, i32* %21, i32** %14)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %17, align 4
  store i32 %27, i32* %7, align 4
  br label %85

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @to_integer(i32* %32, i32 %35, double* %18)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @jsstr_release(i32* %41)
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %7, align 4
  br label %85

44:                                               ; preds = %31
  %45 = load double, double* %18, align 8
  %46 = call i64 @is_int32(double %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load double, double* %18, align 8
  br label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi double [ %49, %48 ], [ -1.000000e+00, %50 ]
  %53 = fptosi double %52 to i64
  store i64 %53, i64* %16, align 8
  br label %54

54:                                               ; preds = %51, %28
  %55 = load i32*, i32** %13, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @jsstr_release(i32* %58)
  %60 = load i32, i32* @S_OK, align 4
  store i32 %60, i32* %7, align 4
  br label %85

61:                                               ; preds = %54
  %62 = load i64, i64* %16, align 8
  %63 = icmp sle i64 0, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i64, i64* %16, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = call i64 @jsstr_length(i32* %66)
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32*, i32** %14, align 8
  %71 = load i64, i64* %16, align 8
  %72 = call i32* @jsstr_substr(i32* %70, i64 %71, i32 1)
  store i32* %72, i32** %15, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %76, i32* %7, align 4
  br label %85

77:                                               ; preds = %69
  br label %80

78:                                               ; preds = %64, %61
  %79 = call i32* (...) @jsstr_empty()
  store i32* %79, i32** %15, align 8
  br label %80

80:                                               ; preds = %78, %77
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @jsval_string(i32* %81)
  %83 = load i32*, i32** %13, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @S_OK, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %80, %75, %57, %40, %26
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_string_val(i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @to_integer(i32*, i32, double*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i64 @is_int32(double) #1

declare dso_local i64 @jsstr_length(i32*) #1

declare dso_local i32* @jsstr_substr(i32*, i64, i32) #1

declare dso_local i32* @jsstr_empty(...) #1

declare dso_local i32 @jsval_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
