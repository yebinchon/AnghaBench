; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls_construct_finished.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls_construct_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_19__, i64, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i64, i8*, i64, i64 (%struct.TYPE_20__*, i8*, i64, i32)*, i32 (%struct.TYPE_20__*, i32)* }
%struct.TYPE_14__ = type { i32 }

@SSL_PHA_REQUESTED = common dso_local global i64 0, align 8
@SSL3_CC_HANDSHAKE = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_CLIENT_WRITE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_FINISHED = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MASTER_SECRET_LABEL = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_finished(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SSL_PHA_REQUESTED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %19, %13, %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 5
  %46 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %45, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = load i32, i32* @SSL3_CC_HANDSHAKE, align 4
  %49 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 %46(%struct.TYPE_20__* %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %201

54:                                               ; preds = %39, %32, %27, %23
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %7, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %8, align 8
  br label %89

74:                                               ; preds = %54
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %7, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %74, %59
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 4
  %96 = load i64 (%struct.TYPE_20__*, i8*, i64, i32)*, i64 (%struct.TYPE_20__*, i8*, i64, i32)** %95, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i64 %96(%struct.TYPE_20__* %97, i8* %98, i64 %99, i32 %104)
  store i64 %105, i64* %6, align 8
  %106 = load i64, i64* %6, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %201

109:                                              ; preds = %89
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  store i64 %110, i64* %114, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @WPACKET_memcpy(i32* %115, i32 %120, i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %109
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %126 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %127 = load i32, i32* @SSL_F_TLS_CONSTRUCT_FINISHED, align 4
  %128 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %129 = call i32 @SSLfatal(%struct.TYPE_20__* %125, i32 %126, i32 %127, i32 %128)
  store i32 0, i32* %3, align 4
  br label %201

130:                                              ; preds = %109
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %132 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %150, label %134

134:                                              ; preds = %130
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %136 = load i32, i32* @MASTER_SECRET_LABEL, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ssl_log_secret(%struct.TYPE_20__* %135, i32 %136, i32 %141, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %201

150:                                              ; preds = %134, %130
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* @EVP_MAX_MD_SIZE, align 8
  %153 = icmp ule i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @ossl_assert(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %150
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %159 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %160 = load i32, i32* @SSL_F_TLS_CONSTRUCT_FINISHED, align 4
  %161 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %162 = call i32 @SSLfatal(%struct.TYPE_20__* %158, i32 %159, i32 %160, i32 %161)
  store i32 0, i32* %3, align 4
  br label %201

163:                                              ; preds = %150
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %184, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i64, i64* %6, align 8
  %179 = call i32 @memcpy(i32 %172, i32 %177, i64 %178)
  %180 = load i64, i64* %6, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  store i64 %180, i64* %183, align 8
  br label %200

184:                                              ; preds = %163
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i64, i64* %6, align 8
  %195 = call i32 @memcpy(i32 %188, i32 %193, i64 %194)
  %196 = load i64, i64* %6, align 8
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 1
  store i64 %196, i64* %199, align 8
  br label %200

200:                                              ; preds = %184, %168
  store i32 1, i32* %3, align 4
  br label %201

201:                                              ; preds = %200, %157, %149, %124, %108, %53
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_20__*) #1

declare dso_local i32 @WPACKET_memcpy(i32*, i32, i64) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @ssl_log_secret(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
