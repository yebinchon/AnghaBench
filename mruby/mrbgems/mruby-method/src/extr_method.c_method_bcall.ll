; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_method_bcall.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_method_bcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"_proc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"_name\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_recv\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"_owner\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"o*&\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @method_bcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_bcall(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_intern_lit(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @mrb_iv_get(i32* %12, i32 %13, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @mrb_intern_lit(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @mrb_iv_get(i32* %17, i32 %18, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @mrb_intern_lit(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @mrb_iv_get(i32* %22, i32 %23, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @mrb_intern_lit(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @mrb_iv_get(i32* %27, i32 %28, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @mrb_get_args(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %7, i32** %10, i32* %9, i32* %11)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @bind_check(i32* %34, i32 %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mrb_class_ptr(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @mcall(i32* %38, i32 %39, i32 %40, i32 %41, i32 %43, i32 %44, i32* %45, i32 %46)
  ret i32 %47
}

declare dso_local i32 @mrb_iv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32**, i32*, i32*) #1

declare dso_local i32 @bind_check(i32*, i32, i32) #1

declare dso_local i32 @mcall(i32*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mrb_class_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
