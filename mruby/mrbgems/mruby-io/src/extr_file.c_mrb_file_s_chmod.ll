; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_s_chmod.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_s_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"i*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_file_s_chmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_file_s_chmod(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_gc_arena_save(i32* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_get_args(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %5, i32** %8, i64* %6)
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %45, %2
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @RSTRING_CSTR(i32* %21, i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i8* @mrb_locale_from_utf8(i8* %27, i32 -1)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @CHMOD(i8* %29, i64 %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @mrb_locale_free(i8* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @mrb_sys_fail(i32* %36, i8* %37)
  br label %39

39:                                               ; preds = %33, %20
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @mrb_locale_free(i8* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mrb_gc_arena_restore(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %16

48:                                               ; preds = %16
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @mrb_fixnum_value(i64 %49)
  ret i32 %50
}

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i32**, i64*) #1

declare dso_local i8* @RSTRING_CSTR(i32*, i32) #1

declare dso_local i8* @mrb_locale_from_utf8(i8*, i32) #1

declare dso_local i32 @CHMOD(i8*, i64) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
