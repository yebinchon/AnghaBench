; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_ext.c_OCSP_crlID_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_ext.c_OCSP_crlID_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32* }

@NID_id_pkix_OCSP_CrlID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OCSP_crlID_new(i8* %0, i64* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  %9 = call %struct.TYPE_5__* (...) @OCSP_CRLID_new()
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %8, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %71

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = call i32* (...) @ASN1_IA5STRING_new()
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = icmp eq i32* %16, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %71

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @ASN1_STRING_set(i32* %24, i8* %25, i32 -1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %71

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i64*, i64** %5, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = call i32* (...) @ASN1_INTEGER_new()
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = icmp eq i32* %34, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %71

39:                                               ; preds = %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64*, i64** %5, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ASN1_INTEGER_set(i32* %42, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %71

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %30
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = call i32* (...) @ASN1_GENERALIZEDTIME_new()
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = icmp eq i32* %53, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %71

58:                                               ; preds = %52
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @ASN1_GENERALIZEDTIME_set_string(i32* %61, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %71

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i32, i32* @NID_id_pkix_OCSP_CrlID, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = call i32* @X509V3_EXT_i2d(i32 %68, i32 0, %struct.TYPE_5__* %69)
  store i32* %70, i32** %7, align 8
  br label %71

71:                                               ; preds = %67, %65, %57, %47, %38, %28, %20, %11
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = call i32 @OCSP_CRLID_free(%struct.TYPE_5__* %72)
  %74 = load i32*, i32** %7, align 8
  ret i32* %74
}

declare dso_local %struct.TYPE_5__* @OCSP_CRLID_new(...) #1

declare dso_local i32* @ASN1_IA5STRING_new(...) #1

declare dso_local i32 @ASN1_STRING_set(i32*, i8*, i32) #1

declare dso_local i32* @ASN1_INTEGER_new(...) #1

declare dso_local i32 @ASN1_INTEGER_set(i32*, i64) #1

declare dso_local i32* @ASN1_GENERALIZEDTIME_new(...) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_set_string(i32*, i8*) #1

declare dso_local i32* @X509V3_EXT_i2d(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @OCSP_CRLID_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
