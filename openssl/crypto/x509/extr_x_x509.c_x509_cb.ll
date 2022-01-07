; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x_x509.c_x509_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x_x509.c_x509_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32 }

@CRYPTO_EX_INDEX_X509 = common dso_local global i32 0, align 4
@IPAddressFamily_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32*, i8*)* @x509_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_cb(i32 %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32**, i32*** %7, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %152 [
    i32 130, label %15
    i32 128, label %62
    i32 129, label %105
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* @CRYPTO_EX_INDEX_X509, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 12
  %20 = call i32 @CRYPTO_free_ex_data(i32 %16, %struct.TYPE_4__* %17, i32* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 11
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @X509_CERT_AUX_free(i32* %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 10
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ASN1_OCTET_STRING_free(i32* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 9
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @AUTHORITY_KEYID_free(i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @CRL_DIST_POINTS_free(i32* %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @policy_cache_free(i32* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @GENERAL_NAMES_free(i32* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @NAME_CONSTRAINTS_free(i32* %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @IPAddressFamily_free, align 4
  %53 = call i32 @sk_IPAddressFamily_pop_free(i32* %51, i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @ASIdentifiers_free(i32* %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ASN1_OCTET_STRING_free(i32* %60)
  br label %62

62:                                               ; preds = %4, %15
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 17
  store i32 0, i32* %64, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 16
  store i32 0, i32* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 15
  store i32 0, i32* %68, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 14
  store i32 0, i32* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 13
  store i32 0, i32* %72, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 -1, i32* %76, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 10
  store i32* null, i32** %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 9
  store i32* null, i32** %80, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 7
  store i32* null, i32** %82, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 6
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  store i32* null, i32** %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i32* null, i32** %92, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 11
  store i32* null, i32** %94, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 8
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* @CRYPTO_EX_INDEX_X509, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 12
  %101 = call i32 @CRYPTO_new_ex_data(i32 %97, %struct.TYPE_4__* %98, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %62
  store i32 0, i32* %5, align 4
  br label %153

104:                                              ; preds = %62
  br label %152

105:                                              ; preds = %4
  %106 = load i32, i32* @CRYPTO_EX_INDEX_X509, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 12
  %110 = call i32 @CRYPTO_free_ex_data(i32 %106, %struct.TYPE_4__* %107, i32* %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 11
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @X509_CERT_AUX_free(i32* %113)
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 10
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @ASN1_OCTET_STRING_free(i32* %117)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 9
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @AUTHORITY_KEYID_free(i32* %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 8
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @CRL_DIST_POINTS_free(i32* %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 7
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @policy_cache_free(i32* %129)
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @GENERAL_NAMES_free(i32* %133)
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @NAME_CONSTRAINTS_free(i32* %137)
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @IPAddressFamily_free, align 4
  %143 = call i32 @sk_IPAddressFamily_pop_free(i32* %141, i32 %142)
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @ASIdentifiers_free(i32* %146)
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @ASN1_OCTET_STRING_free(i32* %150)
  br label %152

152:                                              ; preds = %4, %105, %104
  store i32 1, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %103
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @CRYPTO_free_ex_data(i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @X509_CERT_AUX_free(i32*) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(i32*) #1

declare dso_local i32 @AUTHORITY_KEYID_free(i32*) #1

declare dso_local i32 @CRL_DIST_POINTS_free(i32*) #1

declare dso_local i32 @policy_cache_free(i32*) #1

declare dso_local i32 @GENERAL_NAMES_free(i32*) #1

declare dso_local i32 @NAME_CONSTRAINTS_free(i32*) #1

declare dso_local i32 @sk_IPAddressFamily_pop_free(i32*, i32) #1

declare dso_local i32 @ASIdentifiers_free(i32*) #1

declare dso_local i32 @CRYPTO_new_ex_data(i32, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
