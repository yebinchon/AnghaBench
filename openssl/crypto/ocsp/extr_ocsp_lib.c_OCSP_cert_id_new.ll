; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_lib.c_OCSP_cert_id_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_lib.c_OCSP_cert_id_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@OCSP_F_OCSP_CERT_ID_NEW = common dso_local global i32 0, align 4
@OCSP_R_UNKNOWN_NID = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i32 0, align 4
@OCSP_R_DIGEST_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @OCSP_cert_id_new(i32* %0, i32* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  %17 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = call %struct.TYPE_10__* (...) @OCSP_CERTID_new()
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %13, align 8
  %22 = icmp eq %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %105

24:                                               ; preds = %4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %12, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @ASN1_OBJECT_free(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @EVP_MD_type(i32* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @NID_undef, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load i32, i32* @OCSP_F_OCSP_CERT_ID_NEW, align 4
  %37 = load i32, i32* @OCSP_R_UNKNOWN_NID, align 4
  %38 = call i32 @OCSPerr(i32 %36, i32 %37)
  br label %105

39:                                               ; preds = %24
  %40 = load i32, i32* %10, align 4
  %41 = call i32* @OBJ_nid2obj(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = icmp eq i32* %41, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %105

46:                                               ; preds = %39
  %47 = call %struct.TYPE_12__* (...) @ASN1_TYPE_new()
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %49, align 8
  %50 = icmp eq %struct.TYPE_12__* %47, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %105

52:                                               ; preds = %46
  %53 = load i32, i32* @V_ASN1_NULL, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @X509_NAME_digest(i32* %58, i32* %59, i8* %20, i32* %11)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  br label %101

63:                                               ; preds = %52
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @ASN1_OCTET_STRING_set(i32* %65, i8* %20, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %105

70:                                               ; preds = %63
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @EVP_Digest(i32 %73, i32 %76, i8* %20, i32* %11, i32* %77, i32* null)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  br label %105

81:                                               ; preds = %70
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ASN1_OCTET_STRING_set(i32* %83, i8* %20, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  br label %105

88:                                               ; preds = %81
  %89 = load i32*, i32** %9, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32*, i32** %9, align 8
  %95 = call i64 @ASN1_STRING_copy(i32* %93, i32* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %105

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %88
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %5, align 8
  store i32 1, i32* %16, align 4
  br label %108

101:                                              ; preds = %62
  %102 = load i32, i32* @OCSP_F_OCSP_CERT_ID_NEW, align 4
  %103 = load i32, i32* @OCSP_R_DIGEST_ERR, align 4
  %104 = call i32 @OCSPerr(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %97, %87, %80, %69, %51, %45, %35, %23
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %107 = call i32 @OCSP_CERTID_free(%struct.TYPE_10__* %106)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  store i32 1, i32* %16, align 4
  br label %108

108:                                              ; preds = %105, %99
  %109 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_10__* @OCSP_CERTID_new(...) #2

declare dso_local i32 @ASN1_OBJECT_free(i32*) #2

declare dso_local i32 @EVP_MD_type(i32*) #2

declare dso_local i32 @OCSPerr(i32, i32) #2

declare dso_local i32* @OBJ_nid2obj(i32) #2

declare dso_local %struct.TYPE_12__* @ASN1_TYPE_new(...) #2

declare dso_local i32 @X509_NAME_digest(i32*, i32*, i8*, i32*) #2

declare dso_local i32 @ASN1_OCTET_STRING_set(i32*, i8*, i32) #2

declare dso_local i32 @EVP_Digest(i32, i32, i8*, i32*, i32*, i32*) #2

declare dso_local i64 @ASN1_STRING_copy(i32*, i32*) #2

declare dso_local i32 @OCSP_CERTID_free(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
