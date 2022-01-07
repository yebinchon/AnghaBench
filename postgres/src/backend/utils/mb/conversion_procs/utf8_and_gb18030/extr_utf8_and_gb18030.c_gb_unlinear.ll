; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/utf8_and_gb18030/extr_utf8_and_gb18030.c_gb_unlinear.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/utf8_and_gb18030/extr_utf8_and_gb18030.c_gb_unlinear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gb_unlinear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_unlinear(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sdiv i32 %7, 12600
  %9 = add nsw i32 129, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = sdiv i32 %10, 1260
  %12 = srem i32 %11, 10
  %13 = add nsw i32 48, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sdiv i32 %14, 10
  %16 = srem i32 %15, 126
  %17 = add nsw i32 129, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %2, align 4
  %19 = srem i32 %18, 10
  %20 = add nsw i32 48, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %3, align 4
  %22 = shl i32 %21, 24
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %22, %24
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %25, %27
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %28, %29
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
