; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_eia608.c_eia608_parse_midrowchange.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_eia608.c_eia608_parse_midrowchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eia608_parse_midrowchange(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = and i32 2048, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 30576, %16
  %18 = icmp eq i32 4384, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 14, %20
  %22 = ashr i32 %21, 1
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 1, %24
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %19, %4
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
