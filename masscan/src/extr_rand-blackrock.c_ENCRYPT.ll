; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rand-blackrock.c_ENCRYPT.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rand-blackrock.c_ENCRYPT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @ENCRYPT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ENCRYPT(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %22

22:                                               ; preds = %51, %5
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load i32, i32* %14, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @READ(i32 %32, i32 %33, i32 %34)
  %36 = add nsw i32 %31, %35
  %37 = load i32, i32* %8, align 4
  %38 = srem i32 %36, %37
  store i32 %38, i32* %15, align 4
  br label %48

39:                                               ; preds = %26
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @READ(i32 %41, i32 %42, i32 %43)
  %45 = add nsw i32 %40, %44
  %46 = load i32, i32* %9, align 4
  %47 = srem i32 %45, %46
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %39, %30
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %14, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %14, align 4
  br label %22

54:                                               ; preds = %22
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %12, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %6, align 4
  br label %70

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %13, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %64, %58
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @READ(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
