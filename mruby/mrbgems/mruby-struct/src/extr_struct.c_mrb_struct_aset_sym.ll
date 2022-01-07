; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_struct_aset_sym.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_struct_aset_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"no member '%n' in struct\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i32)* @mrb_struct_aset_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_struct_aset_sym(i32* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @struct_members(i32* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @RARRAY_LEN(i32 %18)
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32* @RSTRUCT_PTR(i32 %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32* @RARRAY_PTR(i32 %22)
  store i32* %23, i32** %12, align 8
  store i64 0, i64* %13, align 8
  br label %24

24:                                               ; preds = %46, %4
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i32*, i32** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @mrb_symbol(i32 %32)
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @mrb_struct_modify(i32* %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %5, align 4
  br label %55

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %13, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %13, align 8
  br label %24

49:                                               ; preds = %24
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @mrb_name_error(i32* %50, i64 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %49, %36
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @struct_members(i32*, i32) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i32* @RSTRUCT_PTR(i32) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i64 @mrb_symbol(i32) #1

declare dso_local i32 @mrb_struct_modify(i32*, i32) #1

declare dso_local i32 @mrb_name_error(i32*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
