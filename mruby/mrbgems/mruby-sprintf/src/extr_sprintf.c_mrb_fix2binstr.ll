; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-sprintf/src/extr_sprintf.c_mrb_fix2binstr.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-sprintf/src/extr_sprintf.c_mrb_fix2binstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid radix %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@mrb_digitmap = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @mrb_fix2binstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_fix2binstr(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [66 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 0
  %14 = getelementptr inbounds i8, i8* %13, i64 66
  store i8* %14, i8** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @mrb_fixnum(i32 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mrb_raisef(i32* %22, i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @mrb_str_new_lit(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %4, align 4
  br label %82

32:                                               ; preds = %26
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %34, i8** %9, align 8
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %45, %32
  %36 = load i8*, i8** @mrb_digitmap, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = srem i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %44, i8** %9, align 8
  store i8 %42, i8* %44, align 1
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sdiv i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %35, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %10, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @remove_sign_bits(i8* %54, i32 %55)
  store i8* %56, i8** %9, align 8
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %61 [
    i32 16, label %58
    i32 8, label %59
    i32 2, label %60
  ]

58:                                               ; preds = %53
  store i8 102, i8* %12, align 1
  br label %62

59:                                               ; preds = %53
  store i8 55, i8* %12, align 1
  br label %62

60:                                               ; preds = %53
  store i8 49, i8* %12, align 1
  br label %62

61:                                               ; preds = %53
  store i8 0, i8* %12, align 1
  br label %62

62:                                               ; preds = %61, %60, %59, %58
  %63 = load i8, i8* %12, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* %12, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i8, i8* %12, align 1
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %76, i8** %9, align 8
  store i8 %74, i8* %76, align 1
  br label %77

77:                                               ; preds = %73, %66, %62
  br label %78

78:                                               ; preds = %77, %50
  %79 = load i32*, i32** %5, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @mrb_str_new_cstr(i32* %79, i8* %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %29
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i8* @remove_sign_bits(i8*, i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
