; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_BigInt_Pow10.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_BigInt_Pow10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_PowerOf10_U32 = common dso_local global i32* null, align 8
@g_PowerOf10_Big = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @BigInt_Pow10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BigInt_Pow10(i32* %0, i32 %1, i32* %2) #0 {
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
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 8192
  %16 = zext i1 %15 to i32
  %17 = call i32 @DEBUG_ASSERT(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @bitmask_u32(i32 3)
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** @g_PowerOf10_U32, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BigInt_Set_uint32(i32* %21, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 3
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %48, %3
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** @g_PowerOf10_Big, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @BigInt_Multiply(i32* %38, i32* %39, i32* %43)
  %45 = load i32*, i32** %7, align 8
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %8, align 8
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %11, align 8
  store i32* %47, i32** %8, align 8
  br label %48

48:                                               ; preds = %37, %33
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = icmp ne i32* %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @BigInt_Copy(i32* %58, i32* %59)
  br label %61

61:                                               ; preds = %57, %53
  ret void
}

declare dso_local i32 @DEBUG_ASSERT(i32) #1

declare dso_local i32 @bitmask_u32(i32) #1

declare dso_local i32 @BigInt_Set_uint32(i32*, i32) #1

declare dso_local i32 @BigInt_Multiply(i32*, i32*, i32*) #1

declare dso_local i32 @BigInt_Copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
