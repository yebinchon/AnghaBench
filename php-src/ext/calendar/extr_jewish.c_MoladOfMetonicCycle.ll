; ModuleID = '/home/carl/AnghaBench/php-src/ext/calendar/extr_jewish.c_MoladOfMetonicCycle.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/calendar/extr_jewish.c_MoladOfMetonicCycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEW_MOON_OF_CREATION = common dso_local global i32 0, align 4
@HALAKIM_PER_METONIC_CYCLE = common dso_local global i32 0, align 4
@HALAKIM_PER_DAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @MoladOfMetonicCycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MoladOfMetonicCycle(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @NEW_MOON_OF_CREATION, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @HALAKIM_PER_METONIC_CYCLE, align 4
  %14 = and i32 %13, 65535
  %15 = mul nsw i32 %12, %14
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 16
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @HALAKIM_PER_METONIC_CYCLE, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 65535
  %24 = mul nsw i32 %20, %23
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @HALAKIM_PER_DAY, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @HALAKIM_PER_DAY, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 65535
  %39 = or i32 %36, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @HALAKIM_PER_DAY, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @HALAKIM_PER_DAY, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %49, %50
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
