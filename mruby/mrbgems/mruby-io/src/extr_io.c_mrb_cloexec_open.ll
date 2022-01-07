; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_cloexec_open.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_cloexec_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@O_CLOEXEC = common dso_local global i64 0, align 8
@O_NOINHERIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_cloexec_open(i32* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @mrb_locale_from_utf8(i8* %13, i32 -1)
  store i8* %14, i8** %11, align 8
  br label %15

15:                                               ; preds = %29, %4
  %16 = load i8*, i8** %11, align 8
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @open(i8* %16, i32 %18, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %42

24:                                               ; preds = %15
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @errno, align 4
  switch i32 %28, label %33 [
    i32 128, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %27, %27
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @mrb_garbage_collect(i32* %30)
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %10, align 4
  br label %15

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @mrb_format(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = call i32 @RSTRING_CSTR(i32* %36, i32 %39)
  %41 = call i32 @mrb_sys_fail(i32* %35, i32 %40)
  br label %42

42:                                               ; preds = %34, %15
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @mrb_locale_free(i8* %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mrb_fd_cloexec(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i8* @mrb_locale_from_utf8(i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @mrb_garbage_collect(i32*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i32) #1

declare dso_local i32 @RSTRING_CSTR(i32*, i32) #1

declare dso_local i32 @mrb_format(i32*, i8*, i8*) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

declare dso_local i32 @mrb_fd_cloexec(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
