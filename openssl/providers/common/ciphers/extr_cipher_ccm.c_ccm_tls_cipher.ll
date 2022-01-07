; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_ccm.c_ccm_tls_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_ccm.c_ccm_tls_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i8*, %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i8*, i8*, i64, i8*, i64)*, i32 (%struct.TYPE_9__*, i8*, i8*, i64, i8*, i64)*, i32 (%struct.TYPE_9__*, i8*, i32)* }

@EVP_CCM_TLS_EXPLICIT_IV_LEN = common dso_local global i64 0, align 8
@EVP_CCM_TLS_FIXED_IV_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i64*, i8*, i64)* @ccm_tls_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_tls_cipher(%struct.TYPE_9__* %0, i8* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %5
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @EVP_CCM_TLS_EXPLICIT_IV_LEN, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  %23 = icmp ult i64 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %5
  br label %135

25:                                               ; preds = %16
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* @EVP_CCM_TLS_EXPLICIT_IV_LEN, align 8
  %36 = call i32 @memcpy(i8* %31, i8* %34, i64 %35)
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @EVP_CCM_TLS_FIXED_IV_LEN, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* @EVP_CCM_TLS_EXPLICIT_IV_LEN, align 8
  %46 = call i32 @memcpy(i8* %43, i8* %44, i64 %45)
  %47 = load i64, i64* @EVP_CCM_TLS_EXPLICIT_IV_LEN, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %47, %50
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %10, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @ccm_set_iv(%struct.TYPE_9__* %54, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %37
  br label %135

59:                                               ; preds = %37
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32 (%struct.TYPE_9__*, i8*, i32)*, i32 (%struct.TYPE_9__*, i8*, i32)** %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %64(%struct.TYPE_9__* %65, i8* %68, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %59
  br label %135

75:                                               ; preds = %59
  %76 = load i64, i64* @EVP_CCM_TLS_EXPLICIT_IV_LEN, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %9, align 8
  %79 = load i64, i64* @EVP_CCM_TLS_EXPLICIT_IV_LEN, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8* %81, i8** %7, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %75
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32 (%struct.TYPE_9__*, i8*, i8*, i64, i8*, i64)*, i32 (%struct.TYPE_9__*, i8*, i8*, i64, i8*, i64)** %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 %91(%struct.TYPE_9__* %92, i8* %93, i8* %94, i64 %95, i8* %98, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %86
  br label %135

105:                                              ; preds = %86
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @EVP_CCM_TLS_EXPLICIT_IV_LEN, align 8
  %108 = add i64 %106, %107
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %108, %111
  store i64 %112, i64* %12, align 8
  br label %134

113:                                              ; preds = %75
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32 (%struct.TYPE_9__*, i8*, i8*, i64, i8*, i64)*, i32 (%struct.TYPE_9__*, i8*, i8*, i64, i8*, i64)** %117, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 %118(%struct.TYPE_9__* %119, i8* %120, i8* %121, i64 %122, i8* %125, i64 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %113
  br label %135

132:                                              ; preds = %113
  %133 = load i64, i64* %10, align 8
  store i64 %133, i64* %12, align 8
  br label %134

134:                                              ; preds = %132, %105
  store i32 1, i32* %11, align 4
  br label %135

135:                                              ; preds = %134, %131, %104, %74, %58, %24
  %136 = load i64, i64* %12, align 8
  %137 = load i64*, i64** %8, align 8
  store i64 %136, i64* %137, align 8
  %138 = load i32, i32* %11, align 4
  ret i32 %138
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ccm_set_iv(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
