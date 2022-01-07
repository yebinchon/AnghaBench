; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/brcm63xx/image/lzma-loader/src/extr_cache.c_flush_cache.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/brcm63xx/image/lzma-loader/src/extr_cache.c_flush_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_CACHELINE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"blasting from 0x%08x to 0x%08x (0x%08x - 0x%08x)\0A\00", align 1
@Hit_Writeback_Inv_D = common dso_local global i32 0, align 4
@Hit_Invalidate_I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_cache(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @CONFIG_CACHELINE_SIZE, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %5, align 8
  %11 = sub i64 %10, 1
  %12 = xor i64 %11, -1
  %13 = and i64 %9, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = add i64 %14, %15
  %17 = load i64, i64* %5, align 8
  %18 = sub i64 %17, 1
  %19 = add i64 %16, %18
  %20 = load i64, i64* %5, align 8
  %21 = sub i64 %20, 1
  %22 = xor i64 %21, -1
  %23 = and i64 %19, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %25, i64 %26, i64 %27)
  br label %29

29:                                               ; preds = %2, %40
  %30 = load i32, i32* @Hit_Writeback_Inv_D, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @cache_op(i32 %30, i64 %31)
  %33 = load i32, i32* @Hit_Invalidate_I, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @cache_op(i32 %33, i64 %34)
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %44

40:                                               ; preds = %29
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %6, align 8
  br label %29

44:                                               ; preds = %39
  ret void
}

declare dso_local i32 @printf(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @cache_op(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
