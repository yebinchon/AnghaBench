; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_alt.c_copy_email.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_alt.c_copy_email.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32*, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@CTX_TEST = common dso_local global i64 0, align 8
@X509V3_F_COPY_EMAIL = common dso_local global i32 0, align 4
@X509V3_R_NO_SUBJECT_DETAILS = common dso_local global i32 0, align 4
@NID_pkcs9_emailAddress = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@GEN_EMAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @copy_email to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_email(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  store i32 -1, i32* %12, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CTX_TEST, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %111

22:                                               ; preds = %15, %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %22
  %36 = load i32, i32* @X509V3_F_COPY_EMAIL, align 4
  %37 = load i32, i32* @X509V3_R_NO_SUBJECT_DETAILS, align 4
  %38 = call i32 @X509V3err(i32 %36, i32 %37)
  br label %106

39:                                               ; preds = %30, %25
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32* @X509_get_subject_name(i32* %47)
  store i32* %48, i32** %8, align 8
  br label %54

49:                                               ; preds = %39
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32* @X509_REQ_get_subject_name(i32* %52)
  store i32* %53, i32** %8, align 8
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %104, %54
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* @NID_pkcs9_emailAddress, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @X509_NAME_get_index_by_NID(i32* %56, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %105

61:                                               ; preds = %55
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32* @X509_NAME_get_entry(i32* %62, i32 %63)
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @X509_NAME_ENTRY_get_data(i32* %65)
  %67 = call i32* @ASN1_STRING_dup(i32 %66)
  store i32* %67, i32** %9, align 8
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @X509_NAME_delete_entry(i32* %71, i32 %72)
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @X509_NAME_ENTRY_free(i32* %74)
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %70, %61
  %79 = load i32*, i32** %9, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = call %struct.TYPE_10__* (...) @GENERAL_NAME_new()
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %11, align 8
  %83 = icmp eq %struct.TYPE_10__* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81, %78
  %85 = load i32, i32* @X509V3_F_COPY_EMAIL, align 4
  %86 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %87 = call i32 @X509V3err(i32 %85, i32 %86)
  br label %106

88:                                               ; preds = %81
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32* %89, i32** %92, align 8
  store i32* null, i32** %9, align 8
  %93 = load i32, i32* @GEN_EMAIL, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %98 = call i32 @sk_GENERAL_NAME_push(i32* %96, %struct.TYPE_10__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %88
  %101 = load i32, i32* @X509V3_F_COPY_EMAIL, align 4
  %102 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %103 = call i32 @X509V3err(i32 %101, i32 %102)
  br label %106

104:                                              ; preds = %88
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  br label %55

105:                                              ; preds = %55
  store i32 1, i32* %4, align 4
  br label %111

106:                                              ; preds = %100, %84, %35
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %108 = call i32 @GENERAL_NAME_free(%struct.TYPE_10__* %107)
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @ASN1_IA5STRING_free(i32* %109)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %106, %105, %21
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32* @X509_get_subject_name(i32*) #1

declare dso_local i32* @X509_REQ_get_subject_name(i32*) #1

declare dso_local i32 @X509_NAME_get_index_by_NID(i32*, i32, i32) #1

declare dso_local i32* @X509_NAME_get_entry(i32*, i32) #1

declare dso_local i32* @ASN1_STRING_dup(i32) #1

declare dso_local i32 @X509_NAME_ENTRY_get_data(i32*) #1

declare dso_local i32 @X509_NAME_delete_entry(i32*, i32) #1

declare dso_local i32 @X509_NAME_ENTRY_free(i32*) #1

declare dso_local %struct.TYPE_10__* @GENERAL_NAME_new(...) #1

declare dso_local i32 @sk_GENERAL_NAME_push(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @GENERAL_NAME_free(%struct.TYPE_10__*) #1

declare dso_local i32 @ASN1_IA5STRING_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
