; ModuleID = '/home/carl/AnghaBench/openssl/crypto/srp/extr_srp_vfy.c_SRP_VBASE_get1_by_user.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/srp/extr_srp_vfy.c_SRP_VBASE_get1_by_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32*, i32* }

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SRP_VBASE_get1_by_user(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i32* null, i32** %10, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %119

22:                                               ; preds = %2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32* @find_user(%struct.TYPE_4__* %23, i8* %24)
  store i32* %25, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @srp_user_pwd_dup(i32* %28)
  store i32* %29, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %119

30:                                               ; preds = %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %35, %30
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %119

46:                                               ; preds = %40
  %47 = call i32* (...) @SRP_user_pwd_new()
  store i32* %47, i32** %6, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %119

50:                                               ; preds = %46
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @SRP_user_pwd_set_gN(i32* %51, i32* %54, i32* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @SRP_user_pwd_set1_ids(i32* %59, i8* %60, i32* null)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %50
  br label %114

64:                                               ; preds = %50
  %65 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %66 = call i64 @RAND_priv_bytes(i8* %15, i32 %65)
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %114

69:                                               ; preds = %64
  %70 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %70, i32** %10, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %100, label %73

73:                                               ; preds = %69
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 (...) @EVP_sha1()
  %76 = call i32 @EVP_DigestInit_ex(i32* %74, i32 %75, i32* null)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %73
  %79 = load i32*, i32** %10, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = call i32 @EVP_DigestUpdate(i32* %79, i8* %82, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %78
  %90 = load i32*, i32** %10, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = call i32 @EVP_DigestUpdate(i32* %90, i8* %91, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @EVP_DigestFinal_ex(i32* %97, i8* %18, i32* null)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96, %89, %78, %73, %69
  br label %114

101:                                              ; preds = %96
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @EVP_MD_CTX_free(i32* %102)
  store i32* null, i32** %10, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %106 = call i32 @BN_bin2bn(i8* %18, i32 %105, i32* null)
  %107 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %108 = call i32 @BN_bin2bn(i8* %15, i32 %107, i32* null)
  %109 = call i64 @SRP_user_pwd_set0_sv(i32* %104, i32 %106, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32*, i32** %6, align 8
  store i32* %112, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %119

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %100, %68, %63
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @EVP_MD_CTX_free(i32* %115)
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @SRP_user_pwd_free(i32* %117)
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %119

119:                                              ; preds = %114, %111, %49, %45, %27, %21
  %120 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32*, i32** %3, align 8
  ret i32* %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @find_user(%struct.TYPE_4__*, i8*) #2

declare dso_local i32* @srp_user_pwd_dup(i32*) #2

declare dso_local i32* @SRP_user_pwd_new(...) #2

declare dso_local i32 @SRP_user_pwd_set_gN(i32*, i32*, i32*) #2

declare dso_local i32 @SRP_user_pwd_set1_ids(i32*, i8*, i32*) #2

declare dso_local i64 @RAND_priv_bytes(i8*, i32) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #2

declare dso_local i32 @EVP_sha1(...) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i64 @SRP_user_pwd_set0_sv(i32*, i32, i32) #2

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local i32 @SRP_user_pwd_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
