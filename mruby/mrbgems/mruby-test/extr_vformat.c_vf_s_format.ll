; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-test/extr_vformat.c_vf_s_format.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-test/extr_vformat.c_vf_s_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"S|oo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @vf_s_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf_s_format(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = call i32 @mrb_get_args(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %11, i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @RSTRING_CSTR(i32* %15, i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @VF_FORMAT_INIT(i32 %18)
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %32 [
    i32 1, label %21
    i32 2, label %24
    i32 3, label %28
  ]

21:                                               ; preds = %2
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @VF_FORMAT0(i8* %22)
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %27 = call i32 @VF_FORMAT1(i8* %25, i32* %26)
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %2
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %31 = call i32 @VF_FORMAT2(i8* %29, i32* %30)
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %2
  %33 = call i32 (...) @mrb_nil_value()
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %28, %24, %21
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i8* @RSTRING_CSTR(i32*, i32) #1

declare dso_local i32 @VF_FORMAT_INIT(i32) #1

declare dso_local i32 @VF_FORMAT0(i8*) #1

declare dso_local i32 @VF_FORMAT1(i8*, i32*) #1

declare dso_local i32 @VF_FORMAT2(i8*, i32*) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
