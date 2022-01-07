; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_eia608.c_eia608_to_index.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_eia608.c_eia608_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @eia608_to_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eia608_to_index(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  %11 = load i32*, i32** %8, align 8
  store i32 -1, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 32639
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @eia608_is_basicna(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 8
  %21 = sub nsw i32 %20, 32
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 255
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sle i32 32, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 128, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 32
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  store i32 2, i32* %5, align 4
  br label %72

34:                                               ; preds = %27, %18
  store i32 1, i32* %5, align 4
  br label %72

35:                                               ; preds = %4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 2048
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 63487
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @eia608_is_specialna(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 4400
  %47 = add nsw i32 %46, 96
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  store i32 1, i32* %5, align 4
  br label %72

49:                                               ; preds = %35
  %50 = load i32, i32* %6, align 4
  %51 = icmp sle i32 4640, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 4672, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 4640
  %58 = add nsw i32 %57, 112
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  store i32 1, i32* %5, align 4
  br label %72

60:                                               ; preds = %52, %49
  %61 = load i32, i32* %6, align 4
  %62 = icmp sle i32 4896, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 4928, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 4896
  %69 = add nsw i32 %68, 144
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  store i32 1, i32* %5, align 4
  br label %72

71:                                               ; preds = %63, %60
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %66, %55, %44, %34, %30
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @eia608_is_basicna(i32) #1

declare dso_local i64 @eia608_is_specialna(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
