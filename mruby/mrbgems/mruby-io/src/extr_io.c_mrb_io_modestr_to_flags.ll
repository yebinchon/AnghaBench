; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_modestr_to_flags.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_modestr_to_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FMODE_READABLE = common dso_local global i32 0, align 4
@FMODE_WRITABLE = common dso_local global i32 0, align 4
@FMODE_CREATE = common dso_local global i32 0, align 4
@FMODE_TRUNC = common dso_local global i32 0, align 4
@FMODE_APPEND = common dso_local global i32 0, align 4
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"illegal access mode %s\00", align 1
@FMODE_BINMODE = common dso_local global i32 0, align 4
@FMODE_READWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @mrb_io_modestr_to_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_io_modestr_to_flags(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %6, align 8
  %10 = load i8, i8* %8, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %32 [
    i32 114, label %12
    i32 119, label %16
    i32 97, label %24
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @FMODE_READABLE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load i32, i32* @FMODE_WRITABLE, align 4
  %18 = load i32, i32* @FMODE_CREATE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FMODE_TRUNC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load i32, i32* @FMODE_WRITABLE, align 4
  %26 = load i32, i32* @FMODE_APPEND, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FMODE_CREATE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @mrb_raisef(i32* %33, i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %32, %24, %16, %12
  br label %38

38:                                               ; preds = %61, %37
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  %45 = load i8, i8* %43, align 1
  %46 = sext i8 %45 to i32
  switch i32 %46, label %56 [
    i32 98, label %47
    i32 43, label %51
    i32 58, label %55
  ]

47:                                               ; preds = %42
  %48 = load i32, i32* @FMODE_BINMODE, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %61

51:                                               ; preds = %42
  %52 = load i32, i32* @FMODE_READWRITE, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %61

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %42, %55
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @mrb_raisef(i32* %57, i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %56, %51, %47
  br label %38

62:                                               ; preds = %38
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
