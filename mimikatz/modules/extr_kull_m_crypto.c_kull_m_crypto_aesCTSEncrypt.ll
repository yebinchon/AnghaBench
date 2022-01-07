; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_aesCTSEncrypt.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_aesCTSEncrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@KP_IV = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_crypto_aesCTSEncrypt(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i32], align 16
  %13 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 16
  br i1 %16, label %17, label %87

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @KP_IV, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @CryptSetKeyParam(i32 %18, i32 %19, i32* %20, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %86

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 15
  %26 = ashr i32 %25, 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 15
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 15
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 16, %33 ]
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp sle i32 %36, 2
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, 2
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i64 @kull_m_crypto_aesBlockEncryptDecrypt(i32 %39, i32* %40, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %85

46:                                               ; preds = %38, %34
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %48, 2
  %50 = mul nsw i32 16, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32* %52, i32** %13, align 8
  %53 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 16
  %57 = call i32 @RtlCopyMemory(i32* %53, i32* %54, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 16
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %60
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 16, %62
  %64 = call i32 @RtlZeroMemory(i32* %61, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %67 = load i32, i32* @TRUE, align 4
  %68 = call i64 @kull_m_crypto_aesBlockEncryptDecrypt(i32 %65, i32* %66, i32 2, i32 %67)
  store i64 %68, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %46
  %71 = load i32*, i32** %13, align 8
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  %74 = call i32 @RtlCopyMemory(i32* %71, i32* %73, i32 16)
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 16, %76
  %78 = sub nsw i32 %77, 16
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @RtlCopyMemory(i32* %80, i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %70, %46
  br label %85

85:                                               ; preds = %84, %38
  br label %86

86:                                               ; preds = %85, %17
  br label %96

87:                                               ; preds = %4
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 16
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* @TRUE, align 4
  %94 = call i64 @kull_m_crypto_aesBlockEncryptDecrypt(i32 %91, i32* %92, i32 1, i32 %93)
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %90, %87
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i64, i64* %9, align 8
  ret i64 %97
}

declare dso_local i64 @CryptSetKeyParam(i32, i32, i32*, i32) #1

declare dso_local i64 @kull_m_crypto_aesBlockEncryptDecrypt(i32, i32*, i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
