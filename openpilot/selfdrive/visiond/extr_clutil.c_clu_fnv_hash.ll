; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/visiond/extr_clutil.c_clu_fnv_hash.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/visiond/extr_clutil.c_clu_fnv_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clu_fnv_hash(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 -2078137563, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32* %11, i32** %7, align 8
  br label %12

12:                                               ; preds = %16, %2
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ult i32* %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %6, align 8
  %19 = load i32, i32* %17, align 4
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 4
  %26 = add nsw i32 %23, %25
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 5
  %29 = add nsw i32 %26, %28
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %30, 7
  %32 = add nsw i32 %29, %31
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 8
  %35 = add nsw i32 %32, %34
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 40
  %38 = add nsw i32 %35, %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %12

41:                                               ; preds = %12
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
