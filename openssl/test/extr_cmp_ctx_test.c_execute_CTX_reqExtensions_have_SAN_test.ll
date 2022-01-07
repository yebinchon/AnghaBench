; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_ctx_test.c_execute_CTX_reqExtensions_have_SAN_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_ctx_test.c_execute_CTX_reqExtensions_have_SAN_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@NID_subject_alt_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @execute_CTX_reqExtensions_have_SAN_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_CTX_reqExtensions_have_SAN_test(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  store i32 16, i32* %5, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(i32* %14)
  %16 = call i32 @TEST_false(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

19:                                               ; preds = %1
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %21 = call i32 @RAND_bytes(i8* %20, i32 16)
  %22 = call i64 @TEST_int_eq(i32 1, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = call i32* (...) @ASN1_OCTET_STRING_new()
  store i32* %25, i32** %7, align 8
  %26 = call i32 @TEST_ptr(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %31 = call i32 @ASN1_OCTET_STRING_set(i32* %29, i8* %30, i32 16)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28, %24, %19
  br label %77

35:                                               ; preds = %28
  %36 = load i32, i32* @NID_subject_alt_name, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32* @X509_EXTENSION_create_by_NID(i32* null, i32 %36, i32 0, i32* %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @TEST_ptr(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = call i32* (...) @sk_X509_EXTENSION_new_null()
  store i32* %43, i32** %9, align 8
  %44 = call i32 @TEST_ptr(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @sk_X509_EXTENSION_push(i32* %47, i32* %48)
  %50 = call i32 @TEST_true(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @OSSL_CMP_CTX_set0_reqExtensions(i32* %53, i32* %54)
  %56 = call i32 @TEST_true(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52, %46, %42, %35
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @X509_EXTENSION_free(i32* %59)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @sk_X509_EXTENSION_free(i32* %61)
  br label %77

63:                                               ; preds = %52
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(i32* %64)
  %66 = call i64 @TEST_int_eq(i32 %65, i32 1)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32*, i32** %9, align 8
  %70 = call i32* @sk_X509_EXTENSION_pop(i32* %69)
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(i32* %71)
  %73 = call i32 @TEST_false(i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @X509_EXTENSION_free(i32* %74)
  br label %76

76:                                               ; preds = %68, %63
  br label %77

77:                                               ; preds = %76, %58, %34
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @ASN1_OCTET_STRING_free(i32* %78)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %18
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(i32*) #1

declare dso_local i64 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @ASN1_OCTET_STRING_set(i32*, i8*, i32) #1

declare dso_local i32* @X509_EXTENSION_create_by_NID(i32*, i32, i32, i32*) #1

declare dso_local i32* @sk_X509_EXTENSION_new_null(...) #1

declare dso_local i32 @sk_X509_EXTENSION_push(i32*, i32*) #1

declare dso_local i32 @OSSL_CMP_CTX_set0_reqExtensions(i32*, i32*) #1

declare dso_local i32 @X509_EXTENSION_free(i32*) #1

declare dso_local i32 @sk_X509_EXTENSION_free(i32*) #1

declare dso_local i32* @sk_X509_EXTENSION_pop(i32*) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
