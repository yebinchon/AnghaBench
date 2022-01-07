; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_aesCTSDecrypt.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_aesCTSDecrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@KP_IV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_crypto_aesCTSDecrypt(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [32 x i32], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 16
  br i1 %18, label %19, label %132

19:                                               ; preds = %4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @CryptDuplicateKey(i32 %20, i32* null, i32 0, i32* %15)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %131

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @KP_IV, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @CryptSetKeyParam(i32 %24, i32 %25, i32* %26, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %128

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 15
  %32 = ashr i32 %31, 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 15
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 15
  br label %40

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 16, %39 ]
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sle i32 %42, 2
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %47, 2
  %49 = load i64, i64* @FALSE, align 8
  %50 = call i64 @kull_m_crypto_aesBlockEncryptDecrypt(i32 %45, i32* %46, i32 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %127

52:                                               ; preds = %44, %40
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %54, 2
  %56 = mul nsw i32 16, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  store i32* %58, i32** %14, align 8
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 16
  %63 = call i32 @RtlCopyMemory(i32* %59, i32* %60, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 16
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %66
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 16, %68
  %70 = call i32 @RtlZeroMemory(i32* %67, i32 %69)
  %71 = load i32, i32* %15, align 4
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %73 = load i64, i64* @FALSE, align 8
  %74 = call i64 @kull_m_crypto_aesBlockEncryptDecrypt(i32 %71, i32* %72, i32 1, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %126

76:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 16
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 16
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = xor i32 %89, %85
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %80
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %77

94:                                               ; preds = %77
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 16
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %97
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %100
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 16, %102
  %104 = call i32 @RtlCopyMemory(i32* %98, i32* %101, i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %107 = getelementptr inbounds i32, i32* %106, i64 16
  %108 = load i64, i64* @FALSE, align 8
  %109 = call i64 @kull_m_crypto_aesBlockEncryptDecrypt(i32 %105, i32* %107, i32 1, i64 %108)
  store i64 %109, i64* %9, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %94
  %112 = load i32*, i32** %14, align 8
  %113 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %114 = getelementptr inbounds i32, i32* %113, i64 16
  %115 = call i32 @RtlCopyMemory(i32* %112, i32* %114, i32 16)
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %10, align 4
  %118 = mul nsw i32 16, %117
  %119 = sub nsw i32 %118, 16
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @RtlCopyMemory(i32* %121, i32* %122, i32 %123)
  br label %125

125:                                              ; preds = %111, %94
  br label %126

126:                                              ; preds = %125, %52
  br label %127

127:                                              ; preds = %126, %44
  br label %128

128:                                              ; preds = %127, %23
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @CryptDestroyKey(i32 %129)
  br label %131

131:                                              ; preds = %128, %19
  br label %141

132:                                              ; preds = %4
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %133, 16
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32, i32* %5, align 4
  %137 = load i32*, i32** %6, align 8
  %138 = load i64, i64* @FALSE, align 8
  %139 = call i64 @kull_m_crypto_aesBlockEncryptDecrypt(i32 %136, i32* %137, i32 1, i64 %138)
  store i64 %139, i64* %9, align 8
  br label %140

140:                                              ; preds = %135, %132
  br label %141

141:                                              ; preds = %140, %131
  %142 = load i64, i64* %9, align 8
  ret i64 %142
}

declare dso_local i64 @CryptDuplicateKey(i32, i32*, i32, i32*) #1

declare dso_local i64 @CryptSetKeyParam(i32, i32, i32*, i32) #1

declare dso_local i64 @kull_m_crypto_aesBlockEncryptDecrypt(i32, i32*, i32, i64) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
