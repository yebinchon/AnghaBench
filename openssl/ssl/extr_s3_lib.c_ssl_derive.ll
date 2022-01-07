; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl_derive.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i64 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL_DERIVE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EVP_PKEY_DH = common dso_local global i64 0, align 8
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_derive(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16, %4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %22 = load i32, i32* @SSL_F_SSL_DERIVE, align 4
  %23 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %24 = call i32 @SSLfatal(%struct.TYPE_13__* %20, i32 %21, i32 %22, i32 %23)
  store i32 0, i32* %5, align 4
  br label %138

25:                                               ; preds = %16
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @EVP_PKEY_CTX_new(i32* %26, i32* null)
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i64 @EVP_PKEY_derive_init(i32* %28)
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @EVP_PKEY_derive_set_peer(i32* %32, i32* %33)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %13, align 8
  %38 = call i64 @EVP_PKEY_derive(i32* %37, i8* null, i64* %12)
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36, %31, %25
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %43 = load i32, i32* @SSL_F_SSL_DERIVE, align 4
  %44 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %45 = call i32 @SSLfatal(%struct.TYPE_13__* %41, i32 %42, i32 %43, i32 %44)
  br label %131

46:                                               ; preds = %36
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = call i64 @SSL_IS_TLS13(%struct.TYPE_13__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @EVP_PKEY_id(i32* %51)
  %53 = load i64, i64* @EVP_PKEY_DH, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @EVP_PKEY_CTX_set_dh_pad(i32* %56, i32 1)
  br label %58

58:                                               ; preds = %55, %50, %46
  %59 = load i64, i64* %12, align 8
  %60 = call i8* @OPENSSL_malloc(i64 %59)
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %66 = load i32, i32* @SSL_F_SSL_DERIVE, align 4
  %67 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %68 = call i32 @SSLfatal(%struct.TYPE_13__* %64, i32 %65, i32 %66, i32 %67)
  br label %131

69:                                               ; preds = %58
  %70 = load i32*, i32** %13, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i64 @EVP_PKEY_derive(i32* %70, i8* %71, i64* %12)
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %77 = load i32, i32* @SSL_F_SSL_DERIVE, align 4
  %78 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %79 = call i32 @SSLfatal(%struct.TYPE_13__* %75, i32 %76, i32 %77, i32 %78)
  br label %131

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %119

83:                                               ; preds = %80
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = call i64 @SSL_IS_TLS13(%struct.TYPE_13__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %83
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = call i32 @ssl_handshake_md(%struct.TYPE_13__* %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = bitcast i32* %97 to i8*
  %99 = call i32 @tls13_generate_secret(%struct.TYPE_13__* %93, i32 %95, i32* null, i32* null, i32 0, i8* %98)
  store i32 %99, i32* %10, align 4
  br label %101

100:                                              ; preds = %87
  store i32 1, i32* %10, align 4
  br label %101

101:                                              ; preds = %100, %92
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i64 @tls13_generate_handshake_secret(%struct.TYPE_13__* %105, i8* %106, i64 %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %104, %101
  %111 = phi i1 [ false, %101 ], [ %109, %104 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %10, align 4
  br label %118

113:                                              ; preds = %83
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load i64, i64* %12, align 8
  %117 = call i32 @ssl_generate_master_secret(%struct.TYPE_13__* %114, i8* %115, i64 %116, i32 0)
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %113, %110
  br label %130

119:                                              ; preds = %80
  %120 = load i8*, i8** %11, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  store i8* %120, i8** %124, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  store i64 %125, i64* %129, align 8
  store i8* null, i8** %11, align 8
  store i32 1, i32* %10, align 4
  br label %130

130:                                              ; preds = %119, %118
  br label %131

131:                                              ; preds = %130, %74, %63, %40
  %132 = load i8*, i8** %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call i32 @OPENSSL_clear_free(i8* %132, i64 %133)
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @EVP_PKEY_CTX_free(i32* %135)
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %131, %19
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_derive_init(i32*) #1

declare dso_local i64 @EVP_PKEY_derive_set_peer(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_derive(i32*, i8*, i64*) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_13__*) #1

declare dso_local i64 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_set_dh_pad(i32*, i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @tls13_generate_secret(%struct.TYPE_13__*, i32, i32*, i32*, i32, i8*) #1

declare dso_local i32 @ssl_handshake_md(%struct.TYPE_13__*) #1

declare dso_local i64 @tls13_generate_handshake_secret(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32 @ssl_generate_master_secret(%struct.TYPE_13__*, i8*, i64, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
