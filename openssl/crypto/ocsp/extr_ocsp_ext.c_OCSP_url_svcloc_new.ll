; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_ext.c_OCSP_url_svcloc_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_ext.c_OCSP_url_svcloc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32* }

@NID_ad_OCSP = common dso_local global i32 0, align 4
@GEN_URI = common dso_local global i32 0, align 4
@NID_id_pkix_OCSP_serviceLocator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OCSP_url_svcloc_new(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %9 = call %struct.TYPE_13__* (...) @OCSP_SERVICELOC_new()
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %7, align 8
  %10 = icmp eq %struct.TYPE_13__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %94

12:                                               ; preds = %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @X509_NAME_free(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @X509_NAME_dup(i32* %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = icmp eq i32* %18, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %94

23:                                               ; preds = %12
  %24 = load i8**, i8*** %4, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = call i32* (...) @sk_ACCESS_DESCRIPTION_new_null()
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = icmp eq i32* %31, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %94

36:                                               ; preds = %30, %26, %23
  br label %37

37:                                               ; preds = %87, %36
  %38 = load i8**, i8*** %4, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i8**, i8*** %4, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %46, label %90

46:                                               ; preds = %44
  %47 = call %struct.TYPE_14__* (...) @ACCESS_DESCRIPTION_new()
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %8, align 8
  %48 = icmp eq %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %94

50:                                               ; preds = %46
  %51 = load i32, i32* @NID_ad_OCSP, align 4
  %52 = call i32* @OBJ_nid2obj(i32 %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = icmp eq i32* %52, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %94

57:                                               ; preds = %50
  %58 = call i32* (...) @ASN1_IA5STRING_new()
  store i32* %58, i32** %6, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %94

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8
  %63 = load i8**, i8*** %4, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @ASN1_STRING_set(i32* %62, i8* %64, i32 -1)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %94

68:                                               ; preds = %61
  %69 = load i32, i32* @GEN_URI, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32* %74, i32** %79, align 8
  store i32* null, i32** %6, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = call i32 @sk_ACCESS_DESCRIPTION_push(i32* %82, %struct.TYPE_14__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %68
  br label %94

87:                                               ; preds = %68
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %88 = load i8**, i8*** %4, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %4, align 8
  br label %37

90:                                               ; preds = %44
  %91 = load i32, i32* @NID_id_pkix_OCSP_serviceLocator, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = call i32* @X509V3_EXT_i2d(i32 %91, i32 0, %struct.TYPE_13__* %92)
  store i32* %93, i32** %5, align 8
  br label %94

94:                                               ; preds = %90, %86, %67, %60, %56, %49, %35, %22, %11
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @ASN1_IA5STRING_free(i32* %95)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %98 = call i32 @ACCESS_DESCRIPTION_free(%struct.TYPE_14__* %97)
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %100 = call i32 @OCSP_SERVICELOC_free(%struct.TYPE_13__* %99)
  %101 = load i32*, i32** %5, align 8
  ret i32* %101
}

declare dso_local %struct.TYPE_13__* @OCSP_SERVICELOC_new(...) #1

declare dso_local i32 @X509_NAME_free(i32*) #1

declare dso_local i32* @X509_NAME_dup(i32*) #1

declare dso_local i32* @sk_ACCESS_DESCRIPTION_new_null(...) #1

declare dso_local %struct.TYPE_14__* @ACCESS_DESCRIPTION_new(...) #1

declare dso_local i32* @OBJ_nid2obj(i32) #1

declare dso_local i32* @ASN1_IA5STRING_new(...) #1

declare dso_local i32 @ASN1_STRING_set(i32*, i8*, i32) #1

declare dso_local i32 @sk_ACCESS_DESCRIPTION_push(i32*, %struct.TYPE_14__*) #1

declare dso_local i32* @X509V3_EXT_i2d(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ASN1_IA5STRING_free(i32*) #1

declare dso_local i32 @ACCESS_DESCRIPTION_free(%struct.TYPE_14__*) #1

declare dso_local i32 @OCSP_SERVICELOC_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
