; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-sprintf/src/extr_sprintf.c_check_name_arg.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-sprintf/src/extr_sprintf.c_check_name_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"named%l after unnumbered(%d)\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"named%l after numbered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i64)* @check_name_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_name_arg(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i32*, i32, i8*, i8*, i64, ...) @mrb_raisef(i32* %12, i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %14, i64 %15, i32 %16)
  br label %18

18:                                               ; preds = %11, %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 (i32*, i32, i8*, i8*, i64, ...) @mrb_raisef(i32* %22, i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %24, i64 %25)
  br label %27

27:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
