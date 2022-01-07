; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_DeriveKeyRaw.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_DeriveKeyRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_crypto_DeriveKeyRaw(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [152 x i32], align 16
  %13 = alloca [64 x i32], align 16
  %14 = alloca [64 x i32], align 16
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp sge i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %11, align 4
  br i1 %19, label %21, label %26

21:                                               ; preds = %5
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @RtlCopyMemory(i32* %22, i32* %23, i64 %24)
  br label %82

26:                                               ; preds = %5
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %28 = call i32 @RtlFillMemory(i32* %27, i32 256, i8 signext 54)
  %29 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %30 = call i32 @RtlFillMemory(i32* %29, i32 256, i8 signext 92)
  store i64 0, i64* %15, align 8
  br label %31

31:                                               ; preds = %52, %26
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i64, i64* %15, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %35
  %53 = load i64, i64* %15, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %15, align 8
  br label %31

55:                                               ; preds = %31
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %58 = getelementptr inbounds [152 x i32], [152 x i32]* %12, i64 0, i64 0
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @kull_m_crypto_hash(i32 %56, i32* %57, i32 256, i32* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %65 = getelementptr inbounds [152 x i32], [152 x i32]* %12, i64 0, i64 0
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @kull_m_crypto_hash(i32 %63, i32* %64, i32 256, i32* %67, i64 %68)
  store i32 %69, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds [152 x i32], [152 x i32]* %12, i64 0, i64 0
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %8, align 8
  %76 = mul nsw i64 2, %75
  %77 = trunc i64 %76 to i32
  %78 = call i64 @min(i64 %74, i32 %77)
  %79 = call i32 @RtlCopyMemory(i32* %72, i32* %73, i64 %78)
  br label %80

80:                                               ; preds = %71, %62
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %21
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i64) #1

declare dso_local i32 @RtlFillMemory(i32*, i32, i8 signext) #1

declare dso_local i32 @kull_m_crypto_hash(i32, i32*, i32, i32*, i64) #1

declare dso_local i64 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
