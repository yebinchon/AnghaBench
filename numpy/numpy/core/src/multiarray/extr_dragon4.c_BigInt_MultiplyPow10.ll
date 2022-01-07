; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_BigInt_MultiplyPow10.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_BigInt_MultiplyPow10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_PowerOf10_U32 = common dso_local global i32* null, align 8
@g_PowerOf10_Big = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @BigInt_MultiplyPow10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BigInt_MultiplyPow10(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 8192
  %14 = zext i1 %13 to i32
  %15 = call i32 @DEBUG_ASSERT(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @bitmask_u32(i32 3)
  %18 = and i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** @g_PowerOf10_U32, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BigInt_Multiply_int(i32* %22, i32* %23, i32 %28)
  %30 = load i32*, i32** %6, align 8
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %4, align 8
  store i32* %31, i32** %8, align 8
  br label %35

32:                                               ; preds = %3
  %33 = load i32*, i32** %4, align 8
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %8, align 8
  br label %35

35:                                               ; preds = %32, %21
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 3
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %56, %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** @g_PowerOf10_Big, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @BigInt_Multiply(i32* %46, i32* %47, i32* %51)
  %53 = load i32*, i32** %7, align 8
  store i32* %53, i32** %11, align 8
  %54 = load i32*, i32** %8, align 8
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %11, align 8
  store i32* %55, i32** %8, align 8
  br label %56

56:                                               ; preds = %45, %41
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %5, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %38

61:                                               ; preds = %38
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = icmp ne i32* %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @BigInt_Copy(i32* %66, i32* %67)
  br label %69

69:                                               ; preds = %65, %61
  ret void
}

declare dso_local i32 @DEBUG_ASSERT(i32) #1

declare dso_local i32 @bitmask_u32(i32) #1

declare dso_local i32 @BigInt_Multiply_int(i32*, i32*, i32) #1

declare dso_local i32 @BigInt_Multiply(i32*, i32*, i32*) #1

declare dso_local i32 @BigInt_Copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
