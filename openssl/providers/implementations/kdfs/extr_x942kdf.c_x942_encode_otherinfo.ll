; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_x942kdf.c_x942_encode_otherinfo.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_x942kdf.c_x942_encode_otherinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x942_encode_otherinfo.ctr = internal global [4 x i8] c"\00\00\00\01", align 1
@V_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@V_ASN1_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*, i64, i8**, i64*, i8**)* @x942_encode_otherinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x942_encode_otherinfo(i32 %0, i64 %1, i8* %2, i64 %3, i8** %4, i64* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  store i8** %6, i8*** %14, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  %24 = call i32* (...) @X509_ALGOR_new()
  store i32* %24, i32** %20, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @OBJ_nid2obj(i32 %25)
  %27 = call i32* @OBJ_dup(i32 %26)
  store i32* %27, i32** %21, align 8
  %28 = call i32* (...) @ASN1_OCTET_STRING_new()
  store i32* %28, i32** %22, align 8
  %29 = load i32*, i32** %20, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %7
  %32 = load i32*, i32** %21, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %22, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %22, align 8
  %39 = call i32 @ASN1_OCTET_STRING_set(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @x942_encode_otherinfo.ctr, i64 0, i64 0), i64 4)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32*, i32** %20, align 8
  %43 = load i32*, i32** %21, align 8
  %44 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  %45 = load i32*, i32** %22, align 8
  %46 = call i32 @X509_ALGOR_set0(i32* %42, i32* %43, i32 %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41, %37, %34, %31, %7
  br label %102

49:                                               ; preds = %41
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = call i32* (...) @ASN1_OCTET_STRING_new()
  store i32* %53, i32** %23, align 8
  %54 = load i32*, i32** %23, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %102

57:                                               ; preds = %52
  %58 = load i32*, i32** %23, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @ASN1_OCTET_STRING_set(i32* %58, i8* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %49
  %63 = load i32*, i32** %20, align 8
  %64 = load i32*, i32** %23, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @CMS_SharedInfo_encode(i8** %16, i32* %63, i32* %64, i64 %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %102

70:                                               ; preds = %62
  %71 = load i8*, i8** %16, align 8
  store i8* %71, i8** %15, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %19, align 8
  %74 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %75 = call i64 @skip_asn1(i8** %15, i64* %19, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %70
  %78 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %79 = call i64 @skip_asn1(i8** %15, i64* %19, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load i32, i32* @V_ASN1_OBJECT, align 4
  %83 = call i64 @skip_asn1(i8** %15, i64* %19, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  %87 = call i64 @skip_asn1(i8** %15, i64* %19, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load i8*, i8** %15, align 8
  %91 = call i64 @CRYPTO_memcmp(i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @x942_encode_otherinfo.ctr, i64 0, i64 0), i32 4)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i8*, i8** %15, align 8
  %95 = load i8**, i8*** %14, align 8
  store i8* %94, i8** %95, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load i8**, i8*** %12, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64*, i64** %13, align 8
  store i64 %99, i64* %100, align 8
  store i32 1, i32* %17, align 4
  br label %101

101:                                              ; preds = %93, %89, %85, %81, %77, %70
  br label %102

102:                                              ; preds = %101, %69, %56, %48
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i8*, i8** %16, align 8
  %107 = call i32 @OPENSSL_free(i8* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32*, i32** %22, align 8
  %110 = call i32 @ASN1_OCTET_STRING_free(i32* %109)
  %111 = load i32*, i32** %23, align 8
  %112 = call i32 @ASN1_OCTET_STRING_free(i32* %111)
  %113 = load i32*, i32** %21, align 8
  %114 = call i32 @ASN1_OBJECT_free(i32* %113)
  %115 = load i32*, i32** %20, align 8
  %116 = call i32 @X509_ALGOR_free(i32* %115)
  %117 = load i32, i32* %17, align 4
  ret i32 %117
}

declare dso_local i32* @X509_ALGOR_new(...) #1

declare dso_local i32* @OBJ_dup(i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32 @ASN1_OCTET_STRING_set(i32*, i8*, i64) #1

declare dso_local i32 @X509_ALGOR_set0(i32*, i32*, i32, i32*) #1

declare dso_local i32 @CMS_SharedInfo_encode(i8**, i32*, i32*, i64) #1

declare dso_local i64 @skip_asn1(i8**, i64*, i32) #1

declare dso_local i64 @CRYPTO_memcmp(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(i32*) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

declare dso_local i32 @X509_ALGOR_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
