; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_string.c_mrb_str_aref.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_string.c_mrb_str_aref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @mrb_str_aref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_aref(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @str_convert_range(i32* %12, i32 %13, i32 %14, i32 %15, i32* %10, i32* %11)
  switch i32 %16, label %59 [
    i32 129, label %17
    i32 130, label %23
    i32 131, label %44
    i32 128, label %58
  ]

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @str_subseq(i32* %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %61

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @str_substr(i32* %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @mrb_undef_p(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @mrb_nil_p(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @RSTRING_LEN(i32 %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (...) @mrb_nil_value()
  store i32 %41, i32* %5, align 4
  br label %61

42:                                               ; preds = %36, %32, %23
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %5, align 4
  br label %61

44:                                               ; preds = %4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @mrb_string_p(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @mrb_str_dup(i32* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %61

52:                                               ; preds = %44
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @mrb_str_byte_subseq(i32* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %61

58:                                               ; preds = %4
  br label %59

59:                                               ; preds = %4, %58
  %60 = call i32 (...) @mrb_nil_value()
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %52, %48, %42, %40, %17
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @str_convert_range(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @str_subseq(i32*, i32, i32, i32) #1

declare dso_local i32 @str_substr(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_undef_p(i32) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_string_p(i32) #1

declare dso_local i32 @mrb_str_dup(i32*, i32) #1

declare dso_local i32 @mrb_str_byte_subseq(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
