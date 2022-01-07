; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_eia608.c_eia608_parse_preamble.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_eia608.c_eia608_parse_preamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eia608_row_map = common dso_local global i32* null, align 8
@eia608_style_white = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eia608_parse_preamble(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load i32*, i32** @eia608_row_map, align 8
  %14 = load i32, i32* %7, align 4
  %15 = and i32 1792, %14
  %16 = ashr i32 %15, 7
  %17 = load i32, i32* %7, align 4
  %18 = and i32 32, %17
  %19 = ashr i32 %18, 5
  %20 = or i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %13, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 2048, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 1, %32
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 16, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %6
  %39 = load i32, i32* @eia608_style_white, align 4
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 14, %41
  %43 = ashr i32 %42, 1
  %44 = mul nsw i32 4, %43
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  br label %52

46:                                               ; preds = %6
  %47 = load i32, i32* %7, align 4
  %48 = and i32 14, %47
  %49 = ashr i32 %48, 1
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %38
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
