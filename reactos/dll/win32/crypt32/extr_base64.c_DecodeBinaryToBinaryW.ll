; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_base64.c_DecodeBinaryToBinaryW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_base64.c_DecodeBinaryToBinaryW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*, i32*)* @DecodeBinaryToBinaryW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeBinaryToBinaryW(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %6
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %10, align 8
  store i32 %23, i32* %24, align 4
  br label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %22
  br label %47

30:                                               ; preds = %6
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memcpy(i32* %34, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %33, %30
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %29
  %48 = load i32, i32* %13, align 4
  ret i32 %48
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
