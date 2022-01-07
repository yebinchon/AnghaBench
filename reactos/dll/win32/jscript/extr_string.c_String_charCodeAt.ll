; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_charCodeAt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_charCodeAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NAN = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @String_charCodeAt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @String_charCodeAt(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store double 0.000000e+00, double* %15, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @get_string_val(i32* %20, i32* %21, i32** %14)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %7, align 4
  br label %83

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @to_integer(i32* %32, i32 %35, double* %17)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @jsstr_release(i32* %41)
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %7, align 4
  br label %83

44:                                               ; preds = %31
  %45 = load double, double* %17, align 8
  %46 = call i32 @is_int32(double %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load double, double* %17, align 8
  %50 = fcmp olt double %49, 0.000000e+00
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load double, double* %17, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = call double @jsstr_length(i32* %53)
  %55 = fcmp oge double %52, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %51, %48, %44
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @jsstr_release(i32* %57)
  %59 = load i32*, i32** %13, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @NAN, align 4
  %63 = call i32 @jsval_number(i32 %62)
  %64 = load i32*, i32** %13, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* @S_OK, align 4
  store i32 %66, i32* %7, align 4
  br label %83

67:                                               ; preds = %51
  %68 = load double, double* %17, align 8
  store double %68, double* %15, align 8
  br label %69

69:                                               ; preds = %67, %28
  %70 = load i32*, i32** %13, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32*, i32** %14, align 8
  %74 = load double, double* %15, align 8
  %75 = call i32 @jsstr_extract(i32* %73, double %74, i32 1, i32* %18)
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @jsval_number(i32 %76)
  %78 = load i32*, i32** %13, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %69
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @jsstr_release(i32* %80)
  %82 = load i32, i32* @S_OK, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %65, %40, %26
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_string_val(i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @to_integer(i32*, i32, double*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @is_int32(double) #1

declare dso_local double @jsstr_length(i32*) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @jsstr_extract(i32*, double, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
