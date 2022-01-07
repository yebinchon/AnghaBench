; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_enc.c_CMS_EncryptedData_set1_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_enc.c_CMS_EncryptedData_set1_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i64 }

@CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY = common dso_local global i32 0, align 4
@CMS_R_NO_KEY = common dso_local global i32 0, align 4
@CMS_EncryptedData = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@NID_pkcs7_encrypted = common dso_local global i64 0, align 8
@CMS_R_NOT_ENCRYPTED_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_EncryptedData_set1_key(%struct.TYPE_6__* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13, %4
  %17 = load i32, i32* @CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY, align 4
  %18 = load i32, i32* @CMS_R_NO_KEY, align 4
  %19 = call i32 @CMSerr(i32 %17, i32 %18)
  store i32 0, i32* %5, align 4
  br label %72

20:                                               ; preds = %13
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load i32, i32* @CMS_EncryptedData, align 4
  %25 = call %struct.TYPE_7__* @M_ASN1_new_of(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* @CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY, align 4
  %36 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %37 = call i32 @CMSerr(i32 %35, i32 %36)
  store i32 0, i32* %5, align 4
  br label %72

38:                                               ; preds = %23
  %39 = load i64, i64* @NID_pkcs7_encrypted, align 8
  %40 = call i32 @OBJ_nid2obj(i64 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %60

48:                                               ; preds = %20
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @OBJ_obj2nid(i32 %51)
  %53 = load i64, i64* @NID_pkcs7_encrypted, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY, align 4
  %57 = load i32, i32* @CMS_R_NOT_ENCRYPTED_DATA, align 4
  %58 = call i32 @CMSerr(i32 %56, i32 %57)
  store i32 0, i32* %5, align 4
  br label %72

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @cms_EncryptedContent_init(i32* %67, i32* %68, i8* %69, i64 %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %60, %55, %34, %16
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local %struct.TYPE_7__* @M_ASN1_new_of(i32) #1

declare dso_local i32 @OBJ_nid2obj(i64) #1

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local i32 @cms_EncryptedContent_init(i32*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
