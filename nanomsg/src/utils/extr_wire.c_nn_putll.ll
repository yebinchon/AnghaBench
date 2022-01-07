; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_wire.c_nn_putll.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_wire.c_nn_putll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_putll(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = ashr i32 %5, 56
  %7 = and i32 %6, 255
  %8 = sext i32 %7 to i64
  %9 = load i64*, i64** %3, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 %8, i64* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 48
  %13 = and i32 %12, 255
  %14 = sext i32 %13 to i64
  %15 = load i64*, i64** %3, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 40
  %19 = and i32 %18, 255
  %20 = sext i32 %19 to i64
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 32
  %25 = and i32 %24, 255
  %26 = sext i32 %25 to i64
  %27 = load i64*, i64** %3, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 3
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 24
  %31 = and i32 %30, 255
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %3, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 4
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %3, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 5
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** %3, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 6
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 255
  %49 = sext i32 %48 to i64
  %50 = load i64*, i64** %3, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 7
  store i64 %49, i64* %51, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
