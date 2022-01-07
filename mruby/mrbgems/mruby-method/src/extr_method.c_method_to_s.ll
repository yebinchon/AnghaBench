; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_method_to_s.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_method_to_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"_owner\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_klass\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_name\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"#<\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")#\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @method_to_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_to_s(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.RClass*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_intern_lit(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @mrb_iv_get(i32* %10, i32 %11, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @mrb_intern_lit(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @mrb_iv_get(i32* %15, i32 %16, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @mrb_intern_lit(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @mrb_iv_get(i32* %20, i32 %21, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @mrb_str_new_lit(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @mrb_obj_classname(i32* %29, i32 %30)
  %32 = call i32 @mrb_str_cat_cstr(i32* %27, i32 %28, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @mrb_str_cat_lit(i32* %33, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.RClass* @mrb_class_ptr(i32 %36)
  store %struct.RClass* %37, %struct.RClass** %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.RClass* @mrb_class_ptr(i32 %38)
  %40 = load %struct.RClass*, %struct.RClass** %9, align 8
  %41 = icmp eq %struct.RClass* %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %2
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @mrb_str_concat(i32* %43, i32 %44, i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @mrb_str_cat_lit(i32* %47, i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @mrb_str_concat(i32* %50, i32 %51, i32 %52)
  br label %75

54:                                               ; preds = %2
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.RClass*, %struct.RClass** %9, align 8
  %59 = call i32 @mrb_class_name(i32* %57, %struct.RClass* %58)
  %60 = call i32 @mrb_str_cat_cstr(i32* %55, i32 %56, i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @mrb_str_cat_lit(i32* %61, i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @mrb_str_concat(i32* %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @mrb_str_cat_lit(i32* %68, i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @mrb_str_concat(i32* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %54, %42
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @mrb_str_cat_lit(i32* %76, i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @mrb_iv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i32 @mrb_str_cat_cstr(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_classname(i32*, i32) #1

declare dso_local i32 @mrb_str_cat_lit(i32*, i32, i8*) #1

declare dso_local %struct.RClass* @mrb_class_ptr(i32) #1

declare dso_local i32 @mrb_str_concat(i32*, i32, i32) #1

declare dso_local i32 @mrb_class_name(i32*, %struct.RClass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
