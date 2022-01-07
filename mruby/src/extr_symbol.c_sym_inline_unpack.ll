; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_symbol.c_sym_inline_unpack.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_symbol.c_sym_inline_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYMBOL_INLINE_SHIFT = common dso_local global i32 0, align 4
@pack_table = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32*)* @sym_inline_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sym_inline_unpack(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @SYMBOL_INLINE_LOWER_P(i32 %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 5, i32 6
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @SYMBOL_INLINE_P(i32 %15)
  %17 = call i32 @mrb_assert(i32 %16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %49, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sdiv i32 30, %20
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* @SYMBOL_INLINE_SHIFT, align 4
  %29 = add nsw i32 %27, %28
  %30 = ashr i32 %24, %29
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 1, %31
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %52

38:                                               ; preds = %23
  %39 = load i8*, i8** @pack_table, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 %44, i8* %48, align 1
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %18

52:                                               ; preds = %37, %18
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i8*, i8** %5, align 8
  ret i8* %63
}

declare dso_local i64 @SYMBOL_INLINE_LOWER_P(i32) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @SYMBOL_INLINE_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
