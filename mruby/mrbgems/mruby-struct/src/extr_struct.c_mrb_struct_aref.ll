; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_struct_aref.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_struct_aref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"no member '%v' in struct\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_struct_aref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_struct_aref(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @mrb_get_args(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @mrb_string_p(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @mrb_check_intern_str(i32* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @mrb_nil_p(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @mrb_intern_str(i32* %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @mrb_name_error(i32* %21, i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %20, %13
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @mrb_symbol_p(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mrb_symbol(i32 %36)
  %38 = call i32 @struct_aref_sym(i32* %34, i32 %35, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %46

39:                                               ; preds = %29
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @mrb_int(i32* %42, i32 %43)
  %45 = call i32 @struct_aref_int(i32* %40, i32 %41, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %39, %33
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i64 @mrb_string_p(i32) #1

declare dso_local i32 @mrb_check_intern_str(i32*, i32) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_name_error(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_intern_str(i32*, i32) #1

declare dso_local i64 @mrb_symbol_p(i32) #1

declare dso_local i32 @struct_aref_sym(i32*, i32, i32) #1

declare dso_local i32 @mrb_symbol(i32) #1

declare dso_local i32 @struct_aref_int(i32*, i32, i32) #1

declare dso_local i32 @mrb_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
