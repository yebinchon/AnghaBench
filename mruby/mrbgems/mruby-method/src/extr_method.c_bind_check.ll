; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_bind_check.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_bind_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"singleton method called for a different object\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"bind argument must be an instance of %v\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @bind_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bind_check(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @mrb_module_p(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @mrb_class_ptr(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @mrb_obj_class(i32* %13, i32 %14)
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @mrb_class_ptr(i32 %20)
  %22 = call i32 @mrb_obj_is_kind_of(i32* %18, i32 %19, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @mrb_sclass_p(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @E_TYPE_ERROR, align 4
  %31 = call i32 @mrb_raise(i32* %29, i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %37

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @E_TYPE_ERROR, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @mrb_raisef(i32* %33, i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %28
  br label %38

38:                                               ; preds = %37, %17, %10, %3
  ret void
}

declare dso_local i32 @mrb_module_p(i32) #1

declare dso_local i64 @mrb_class_ptr(i32) #1

declare dso_local i64 @mrb_obj_class(i32*, i32) #1

declare dso_local i32 @mrb_obj_is_kind_of(i32*, i32, i64) #1

declare dso_local i64 @mrb_sclass_p(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
