; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_ctx.c_OSSL_CMP_CTX_free.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_ctx.c_OSSL_CMP_CTX_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }

@OSSL_CMP_ITAV_free = common dso_local global i32 0, align 4
@GENERAL_NAME_free = common dso_local global i32 0, align 4
@X509_EXTENSION_free = common dso_local global i32 0, align 4
@POLICYINFO_free = common dso_local global i32 0, align 4
@ASN1_UTF8STRING_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OSSL_CMP_CTX_free(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = icmp eq %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %156

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 30
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = call i32 @OPENSSL_free(%struct.TYPE_5__* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 29
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = call i32 @OPENSSL_free(%struct.TYPE_5__* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 28
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 @OPENSSL_free(%struct.TYPE_5__* %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 27
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @X509_free(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 26
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @X509_free(i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 25
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @X509_NAME_free(i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 24
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @X509_STORE_free(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 23
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sk_X509_pop_free(i32 %37, i32 (i32)* @X509_free)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 22
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @X509_free(i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 21
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @EVP_PKEY_free(i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 20
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_6__* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 19
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %6
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 19
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 19
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @OPENSSL_cleanse(i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %55, %6
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 19
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_6__* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 18
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @X509_NAME_free(i32 %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 17
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_6__* %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 16
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_6__* %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 15
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_6__* %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 14
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @OSSL_CMP_ITAV_free, align 4
  %92 = call i32 @sk_OSSL_CMP_ITAV_pop_free(i32 %90, i32 %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @sk_X509_pop_free(i32 %95, i32 (i32)* @X509_free)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 12
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @EVP_PKEY_free(i32 %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @X509_NAME_free(i32 %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @X509_NAME_free(i32 %107)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @GENERAL_NAME_free, align 4
  %113 = call i32 @sk_GENERAL_NAME_pop_free(i32 %111, i32 %112)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @X509_EXTENSION_free, align 4
  %118 = call i32 @sk_X509_EXTENSION_pop_free(i32 %116, i32 %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @POLICYINFO_free, align 4
  %123 = call i32 @sk_POLICYINFO_pop_free(i32 %121, i32 %122)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @X509_free(i32 %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @X509_REQ_free(i32 %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @OSSL_CMP_ITAV_free, align 4
  %136 = call i32 @sk_OSSL_CMP_ITAV_pop_free(i32 %134, i32 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ASN1_UTF8STRING_free, align 4
  %141 = call i32 @sk_ASN1_UTF8STRING_pop_free(i32 %139, i32 %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @X509_free(i32 %144)
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @sk_X509_pop_free(i32 %148, i32 (i32)* @X509_free)
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @sk_X509_pop_free(i32 %152, i32 (i32)* @X509_free)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %155 = call i32 @OPENSSL_free(%struct.TYPE_5__* %154)
  br label %156

156:                                              ; preds = %67, %5
  ret void
}

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

declare dso_local i32 @X509_free(i32) #1

declare dso_local i32 @X509_NAME_free(i32) #1

declare dso_local i32 @X509_STORE_free(i32) #1

declare dso_local i32 @sk_X509_pop_free(i32, i32 (i32)*) #1

declare dso_local i32 @EVP_PKEY_free(i32) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(%struct.TYPE_6__*) #1

declare dso_local i32 @OPENSSL_cleanse(i32, i32) #1

declare dso_local i32 @sk_OSSL_CMP_ITAV_pop_free(i32, i32) #1

declare dso_local i32 @sk_GENERAL_NAME_pop_free(i32, i32) #1

declare dso_local i32 @sk_X509_EXTENSION_pop_free(i32, i32) #1

declare dso_local i32 @sk_POLICYINFO_pop_free(i32, i32) #1

declare dso_local i32 @X509_REQ_free(i32) #1

declare dso_local i32 @sk_ASN1_UTF8STRING_pop_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
