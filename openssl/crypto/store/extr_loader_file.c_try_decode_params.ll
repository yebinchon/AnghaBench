; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_try_decode_params.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_try_decode_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 (i32*, i8**, i64)*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"PARAMETERS\00", align 1
@OSSL_STORE_F_TRY_DECODE_PARAMS = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@ASN1_PKEY_ALIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i64, i8**, i32*, i32*, i8*)* @try_decode_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @try_decode_params(i8* %0, i8* %1, i8* %2, i64 %3, i8** %4, i32* %5, i32* %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_4__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8** %4, i8*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i32* null, i32** %20, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %21, align 8
  store i32 0, i32* %22, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @pem_check_suffix(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %19, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32* null, i32** %9, align 8
  br label %158

33:                                               ; preds = %28
  %34 = load i32*, i32** %15, align 8
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %8
  %36 = load i32, i32* %19, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = call i32* (...) @EVP_PKEY_new()
  store i32* %39, i32** %20, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @OSSL_STORE_F_TRY_DECODE_PARAMS, align 4
  %43 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %44 = call i32 @OSSL_STOREerr(i32 %42, i32 %43)
  store i32* null, i32** %9, align 8
  br label %158

45:                                               ; preds = %38
  %46 = load i32*, i32** %20, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %19, align 4
  %49 = call i64 @EVP_PKEY_set_type_str(i32* %46, i8* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load i32*, i32** %20, align 8
  %53 = call %struct.TYPE_4__* @EVP_PKEY_get0_asn1(i32* %52)
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %21, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64 (i32*, i8**, i64)*, i64 (i32*, i8**, i64)** %57, align 8
  %59 = icmp ne i64 (i32*, i8**, i64)* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64 (i32*, i8**, i64)*, i64 (i32*, i8**, i64)** %62, align 8
  %64 = load i32*, i32** %20, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i64 %63(i32* %64, i8** %12, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 1, i32* %22, align 4
  br label %69

69:                                               ; preds = %68, %60, %55, %51, %45
  br label %144

70:                                               ; preds = %35
  store i32* null, i32** %24, align 8
  store i32 0, i32* %23, align 4
  br label %71

71:                                               ; preds = %133, %70
  %72 = load i32, i32* %23, align 4
  %73 = call i32 (...) @EVP_PKEY_asn1_get_count()
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %136

75:                                               ; preds = %71
  %76 = load i8*, i8** %12, align 8
  store i8* %76, i8** %25, align 8
  %77 = load i32*, i32** %24, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = call i32* (...) @EVP_PKEY_new()
  store i32* %80, i32** %24, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @OSSL_STORE_F_TRY_DECODE_PARAMS, align 4
  %84 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %85 = call i32 @OSSL_STOREerr(i32 %83, i32 %84)
  br label %136

86:                                               ; preds = %79, %75
  %87 = load i32, i32* %23, align 4
  %88 = call %struct.TYPE_4__* @EVP_PKEY_asn1_get0(i32 %87)
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %21, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ASN1_PKEY_ALIAS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %133

96:                                               ; preds = %86
  %97 = load i32*, i32** %24, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @EVP_PKEY_set_type(i32* %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %96
  %104 = load i32*, i32** %24, align 8
  %105 = call %struct.TYPE_4__* @EVP_PKEY_get0_asn1(i32* %104)
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %21, align 8
  %106 = icmp ne %struct.TYPE_4__* %105, null
  br i1 %106, label %107, label %132

107:                                              ; preds = %103
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i64 (i32*, i8**, i64)*, i64 (i32*, i8**, i64)** %109, align 8
  %111 = icmp ne i64 (i32*, i8**, i64)* %110, null
  br i1 %111, label %112, label %132

112:                                              ; preds = %107
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64 (i32*, i8**, i64)*, i64 (i32*, i8**, i64)** %114, align 8
  %116 = load i32*, i32** %24, align 8
  %117 = load i64, i64* %13, align 8
  %118 = call i64 %115(i32* %116, i8** %25, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %112
  %121 = load i32*, i32** %20, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32*, i32** %24, align 8
  %125 = call i32 @EVP_PKEY_free(i32* %124)
  br label %128

126:                                              ; preds = %120
  %127 = load i32*, i32** %24, align 8
  store i32* %127, i32** %20, align 8
  br label %128

128:                                              ; preds = %126, %123
  store i32* null, i32** %24, align 8
  %129 = load i32*, i32** %15, align 8
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %128, %112, %107, %103, %96
  br label %133

133:                                              ; preds = %132, %95
  %134 = load i32, i32* %23, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %23, align 4
  br label %71

136:                                              ; preds = %82, %71
  %137 = load i32*, i32** %24, align 8
  %138 = call i32 @EVP_PKEY_free(i32* %137)
  %139 = load i32*, i32** %15, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 1, i32* %22, align 4
  br label %143

143:                                              ; preds = %142, %136
  br label %144

144:                                              ; preds = %143, %69
  %145 = load i32, i32* %22, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32*, i32** %20, align 8
  %149 = call i32* @OSSL_STORE_INFO_new_PARAMS(i32* %148)
  store i32* %149, i32** %18, align 8
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32*, i32** %18, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32*, i32** %20, align 8
  %155 = call i32 @EVP_PKEY_free(i32* %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i32*, i32** %18, align 8
  store i32* %157, i32** %9, align 8
  br label %158

158:                                              ; preds = %156, %41, %32
  %159 = load i32*, i32** %9, align 8
  ret i32* %159
}

declare dso_local i32 @pem_check_suffix(i8*, i8*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

declare dso_local i64 @EVP_PKEY_set_type_str(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @EVP_PKEY_get0_asn1(i32*) #1

declare dso_local i32 @EVP_PKEY_asn1_get_count(...) #1

declare dso_local %struct.TYPE_4__* @EVP_PKEY_asn1_get0(i32) #1

declare dso_local i64 @EVP_PKEY_set_type(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32* @OSSL_STORE_INFO_new_PARAMS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
