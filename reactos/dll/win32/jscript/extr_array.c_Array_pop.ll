; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_pop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32*, i32*)* @Array_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Array_pop(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @get_length(i32* %19, i32* %20, i32** %14, i32* %16)
  store i64 %21, i64* %17, align 8
  %22 = load i64, i64* %17, align 8
  %23 = call i64 @FAILED(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i64, i64* %17, align 8
  store i64 %26, i64* %7, align 8
  br label %96

27:                                               ; preds = %6
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %14, align 8
  %32 = call i64 @set_length(i32* %31, i32 0)
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = call i64 @FAILED(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %17, align 8
  store i64 %37, i64* %7, align 8
  br label %96

38:                                               ; preds = %30
  %39 = load i32*, i32** %13, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i32 (...) @jsval_undefined()
  %43 = load i32*, i32** %13, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i64, i64* @S_OK, align 8
  store i64 %45, i64* %7, align 8
  br label %96

46:                                               ; preds = %27
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %16, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i64 @jsdisp_get_idx(i32* %49, i32 %50, i32* %15)
  store i64 %51, i64* %17, align 8
  %52 = load i64, i64* %17, align 8
  %53 = call i64 @SUCCEEDED(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i64 @jsdisp_delete_idx(i32* %56, i32 %57)
  store i64 %58, i64* %17, align 8
  br label %69

59:                                               ; preds = %46
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = call i32 (...) @jsval_undefined()
  store i32 %64, i32* %15, align 4
  %65 = load i64, i64* @S_OK, align 8
  store i64 %65, i64* %17, align 8
  br label %68

66:                                               ; preds = %59
  %67 = load i64, i64* %17, align 8
  store i64 %67, i64* %7, align 8
  br label %96

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %55
  %70 = load i64, i64* %17, align 8
  %71 = call i64 @SUCCEEDED(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i64 @set_length(i32* %74, i32 %75)
  store i64 %76, i64* %17, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i64, i64* %17, align 8
  %79 = call i64 @FAILED(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @jsval_release(i32 %82)
  %84 = load i64, i64* %17, align 8
  store i64 %84, i64* %7, align 8
  br label %96

85:                                               ; preds = %77
  %86 = load i32*, i32** %13, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %15, align 4
  %90 = load i32*, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  br label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @jsval_release(i32 %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i64, i64* %17, align 8
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %94, %81, %66, %44, %36, %25
  %97 = load i64, i64* %7, align 8
  ret i64 %97
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @get_length(i32*, i32*, i32**, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @set_length(i32*, i32) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i64 @jsdisp_get_idx(i32*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @jsdisp_delete_idx(i32*, i32) #1

declare dso_local i32 @jsval_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
