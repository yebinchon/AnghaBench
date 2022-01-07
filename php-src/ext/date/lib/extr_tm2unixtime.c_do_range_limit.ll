; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_tm2unixtime.c_do_range_limit.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_tm2unixtime.c_do_range_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*)* @do_range_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_range_limit(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %5
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %16, %18
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* %8, align 4
  %22 = sdiv i32 %20, %21
  %23 = add nsw i32 %22, 1
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %28, %30
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %8, align 4
  %34 = sdiv i32 %32, %33
  %35 = add nsw i32 %34, 1
  %36 = mul nsw i32 %27, %35
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %15, %5
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sdiv i32 %47, %48
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sdiv i32 %55, %56
  %58 = mul nsw i32 %53, %57
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %45, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
