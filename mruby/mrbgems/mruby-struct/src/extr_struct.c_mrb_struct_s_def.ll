; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_struct_s_def.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_struct_s_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"*&\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_struct_s_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_struct_s_def(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = call i32 (...) @mrb_nil_value()
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @mrb_get_args(i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32** %14, i64* %15, i32* %11)
  %19 = load i64, i64* %15, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %24 = call i32 @mrb_raise(i32* %22, i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %90

25:                                               ; preds = %2
  %26 = load i32*, i32** %14, align 8
  store i32* %26, i32** %8, align 8
  %27 = load i64, i64* %15, align 8
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %15, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32*, i32** %14, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @mrb_symbol_p(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 (...) @mrb_nil_value()
  store i32 %38, i32* %6, align 4
  br label %44

39:                                               ; preds = %30
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %39, %37
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32*, i32** %4, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @mrb_ary_new_from_values(i32* %46, i64 %47, i32* %48)
  store i32 %49, i32* %7, align 4
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %68, %45
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32* @RARRAY_PTR(i32 %56)
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mrb_obj_to_sym(i32* %55, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @mrb_symbol_value(i32 %65)
  %67 = call i32 @mrb_ary_set(i32* %62, i32 %63, i64 %64, i32 %66)
  br label %68

68:                                               ; preds = %54
  %69 = load i64, i64* %10, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %50

71:                                               ; preds = %50
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @mrb_class_ptr(i32 %75)
  %77 = call i32 @make_struct(i32* %72, i32 %73, i32 %74, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @mrb_nil_p(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %71
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @mrb_class_ptr(i32 %85)
  %87 = call i32 @mrb_yield_with_class(i32* %82, i32 %83, i32 1, i32* %12, i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %81, %71
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %3, align 4
  br label %92

90:                                               ; preds = %21
  %91 = call i32 (...) @mrb_nil_value()
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32**, i64*, i32*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i64 @mrb_symbol_p(i32) #1

declare dso_local i32 @mrb_ary_new_from_values(i32*, i64, i32*) #1

declare dso_local i32 @mrb_obj_to_sym(i32*, i32) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i32 @mrb_ary_set(i32*, i32, i64, i32) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

declare dso_local i32 @make_struct(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_class_ptr(i32) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_yield_with_class(i32*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
