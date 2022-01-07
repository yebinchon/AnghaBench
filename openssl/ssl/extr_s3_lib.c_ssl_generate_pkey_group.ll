; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl_generate_pkey_group.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl_generate_pkey_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL_GENERATE_PKEY_GROUP = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS_GROUP_TYPE = common dso_local global i32 0, align 4
@TLS_GROUP_FFDHE = common dso_local global i32 0, align 4
@EVP_PKEY_DH = common dso_local global i32 0, align 4
@TLS_GROUP_CURVE_CUSTOM = common dso_local global i32 0, align 4
@EVP_PKEY_EC = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ssl_generate_pkey_group(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_3__* @tls1_group_id_lookup(i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %17 = load i32, i32* @SSL_F_SSL_GENERATE_PKEY_GROUP, align 4
  %18 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %19 = call i32 @SSLfatal(i32* %15, i32 %16, i32 %17, i32 %18)
  br label %140

20:                                               ; preds = %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TLS_GROUP_TYPE, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @TLS_GROUP_FFDHE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EVP_PKEY_DH, align 4
  %31 = call i32* @EVP_PKEY_CTX_new_id(i32 %30, i32* null)
  store i32* %31, i32** %6, align 8
  br label %45

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @TLS_GROUP_CURVE_CUSTOM, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @EVP_PKEY_CTX_new_id(i32 %39, i32* null)
  store i32* %40, i32** %6, align 8
  br label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @EVP_PKEY_EC, align 4
  %43 = call i32* @EVP_PKEY_CTX_new_id(i32 %42, i32* null)
  store i32* %43, i32** %6, align 8
  br label %44

44:                                               ; preds = %41, %36
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32*, i32** %6, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %51 = load i32, i32* @SSL_F_SSL_GENERATE_PKEY_GROUP, align 4
  %52 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %53 = call i32 @SSLfatal(i32* %49, i32 %50, i32 %51, i32 %52)
  br label %140

54:                                               ; preds = %45
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @EVP_PKEY_keygen_init(i32* %55)
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %61 = load i32, i32* @SSL_F_SSL_GENERATE_PKEY_GROUP, align 4
  %62 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %63 = call i32 @SSLfatal(i32* %59, i32 %60, i32 %61, i32 %62)
  br label %140

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @TLS_GROUP_FFDHE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %109

68:                                               ; preds = %64
  %69 = call i32* (...) @EVP_PKEY_new()
  store i32* %69, i32** %7, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32* @DH_new_by_nid(i32 %74)
  store i32* %75, i32** %9, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @EVP_PKEY_DH, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @EVP_PKEY_assign(i32* %78, i32 %79, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %77, %71, %68
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %86 = load i32, i32* @SSL_F_SSL_GENERATE_PKEY_GROUP, align 4
  %87 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %88 = call i32 @SSLfatal(i32* %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @DH_free(i32* %89)
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @EVP_PKEY_free(i32* %91)
  store i32* null, i32** %7, align 8
  br label %140

93:                                               ; preds = %77
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @EVP_PKEY_CTX_set_dh_nid(i32* %94, i32 %97)
  %99 = icmp sle i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %103 = load i32, i32* @SSL_F_SSL_GENERATE_PKEY_GROUP, align 4
  %104 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %105 = call i32 @SSLfatal(i32* %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @EVP_PKEY_free(i32* %106)
  store i32* null, i32** %7, align 8
  br label %140

108:                                              ; preds = %93
  br label %127

109:                                              ; preds = %64
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @TLS_GROUP_CURVE_CUSTOM, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load i32*, i32** %6, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32* %114, i32 %117)
  %119 = icmp sle i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %123 = load i32, i32* @SSL_F_SSL_GENERATE_PKEY_GROUP, align 4
  %124 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %125 = call i32 @SSLfatal(i32* %121, i32 %122, i32 %123, i32 %124)
  br label %140

126:                                              ; preds = %113, %109
  br label %127

127:                                              ; preds = %126, %108
  %128 = load i32*, i32** %6, align 8
  %129 = call i64 @EVP_PKEY_keygen(i32* %128, i32** %7)
  %130 = icmp sle i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load i32*, i32** %3, align 8
  %133 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %134 = load i32, i32* @SSL_F_SSL_GENERATE_PKEY_GROUP, align 4
  %135 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %136 = call i32 @SSLfatal(i32* %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @EVP_PKEY_free(i32* %137)
  store i32* null, i32** %7, align 8
  br label %139

139:                                              ; preds = %131, %127
  br label %140

140:                                              ; preds = %139, %120, %100, %83, %58, %48, %14
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @EVP_PKEY_CTX_free(i32* %141)
  %143 = load i32*, i32** %7, align 8
  ret i32* %143
}

declare dso_local %struct.TYPE_3__* @tls1_group_id_lookup(i32) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i64 @EVP_PKEY_keygen_init(i32*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32* @DH_new_by_nid(i32) #1

declare dso_local i32 @EVP_PKEY_assign(i32*, i32, i32*) #1

declare dso_local i32 @DH_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_dh_nid(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_keygen(i32*, i32**) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
