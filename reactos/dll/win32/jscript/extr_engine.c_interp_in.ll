; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_in.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_OBJECT_EXPECTED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @interp_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @interp_in(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @stack_pop(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @is_object_instance(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @get_object(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @jsval_release(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @JS_E_OBJECT_EXPECTED, align 4
  %26 = call i64 @throw_type_error(i32* %24, i32 %25, i32* null)
  store i64 %26, i64* %2, align 8
  br label %73

27:                                               ; preds = %17
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @stack_pop(i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @to_flat_string(i32* %30, i32 %31, i32** %5, i32** %4)
  store i64 %32, i64* %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @jsval_release(i32 %33)
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @FAILED(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @get_object(i32 %39)
  %41 = call i32 @IDispatch_Release(i32 %40)
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %2, align 8
  br label %73

43:                                               ; preds = %27
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @get_object(i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i64 @disp_get_id(i32* %44, i32 %46, i32* %47, i32* null, i32 0, i32* %8)
  store i64 %48, i64* %10, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @get_object(i32 %49)
  %51 = call i32 @IDispatch_Release(i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @jsstr_release(i32* %52)
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @SUCCEEDED(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %9, align 4
  br label %68

59:                                               ; preds = %43
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %9, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %2, align 8
  br label %73

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %57
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @jsval_bool(i32 %70)
  %72 = call i64 @stack_push(i32* %69, i32 %71)
  store i64 %72, i64* %2, align 8
  br label %73

73:                                               ; preds = %68, %65, %38, %21
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @stack_pop(i32*) #1

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i64 @to_flat_string(i32*, i32, i32**, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @IDispatch_Release(i32) #1

declare dso_local i64 @disp_get_id(i32*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @stack_push(i32*, i32) #1

declare dso_local i32 @jsval_bool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
