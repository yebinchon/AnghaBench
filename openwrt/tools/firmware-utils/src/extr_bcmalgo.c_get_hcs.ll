; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_bcmalgo.c_get_hcs.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_bcmalgo.c_get_hcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hcs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  store i32* %13, i32** %3, align 8
  store i32 65535, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %53, %1
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 84
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = shl i32 %23, 8
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %47, %17
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %11, align 4
  %31 = xor i32 %29, %30
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %36

35:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = xor i32 %42, 4129
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %11, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %25

50:                                               ; preds = %25
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 65535
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load i32, i32* %6, align 4
  %58 = xor i32 %57, 65535
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 65280
  %61 = ashr i32 %60, 8
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 255
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = shl i32 %64, 8
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
