; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_cmp.c_X509_NAME_hash_old.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_cmp.c_X509_NAME_hash_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@OSSL_DIGEST_NAME_MD5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"-fips\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @X509_NAME_hash_old(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [16 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load i32, i32* @OSSL_DIGEST_NAME_MD5, align 4
  %8 = call i32* @EVP_MD_fetch(i32* null, i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %3, align 8
  %9 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %9, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %1
  br label %63

16:                                               ; preds = %12
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = call i32 @i2d_X509_NAME(%struct.TYPE_6__* %17, i32* null)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @EVP_DigestInit_ex(i32* %19, i32* %20, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @EVP_DigestUpdate(i32* %24, i32 %29, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %23
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %40 = call i64 @EVP_DigestFinal_ex(i32* %38, i8* %39, i32* null)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = shl i64 %48, 8
  %50 = or i64 %45, %49
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %52 = load i8, i8* %51, align 2
  %53 = zext i8 %52 to i64
  %54 = shl i64 %53, 16
  %55 = or i64 %50, %54
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 3
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i64
  %59 = shl i64 %58, 24
  %60 = or i64 %55, %59
  %61 = and i64 %60, 4294967295
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %42, %37, %23, %16
  br label %63

63:                                               ; preds = %62, %15
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @EVP_MD_CTX_free(i32* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @EVP_MD_free(i32* %66)
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local i32* @EVP_MD_fetch(i32*, i32, i8*) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @i2d_X509_NAME(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i64 @EVP_DigestUpdate(i32*, i32, i32) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @EVP_MD_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
