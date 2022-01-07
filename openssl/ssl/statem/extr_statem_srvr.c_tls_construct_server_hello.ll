; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_construct_server_hello.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_construct_server_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i64, i8*, i32, i64, %struct.TYPE_14__*, %struct.TYPE_19__, %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64, i8*, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 (i32, i32*, i64*)* }
%struct.TYPE_15__ = type { i32 }

@SSL_HRR_PENDING = common dso_local global i64 0, align 8
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@hrrrandom = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_SERVER_HELLO = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_SERVER = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_SERVER_HELLO = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_2_SERVER_HELLO = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_server_hello(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SSL_HRR_PENDING, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ true, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @TLS1_2_VERSION, align 4
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i32 [ %27, %26 ], [ %31, %28 ]
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @WPACKET_put_bytes_u16(i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SSL_HRR_PENDING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @hrrrandom, align 4
  br label %52

47:                                               ; preds = %38
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  br label %52

52:                                               ; preds = %47, %45
  %53 = phi i32 [ %46, %45 ], [ %51, %47 ]
  %54 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %55 = call i32 @WPACKET_memcpy(i32* %39, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52, %32
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %60 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_HELLO, align 4
  %61 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %62 = call i32 @SSLfatal(%struct.TYPE_20__* %58, i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %3, align 4
  br label %228

63:                                               ; preds = %52
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %63
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 9
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SSL_SESS_CACHE_SERVER, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %70
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79, %63
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 6
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %84, %79, %70
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %7, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %10, align 8
  br label %110

99:                                               ; preds = %89
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %7, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 6
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %10, align 8
  br label %110

110:                                              ; preds = %99, %92
  %111 = load i64, i64* %7, align 8
  %112 = icmp ugt i64 %111, 8
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %115 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %116 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_HELLO, align 4
  %117 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %118 = call i32 @SSLfatal(%struct.TYPE_20__* %114, i32 %115, i32 %116, i32 %117)
  store i32 0, i32* %3, align 4
  br label %228

119:                                              ; preds = %110
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = icmp eq %struct.TYPE_16__* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %122, %119
  store i32 0, i32* %6, align 4
  br label %138

130:                                              ; preds = %122
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %130, %129
  %139 = load i32*, i32** %5, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load i64, i64* %7, align 8
  %142 = call i32 @WPACKET_sub_memcpy_u8(i32* %139, i8* %140, i64 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %138
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i32 (i32, i32*, i64*)*, i32 (i32, i32*, i64*)** %148, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 7
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 %149(i32 %154, i32* %155, i64* %8)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %144
  %159 = load i32*, i32** %5, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @WPACKET_put_bytes_u8(i32* %159, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %158, %144, %138
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %165 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %166 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_HELLO, align 4
  %167 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %168 = call i32 @SSLfatal(%struct.TYPE_20__* %164, i32 %165, i32 %166, i32 %167)
  store i32 0, i32* %3, align 4
  br label %228

169:                                              ; preds = %158
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %171 = load i32*, i32** %5, align 8
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @SSL_HRR_PENDING, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = load i32, i32* @SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST, align 4
  br label %189

179:                                              ; preds = %169
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %181 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i32, i32* @SSL_EXT_TLS1_3_SERVER_HELLO, align 4
  br label %187

185:                                              ; preds = %179
  %186 = load i32, i32* @SSL_EXT_TLS1_2_SERVER_HELLO, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  br label %189

189:                                              ; preds = %187, %177
  %190 = phi i32 [ %178, %177 ], [ %188, %187 ]
  %191 = call i32 @tls_construct_extensions(%struct.TYPE_20__* %170, i32* %171, i32 %190, i32* null, i32 0)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %189
  store i32 0, i32* %3, align 4
  br label %228

194:                                              ; preds = %189
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @SSL_HRR_PENDING, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %214

200:                                              ; preds = %194
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 6
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = call i32 @SSL_SESSION_free(%struct.TYPE_14__* %203)
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 6
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %206, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 5
  store i64 0, i64* %208, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %210 = call i32 @create_synthetic_message_hash(%struct.TYPE_20__* %209, i32* null, i32 0, i32* null, i32 0)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %200
  store i32 0, i32* %3, align 4
  br label %228

213:                                              ; preds = %200
  br label %227

214:                                              ; preds = %194
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %214
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %223 = call i32 @ssl3_digest_cached_records(%struct.TYPE_20__* %222, i32 0)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %221
  store i32 0, i32* %3, align 4
  br label %228

226:                                              ; preds = %221, %214
  br label %227

227:                                              ; preds = %226, %213
  store i32 1, i32* %3, align 4
  br label %228

228:                                              ; preds = %227, %225, %212, %193, %163, %113, %57
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_20__*) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_memcpy(i32*, i32, i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i8*, i64) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @tls_construct_extensions(%struct.TYPE_20__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @SSL_SESSION_free(%struct.TYPE_14__*) #1

declare dso_local i32 @create_synthetic_message_hash(%struct.TYPE_20__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ssl3_digest_cached_records(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
