; ModuleID = '/home/carl/AnghaBench/openssl/crypto/srp/extr_srp_lib.c_srp_Calc_xy.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/srp/extr_srp_lib.c_srp_Calc_xy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @srp_Calc_xy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @srp_Calc_xy(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @BN_num_bytes(i32* %18)
  store i32 %19, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @BN_ucmp(i32* %24, i32* %25)
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  store i32 1, i32* %13, align 4
  br label %75

29:                                               ; preds = %23, %3
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @BN_ucmp(i32* %34, i32* %35)
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32* null, i32** %4, align 8
  store i32 1, i32* %13, align 4
  br label %75

39:                                               ; preds = %33, %29
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 %40, 2
  %42 = call i8* @OPENSSL_malloc(i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %71

45:                                               ; preds = %39
  %46 = load i32*, i32** %5, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @BN_bn2binpad(i32* %46, i8* %47, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %45
  %52 = load i32*, i32** %6, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @BN_bn2binpad(i32* %52, i8* %56, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %51
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 %62, 2
  %64 = call i32 (...) @EVP_sha1()
  %65 = call i32 @EVP_Digest(i8* %61, i32 %63, i8* %17, i32* null, i32 %64, i32* null)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60, %51, %45
  br label %71

68:                                               ; preds = %60
  %69 = trunc i64 %15 to i32
  %70 = call i32* @BN_bin2bn(i8* %17, i32 %69, i32* null)
  store i32* %70, i32** %12, align 8
  br label %71

71:                                               ; preds = %68, %67, %44
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @OPENSSL_free(i8* %72)
  %74 = load i32*, i32** %12, align 8
  store i32* %74, i32** %4, align 8
  store i32 1, i32* %13, align 4
  br label %75

75:                                               ; preds = %71, %38, %28
  %76 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32*, i32** %4, align 8
  ret i32* %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BN_num_bytes(i32*) #2

declare dso_local i64 @BN_ucmp(i32*, i32*) #2

declare dso_local i8* @OPENSSL_malloc(i32) #2

declare dso_local i64 @BN_bn2binpad(i32*, i8*, i32) #2

declare dso_local i32 @EVP_Digest(i8*, i32, i8*, i32*, i32, i32*) #2

declare dso_local i32 @EVP_sha1(...) #2

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
