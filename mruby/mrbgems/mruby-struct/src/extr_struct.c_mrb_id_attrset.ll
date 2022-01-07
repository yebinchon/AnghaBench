; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_id_attrset.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_id_attrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ONSTACK_ALLOC_MAX = common dso_local global i32 0, align 4
@ONSTACK_STRLEN_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_id_attrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_id_attrset(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @mrb_sym_name_len(i32* %10, i32 %11, i64* %7)
  store i8* %12, i8** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ugt i64 %13, 31
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, 1
  %19 = call i64 @mrb_malloc(i32* %16, i64 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %6, align 8
  br label %23

21:                                               ; preds = %2
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %21, %15
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @memcpy(i8* %24, i8* %25, i64 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 61, i8* %30, align 1
  %31 = load i32*, i32** %3, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 1
  %35 = call i32 @mrb_intern(i32* %31, i8* %32, i64 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load i32*, i32** %3, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @mrb_free(i32* %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %23
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i8* @mrb_sym_name_len(i32*, i32, i64*) #1

declare dso_local i64 @mrb_malloc(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mrb_intern(i32*, i8*, i64) #1

declare dso_local i32 @mrb_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
