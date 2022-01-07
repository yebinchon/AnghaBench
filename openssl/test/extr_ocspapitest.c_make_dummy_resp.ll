; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ocspapitest.c_make_dummy_resp.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ocspapitest.c_make_dummy_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.make_dummy_resp.namestr = private unnamed_addr constant [20 x i8] c"openssl.example.com\00", align 16
@NID_commonName = common dso_local global i32 0, align 4
@MBSTRING_ASC = common dso_local global i32 0, align 4
@V_OCSP_CERTSTATUS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @make_dummy_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_dummy_resp() #0 {
  %1 = alloca [20 x i8], align 16
  %2 = alloca [128 x i8], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = bitcast [20 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.make_dummy_resp.namestr, i32 0, i32 0), i64 20, i1 false)
  %12 = bitcast [128 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 128, i1 false)
  %13 = bitcast i8* %12 to <{ i8, [127 x i8] }>*
  %14 = getelementptr inbounds <{ i8, [127 x i8] }>, <{ i8, [127 x i8] }>* %13, i32 0, i32 0
  store i8 7, i8* %14, align 16
  %15 = call i32* (...) @OCSP_BASICRESP_new()
  store i32* %15, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %16 = call i64 @time(i32* null)
  %17 = call i32* @ASN1_TIME_set(i32* null, i64 %16)
  store i32* %17, i32** %6, align 8
  %18 = call i64 @time(i32* null)
  %19 = add nsw i64 %18, 200
  %20 = call i32* @ASN1_TIME_set(i32* null, i64 %19)
  store i32* %20, i32** %7, align 8
  %21 = call i32* (...) @X509_NAME_new()
  store i32* %21, i32** %8, align 8
  %22 = call i32* (...) @ASN1_BIT_STRING_new()
  store i32* %22, i32** %9, align 8
  %23 = call i32* (...) @ASN1_INTEGER_new()
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @NID_commonName, align 4
  %26 = load i32, i32* @MBSTRING_ASC, align 4
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %28 = call i32 @X509_NAME_add_entry_by_NID(i32* %24, i32 %25, i32 %26, i8* %27, i32 -1, i32 -1, i32 1)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %0
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %33 = call i32 @ASN1_BIT_STRING_set(i32* %31, i8* %32, i32 128)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @ASN1_INTEGER_set_uint64(i32* %36, i32 1)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %30, %0
  br label %73

40:                                               ; preds = %35
  %41 = call i32 (...) @EVP_sha256()
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32* @OCSP_cert_id_new(i32 %41, i32* %42, i32* %43, i32* %44)
  store i32* %45, i32** %5, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @TEST_ptr(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %40
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @TEST_ptr(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @TEST_ptr(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @TEST_ptr(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @V_OCSP_CERTSTATUS_UNKNOWN, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @OCSP_basic_add1_status(i32* %62, i32* %63, i32 %64, i32 0, i32* null, i32* %65, i32* %66)
  %68 = call i32 @TEST_true(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61, %57, %53, %49, %40
  br label %73

71:                                               ; preds = %61
  %72 = load i32*, i32** %3, align 8
  store i32* %72, i32** %4, align 8
  store i32* null, i32** %3, align 8
  br label %73

73:                                               ; preds = %71, %70, %39
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @ASN1_TIME_free(i32* %74)
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @ASN1_TIME_free(i32* %76)
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @ASN1_BIT_STRING_free(i32* %78)
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @ASN1_INTEGER_free(i32* %80)
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @OCSP_CERTID_free(i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @OCSP_BASICRESP_free(i32* %84)
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @X509_NAME_free(i32* %86)
  %88 = load i32*, i32** %4, align 8
  ret i32* %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @OCSP_BASICRESP_new(...) #2

declare dso_local i32* @ASN1_TIME_set(i32*, i64) #2

declare dso_local i64 @time(i32*) #2

declare dso_local i32* @X509_NAME_new(...) #2

declare dso_local i32* @ASN1_BIT_STRING_new(...) #2

declare dso_local i32* @ASN1_INTEGER_new(...) #2

declare dso_local i32 @X509_NAME_add_entry_by_NID(i32*, i32, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @ASN1_BIT_STRING_set(i32*, i8*, i32) #2

declare dso_local i32 @ASN1_INTEGER_set_uint64(i32*, i32) #2

declare dso_local i32* @OCSP_cert_id_new(i32, i32*, i32*, i32*) #2

declare dso_local i32 @EVP_sha256(...) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @OCSP_basic_add1_status(i32*, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @ASN1_TIME_free(i32*) #2

declare dso_local i32 @ASN1_BIT_STRING_free(i32*) #2

declare dso_local i32 @ASN1_INTEGER_free(i32*) #2

declare dso_local i32 @OCSP_CERTID_free(i32*) #2

declare dso_local i32 @OCSP_BASICRESP_free(i32*) #2

declare dso_local i32 @X509_NAME_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
