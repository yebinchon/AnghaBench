; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @interp_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @interp_array(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @stack_pop(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @stack_pop_object(i32* %14, i32** %8)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i64 @FAILED(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @jsval_release(i32 %20)
  %22 = load i64, i64* %10, align 8
  store i64 %22, i64* %2, align 8
  br label %71

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @to_flat_string(i32* %24, i32 %25, i32** %4, i32** %5)
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @jsval_release(i32 %27)
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @FAILED(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @IDispatch_Release(i32* %33)
  %35 = load i64, i64* %10, align 8
  store i64 %35, i64* %2, align 8
  br label %71

36:                                               ; preds = %23
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @disp_get_id(i32* %37, i32* %38, i32* %39, i32* null, i32 0, i32* %9)
  store i64 %40, i64* %10, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @jsstr_release(i32* %41)
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @SUCCEEDED(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load i32*, i32** %3, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @disp_propget(i32* %47, i32* %48, i32 %49, i32* %6)
  store i64 %50, i64* %10, align 8
  br label %59

51:                                               ; preds = %36
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = call i32 (...) @jsval_undefined()
  store i32 %56, i32* %6, align 4
  %57 = load i64, i64* @S_OK, align 8
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %55, %51
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @IDispatch_Release(i32* %60)
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @FAILED(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %2, align 8
  br label %71

67:                                               ; preds = %59
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @stack_push(i32* %68, i32 %69)
  store i64 %70, i64* %2, align 8
  br label %71

71:                                               ; preds = %67, %65, %32, %19
  %72 = load i64, i64* %2, align 8
  ret i64 %72
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @stack_pop(i32*) #1

declare dso_local i64 @stack_pop_object(i32*, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @to_flat_string(i32*, i32, i32**, i32**) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i64 @disp_get_id(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @disp_propget(i32*, i32*, i32, i32*) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i64 @stack_push(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
