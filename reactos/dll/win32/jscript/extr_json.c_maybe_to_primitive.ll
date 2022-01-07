; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_maybe_to_primitive.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_maybe_to_primitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSCLASS_NUMBER = common dso_local global i32 0, align 4
@JSCLASS_STRING = common dso_local global i32 0, align 4
@JSCLASS_BOOLEAN = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @maybe_to_primitive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_to_primitive(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @is_object_instance(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @get_object(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @get_object(i32 %20)
  %22 = call i32* @iface_to_jsdisp(i32 %21)
  store i32* %22, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19, %15, %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @jsval_copy(i32 %25, i32* %26)
  store i32 %27, i32* %4, align 4
  br label %86

28:                                               ; preds = %19
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @JSCLASS_NUMBER, align 4
  %31 = call i64 @is_class(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @to_number(i32* %34, i32 %35, double* %10)
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @jsdisp_release(i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @SUCCEEDED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load double, double* %10, align 8
  %44 = call i32 @jsval_number(double %43)
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %33
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %86

48:                                               ; preds = %28
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @JSCLASS_STRING, align 4
  %51 = call i64 @is_class(i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @to_string(i32* %54, i32 %55, i32** %11)
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @jsdisp_release(i32* %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @SUCCEEDED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @jsval_string(i32* %63)
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %53
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %86

68:                                               ; preds = %48
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* @JSCLASS_BOOLEAN, align 4
  %71 = call i64 @is_class(i32* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @bool_obj_value(i32* %74)
  %76 = call i32 @jsval_bool(i32 %75)
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @jsdisp_release(i32* %78)
  %80 = load i32, i32* @S_OK, align 4
  store i32 %80, i32* %4, align 4
  br label %86

81:                                               ; preds = %68
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @jsval_obj(i32* %82)
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @S_OK, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %73, %66, %46, %24
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32* @iface_to_jsdisp(i32) #1

declare dso_local i32 @jsval_copy(i32, i32*) #1

declare dso_local i64 @is_class(i32*, i32) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsval_number(double) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @jsval_bool(i32) #1

declare dso_local i32 @bool_obj_value(i32*) #1

declare dso_local i32 @jsval_obj(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
