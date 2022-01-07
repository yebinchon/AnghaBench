; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_dirname.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_dirname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1
@_MAX_DIR = common dso_local global i32 0, align 4
@_MAX_DRIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @mrb_file_dirname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mrb_file_dirname(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @mrb_get_args(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7)
  %10 = load i32*, i32** %3, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i8* @mrb_str_to_cstr(i32* %10, i8* %11)
  %13 = call i8* @mrb_locale_from_utf8(i8* %12, i32 -1)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @dirname(i8* %14)
  store i8* %15, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @mrb_locale_free(i8* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @mrb_sys_fail(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @mrb_locale_free(i8* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @mrb_str_new_cstr(i32* %25, i8* %26)
  ret i8* %27
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i8**) #1

declare dso_local i8* @mrb_locale_from_utf8(i8*, i32) #1

declare dso_local i8* @mrb_str_to_cstr(i32*, i8*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i8* @mrb_str_new_cstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
