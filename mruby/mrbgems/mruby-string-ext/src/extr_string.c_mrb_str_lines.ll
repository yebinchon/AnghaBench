; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_lines.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_str_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_lines(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @RSTRING_PTR(i32 %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @RSTRING_LEN(i32 %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8* %19, i8** %11, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @mrb_ary_new(i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @mrb_gc_arena_save(i32* %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %52, %2
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** %10, align 8
  br label %30

30:                                               ; preds = %41, %28
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 10
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i1 [ false, %30 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  br label %30

44:                                               ; preds = %39
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  store i64 %57, i64* %7, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @mrb_str_new(i32* %60, i8* %61, i64 %62)
  %64 = call i32 @mrb_ary_push(i32* %58, i32 %59, i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @mrb_gc_arena_restore(i32* %65, i32 %66)
  br label %24

68:                                               ; preds = %24
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_ary_new(i32*) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i64) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
