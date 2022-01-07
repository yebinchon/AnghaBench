; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl3_get_req_cert_type.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl3_get_req_cert_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }

@SSL_SECOP_SIGALG_MASK = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i64 0, align 8
@SSL_kGOST = common dso_local global i32 0, align 4
@TLS_CT_GOST01_SIGN = common dso_local global i32 0, align 4
@TLS_CT_GOST12_SIGN = common dso_local global i32 0, align 4
@TLS_CT_GOST12_512_SIGN = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i64 0, align 8
@SSL_kDHE = common dso_local global i32 0, align 4
@SSL3_CT_RSA_EPHEMERAL_DH = common dso_local global i32 0, align 4
@SSL3_CT_DSS_EPHEMERAL_DH = common dso_local global i32 0, align 4
@SSL_aRSA = common dso_local global i32 0, align 4
@SSL3_CT_RSA_SIGN = common dso_local global i32 0, align 4
@SSL_aDSS = common dso_local global i32 0, align 4
@SSL3_CT_DSS_SIGN = common dso_local global i32 0, align 4
@SSL_aECDSA = common dso_local global i32 0, align 4
@TLS_CT_ECDSA_SIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_get_req_cert_type(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @WPACKET_memcpy(i32* %15, i64 %20, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %130

27:                                               ; preds = %2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = load i32, i32* @SSL_SECOP_SIGALG_MASK, align 4
  %30 = call i32 @ssl_set_sig_mask(i32* %7, %struct.TYPE_12__* %28, i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TLS1_VERSION, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %27
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SSL_kGOST, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @TLS_CT_GOST01_SIGN, align 4
  %51 = call i64 @WPACKET_put_bytes_u8(i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @TLS_CT_GOST12_SIGN, align 4
  %56 = call i64 @WPACKET_put_bytes_u8(i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @TLS_CT_GOST12_512_SIGN, align 4
  %61 = call i64 @WPACKET_put_bytes_u8(i32* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %58, %53, %48
  %64 = phi i1 [ false, %53 ], [ false, %48 ], [ %62, %58 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %130

66:                                               ; preds = %43, %27
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SSL3_VERSION, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @SSL_kDHE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* @SSL3_CT_RSA_EPHEMERAL_DH, align 4
  %80 = call i64 @WPACKET_put_bytes_u8(i32* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %130

83:                                               ; preds = %77
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* @SSL3_CT_DSS_EPHEMERAL_DH, align 4
  %86 = call i64 @WPACKET_put_bytes_u8(i32* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %130

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %72, %66
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @SSL_aRSA, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* @SSL3_CT_RSA_SIGN, align 4
  %98 = call i64 @WPACKET_put_bytes_u8(i32* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %130

101:                                              ; preds = %95, %90
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @SSL_aDSS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* @SSL3_CT_DSS_SIGN, align 4
  %109 = call i64 @WPACKET_put_bytes_u8(i32* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %130

112:                                              ; preds = %106, %101
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TLS1_VERSION, align 8
  %117 = icmp sge i64 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @SSL_aECDSA, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* @TLS_CT_ECDSA_SIGN, align 4
  %126 = call i64 @WPACKET_put_bytes_u8(i32* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %130

129:                                              ; preds = %123, %118, %112
  store i32 1, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %128, %111, %100, %88, %82, %63, %14
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @WPACKET_memcpy(i32*, i64, i32) #1

declare dso_local i32 @ssl_set_sig_mask(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @WPACKET_put_bytes_u8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
