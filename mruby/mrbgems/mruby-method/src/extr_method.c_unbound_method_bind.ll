; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_unbound_method_bind.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_unbound_method_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RObject = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"_owner\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"_name\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_proc\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"_klass\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"_recv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @unbound_method_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unbound_method_bind(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RObject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @mrb_intern_lit(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @mrb_iv_get(i32* %11, i32 %12, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @mrb_intern_lit(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @mrb_iv_get(i32* %16, i32 %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @mrb_intern_lit(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @mrb_iv_get(i32* %21, i32 %22, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @mrb_intern_lit(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @mrb_iv_get(i32* %26, i32 %27, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @mrb_get_args(i32* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @bind_check(i32* %33, i32 %34, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @mrb_class_get(i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %40 = call %struct.RObject* @method_object_alloc(i32* %37, i32 %39)
  store %struct.RObject* %40, %struct.RObject** %5, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.RObject*, %struct.RObject** %5, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @mrb_intern_lit(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mrb_obj_iv_set(i32* %41, %struct.RObject* %42, i32 %44, i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.RObject*, %struct.RObject** %5, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @mrb_intern_lit(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @mrb_obj_iv_set(i32* %47, %struct.RObject* %48, i32 %50, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.RObject*, %struct.RObject** %5, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @mrb_intern_lit(i32* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @mrb_obj_iv_set(i32* %53, %struct.RObject* %54, i32 %56, i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.RObject*, %struct.RObject** %5, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @mrb_intern_lit(i32* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @mrb_obj_iv_set(i32* %59, %struct.RObject* %60, i32 %62, i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.RObject*, %struct.RObject** %5, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @mrb_intern_lit(i32* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @mrb_obj_iv_set(i32* %65, %struct.RObject* %66, i32 %68, i32 %69)
  %71 = load %struct.RObject*, %struct.RObject** %5, align 8
  %72 = call i32 @mrb_obj_value(%struct.RObject* %71)
  ret i32 %72
}

declare dso_local i32 @mrb_iv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @bind_check(i32*, i32, i32) #1

declare dso_local %struct.RObject* @method_object_alloc(i32*, i32) #1

declare dso_local i32 @mrb_class_get(i32*, i8*) #1

declare dso_local i32 @mrb_obj_iv_set(i32*, %struct.RObject*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RObject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
