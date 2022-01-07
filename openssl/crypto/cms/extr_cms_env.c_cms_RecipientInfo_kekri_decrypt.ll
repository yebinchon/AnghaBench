; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_env.c_cms_RecipientInfo_kekri_decrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_env.c_cms_RecipientInfo_kekri_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT = common dso_local global i32 0, align 4
@CMS_R_NO_KEY = common dso_local global i32 0, align 4
@CMS_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@CMS_R_INVALID_ENCRYPTED_KEY_LENGTH = common dso_local global i32 0, align 4
@CMS_R_ERROR_SETTING_KEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CMS_R_UNWRAP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_17__*)* @cms_RecipientInfo_kekri_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cms_RecipientInfo_kekri_decrypt(%struct.TYPE_20__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %6, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %7, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT, align 4
  %29 = load i32, i32* @CMS_R_NO_KEY, align 4
  %30 = call i32 @CMSerr(i32 %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %122

31:                                               ; preds = %2
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @OBJ_obj2nid(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @aes_wrap_keylen(i32 %38)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT, align 4
  %46 = load i32, i32* @CMS_R_INVALID_KEY_LENGTH, align 4
  %47 = call i32 @CMSerr(i32 %45, i32 %46)
  store i32 0, i32* %3, align 4
  br label %122

48:                                               ; preds = %31
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 16
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT, align 4
  %57 = load i32, i32* @CMS_R_INVALID_ENCRYPTED_KEY_LENGTH, align 4
  %58 = call i32 @CMSerr(i32 %56, i32 %57)
  br label %113

59:                                               ; preds = %48
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 3
  %67 = call i64 @AES_set_decrypt_key(i32 %62, i32 %66, i32* %8)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT, align 4
  %71 = load i32, i32* @CMS_R_ERROR_SETTING_KEY, align 4
  %72 = call i32 @CMSerr(i32 %70, i32 %71)
  br label %113

73:                                               ; preds = %59
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 8
  %80 = call i8* @OPENSSL_malloc(i32 %79)
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT, align 4
  %85 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %86 = call i32 @CMSerr(i32 %84, i32 %85)
  br label %113

87:                                               ; preds = %73
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @AES_unwrap_key(i32* %8, i32* null, i8* %88, i32 %93, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %87
  %103 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT, align 4
  %104 = load i32, i32* @CMS_R_UNWRAP_ERROR, align 4
  %105 = call i32 @CMSerr(i32 %103, i32 %104)
  br label %113

106:                                              ; preds = %87
  %107 = load i8*, i8** %9, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  store i32 1, i32* %11, align 4
  br label %113

113:                                              ; preds = %106, %102, %83, %69, %55
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @OPENSSL_free(i8* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = call i32 @OPENSSL_cleanse(i32* %8, i32 4)
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %119, %44, %27
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32 @aes_wrap_keylen(i32) #1

declare dso_local i64 @AES_set_decrypt_key(i32, i32, i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @AES_unwrap_key(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OPENSSL_cleanse(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
