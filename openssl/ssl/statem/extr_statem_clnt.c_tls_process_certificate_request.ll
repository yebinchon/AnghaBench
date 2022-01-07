; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_certificate_request.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_certificate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_14__, i64, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i32*, i64* }

@SSL_PKEY_NUM = common dso_local global i64 0, align 8
@SSL_SENT_SHUTDOWN = common dso_local global i32 0, align 4
@MSG_PROCESS_FINISHED_READING = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@SSL_R_BAD_LENGTH = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_SIGNATURE_ALGORITHMS_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_PHA_REQUESTED = common dso_local global i64 0, align 8
@MSG_PROCESS_CONTINUE_READING = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_PROCESSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_certificate_request(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @SSL_PKEY_NUM, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %16
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %6, align 8
  br label %12

27:                                               ; preds = %12
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = call i64 @SSL_IS_TLS13(%struct.TYPE_15__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %118

31:                                               ; preds = %27
  store i32* null, i32** %9, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %39, i32* %3, align 4
  br label %222

40:                                               ; preds = %31
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @OPENSSL_free(i32* %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @OPENSSL_free(i32* %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 4
  store i32* null, i32** %60, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @PACKET_get_length_prefixed_1(i32* %61, i32* %7)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %40
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 3
  %69 = call i32 @PACKET_memdup(i32* %7, i32** %66, i64* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64, %40
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %74 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %75 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %76 = call i32 @SSLfatal(%struct.TYPE_15__* %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %77, i32* %3, align 4
  br label %222

78:                                               ; preds = %64
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @PACKET_get_length_prefixed_2(i32* %79, i32* %8)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %85 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %86 = load i32, i32* @SSL_R_BAD_LENGTH, align 4
  %87 = call i32 @SSLfatal(%struct.TYPE_15__* %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %88, i32* %3, align 4
  br label %222

89:                                               ; preds = %78
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = load i32, i32* @SSL_EXT_TLS1_3_CERTIFICATE_REQUEST, align 4
  %92 = call i32 @tls_collect_extensions(%struct.TYPE_15__* %90, i32* %8, i32 %91, i32** %9, i32* null, i32 1)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = load i32, i32* @SSL_EXT_TLS1_3_CERTIFICATE_REQUEST, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @tls_parse_all_extensions(%struct.TYPE_15__* %95, i32 %96, i32* %97, i32* null, i32 0, i32 1)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %94, %89
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @OPENSSL_free(i32* %101)
  %103 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %103, i32* %3, align 4
  br label %222

104:                                              ; preds = %94
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @OPENSSL_free(i32* %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = call i32 @tls1_process_sigalgs(%struct.TYPE_15__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %113 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %114 = load i32, i32* @SSL_R_BAD_LENGTH, align 4
  %115 = call i32 @SSLfatal(%struct.TYPE_15__* %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %116, i32* %3, align 4
  br label %222

117:                                              ; preds = %104
  br label %193

118:                                              ; preds = %27
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @PACKET_get_length_prefixed_1(i32* %119, i32* %10)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %118
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %125 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %126 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %127 = call i32 @SSLfatal(%struct.TYPE_15__* %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %128, i32* %3, align 4
  br label %222

129:                                              ; preds = %118
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = call i32 @PACKET_memdup(i32* %10, i32** %133, i64* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %129
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %143 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %144 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %145 = call i32 @SSLfatal(%struct.TYPE_15__* %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %146, i32* %3, align 4
  br label %222

147:                                              ; preds = %129
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_15__* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %185

151:                                              ; preds = %147
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @PACKET_get_length_prefixed_2(i32* %152, i32* %11)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %158 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %159 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %160 = call i32 @SSLfatal(%struct.TYPE_15__* %156, i32 %157, i32 %158, i32 %159)
  %161 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %161, i32* %3, align 4
  br label %222

162:                                              ; preds = %151
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = call i32 @tls1_save_sigalgs(%struct.TYPE_15__* %163, i32* %11, i32 0)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %162
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %168 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %169 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %170 = load i32, i32* @SSL_R_SIGNATURE_ALGORITHMS_ERROR, align 4
  %171 = call i32 @SSLfatal(%struct.TYPE_15__* %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %172, i32* %3, align 4
  br label %222

173:                                              ; preds = %162
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %175 = call i32 @tls1_process_sigalgs(%struct.TYPE_15__* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %173
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %179 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %180 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %181 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %182 = call i32 @SSLfatal(%struct.TYPE_15__* %178, i32 %179, i32 %180, i32 %181)
  %183 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %183, i32* %3, align 4
  br label %222

184:                                              ; preds = %173
  br label %185

185:                                              ; preds = %184, %147
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @parse_ca_names(%struct.TYPE_15__* %186, i32* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %185
  %191 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %191, i32* %3, align 4
  br label %222

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192, %117
  %194 = load i32*, i32** %5, align 8
  %195 = call i64 @PACKET_remaining(i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %193
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %199 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %200 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %201 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %202 = call i32 @SSLfatal(%struct.TYPE_15__* %198, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %203, i32* %3, align 4
  br label %222

204:                                              ; preds = %193
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %210 = call i64 @SSL_IS_TLS13(%struct.TYPE_15__* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %204
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @SSL_PHA_REQUESTED, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = load i32, i32* @MSG_PROCESS_CONTINUE_READING, align 4
  store i32 %219, i32* %3, align 4
  br label %222

220:                                              ; preds = %212, %204
  %221 = load i32, i32* @MSG_PROCESS_CONTINUE_PROCESSING, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %220, %218, %197, %190, %177, %166, %155, %140, %122, %110, %100, %82, %71, %38
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_15__*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @PACKET_memdup(i32*, i32**, i64*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @tls_collect_extensions(%struct.TYPE_15__*, i32*, i32, i32**, i32*, i32) #1

declare dso_local i32 @tls_parse_all_extensions(%struct.TYPE_15__*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @tls1_process_sigalgs(%struct.TYPE_15__*) #1

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_15__*) #1

declare dso_local i32 @tls1_save_sigalgs(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @parse_ca_names(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
