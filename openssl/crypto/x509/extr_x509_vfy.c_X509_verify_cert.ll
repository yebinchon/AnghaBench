; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_X509_verify_cert.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_X509_verify_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32*, i32*, i32* }

@X509_F_X509_VERIFY_CERT = common dso_local global i32 0, align 4
@X509_R_NO_CERT_SET_FOR_US_TO_VERIFY = common dso_local global i32 0, align 4
@X509_V_ERR_INVALID_CALL = common dso_local global i8* null, align 8
@ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@X509_V_ERR_OUT_OF_MEM = common dso_local global i64 0, align 8
@X509_V_ERR_EE_KEY_TOO_SMALL = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i64 0, align 8
@X509_V_ERR_UNSPECIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_verify_cert(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @X509_F_X509_VERIFY_CERT, align 4
  %15 = load i32, i32* @X509_R_NO_CERT_SET_FOR_US_TO_VERIFY, align 4
  %16 = call i32 @X509err(i32 %14, i32 %15)
  %17 = load i8*, i8** @X509_V_ERR_INVALID_CALL, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  store i32 -1, i32* %2, align 4
  br label %102

21:                                               ; preds = %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @X509_F_X509_VERIFY_CERT, align 4
  %28 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %29 = call i32 @X509err(i32 %27, i32 %28)
  %30 = load i8*, i8** @X509_V_ERR_INVALID_CALL, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 -1, i32* %2, align 4
  br label %102

34:                                               ; preds = %21
  %35 = call i32* (...) @sk_X509_new_null()
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  %38 = icmp eq i32* %35, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @sk_X509_push(i32* %42, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %39, %34
  %49 = load i32, i32* @X509_F_X509_VERIFY_CERT, align 4
  %50 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %51 = call i32 @X509err(i32 %49, i32 %50)
  %52 = load i64, i64* @X509_V_ERR_OUT_OF_MEM, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  store i32 -1, i32* %2, align 4
  br label %102

55:                                               ; preds = %39
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @X509_up_ref(i32* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @check_key_level(%struct.TYPE_7__* %62, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %55
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @X509_V_ERR_EE_KEY_TOO_SMALL, align 4
  %74 = call i32 @verify_cb_cert(%struct.TYPE_7__* %69, i32* %72, i32 0, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %102

77:                                               ; preds = %68, %55
  %78 = load i32*, i32** %4, align 8
  %79 = call i64 @DANETLS_ENABLED(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = call i32 @dane_verify(%struct.TYPE_7__* %82)
  store i32 %83, i32* %5, align 4
  br label %87

84:                                               ; preds = %77
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = call i32 @verify_chain(%struct.TYPE_7__* %85)
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %5, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @X509_V_OK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i64, i64* @X509_V_ERR_UNSPECIFIED, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %96, %90, %87
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %76, %48, %26, %13
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32* @sk_X509_new_null(...) #1

declare dso_local i32 @sk_X509_push(i32*, i32*) #1

declare dso_local i32 @X509_up_ref(i32*) #1

declare dso_local i32 @check_key_level(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @verify_cb_cert(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i64 @DANETLS_ENABLED(i32*) #1

declare dso_local i32 @dane_verify(%struct.TYPE_7__*) #1

declare dso_local i32 @verify_chain(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
