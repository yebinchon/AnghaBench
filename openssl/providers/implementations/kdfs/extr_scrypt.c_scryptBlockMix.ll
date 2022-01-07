; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_scrypt.c_scryptBlockMix.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_scrypt.c_scryptBlockMix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @scryptBlockMix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scryptBlockMix(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %13, 2
  %15 = sub nsw i32 %14, 1
  %16 = mul nsw i32 %15, 16
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %12, i64 %17
  %19 = call i32 @memcpy(i32* %11, i32* %18, i32 64)
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %58, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %23, 2
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %10, align 8
  %33 = load i32, i32* %31, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %27

42:                                               ; preds = %27
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %44 = call i32 @salsa208_word_specification(i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 %46, 2
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 1
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %47, %51
  %53 = mul nsw i32 %52, 16
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %45, i64 %54
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %57 = call i32 @memcpy(i32* %55, i32* %56, i32 64)
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %21

61:                                               ; preds = %21
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %63 = call i32 @OPENSSL_cleanse(i32* %62, i32 64)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @salsa208_word_specification(i32*) #1

declare dso_local i32 @OPENSSL_cleanse(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
