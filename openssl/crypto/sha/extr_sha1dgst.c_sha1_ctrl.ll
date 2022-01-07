; ModuleID = '/home/carl/AnghaBench/openssl/crypto/sha/extr_sha1dgst.c_sha1_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/sha/extr_sha1dgst.c_sha1_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@EVP_CTRL_SSL3_MASTER_SECRET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha1_ctrl(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [40 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @EVP_CTRL_SSL3_MASTER_SECRET, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %79

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %79

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 48
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %79

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @SHA1_Update(i32* %31, i8* %32, i32 %33)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %79

37:                                               ; preds = %30
  %38 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %39 = call i32 @memset(i8* %38, i32 54, i32 40)
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %42 = call i64 @SHA1_Update(i32* %40, i8* %41, i32 40)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %79

45:                                               ; preds = %37
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @SHA1_Final(i8* %17, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %79

50:                                               ; preds = %45
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @SHA1_Init(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %79

55:                                               ; preds = %50
  %56 = load i32*, i32** %6, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @SHA1_Update(i32* %56, i8* %57, i32 %58)
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %79

62:                                               ; preds = %55
  %63 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %64 = call i32 @memset(i8* %63, i32 92, i32 40)
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %67 = call i64 @SHA1_Update(i32* %65, i8* %66, i32 40)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %79

70:                                               ; preds = %62
  %71 = load i32*, i32** %6, align 8
  %72 = trunc i64 %15 to i32
  %73 = call i64 @SHA1_Update(i32* %71, i8* %17, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %79

76:                                               ; preds = %70
  %77 = trunc i64 %15 to i32
  %78 = call i32 @OPENSSL_cleanse(i8* %17, i32 %77)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %79

79:                                               ; preds = %76, %75, %69, %61, %54, %49, %44, %36, %29, %25, %21
  %80 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SHA1_Update(i32*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @SHA1_Final(i8*, i32*) #2

declare dso_local i32 @SHA1_Init(i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
