; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_write_transition.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_write_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_CLIENT_WRITE_TRANSITION = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@WRITE_TRAN_ERROR = common dso_local global i32 0, align 4
@WRITE_TRAN_FINISHED = common dso_local global i32 0, align 4
@WRITE_TRAN_CONTINUE = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_CONNECTING = common dso_local global i32 0, align 4
@SSL_OP_ENABLE_MIDDLEBOX_COMPAT = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_FINISHED_WRITING = common dso_local global i32 0, align 4
@TLS1_FLAGS_SKIP_CERT_VERIFY = common dso_local global i32 0, align 4
@SSL_HRR_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_client_write_transition(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 6
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = call i64 @SSL_IS_TLS13(%struct.TYPE_14__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = call i32 @ossl_statem_client13_write_transition(%struct.TYPE_14__* %11)
  store i32 %12, i32* %2, align 4
  br label %219

13:                                               ; preds = %1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %17 [
    i32 128, label %24
    i32 141, label %32
    i32 133, label %36
    i32 137, label %59
    i32 129, label %80
    i32 142, label %82
    i32 138, label %86
    i32 136, label %101
    i32 131, label %105
    i32 135, label %131
    i32 134, label %135
    i32 130, label %173
    i32 132, label %177
    i32 140, label %188
    i32 139, label %201
  ]

17:                                               ; preds = %13
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %20 = load i32, i32* @SSL_F_OSSL_STATEM_CLIENT_WRITE_TRANSITION, align 4
  %21 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %22 = call i32 @SSLfatal(%struct.TYPE_14__* %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @WRITE_TRAN_ERROR, align 4
  store i32 %23, i32* %2, align 4
  br label %219

24:                                               ; preds = %13
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %30, i32* %2, align 4
  br label %219

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %13, %31
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  store i32 133, i32* %34, align 4
  %35 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %35, i32* %2, align 4
  br label %219

36:                                               ; preds = %13
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SSL_EARLY_DATA_CONNECTING, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store i32 134, i32* %51, align 4
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  store i32 129, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %56, i32* %2, align 4
  br label %219

57:                                               ; preds = %36
  %58 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %58, i32* %2, align 4
  br label %219

59:                                               ; preds = %13
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SSL_EARLY_DATA_FINISHED_WRITING, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i32 134, i32* %74, align 4
  br label %78

75:                                               ; preds = %66, %59
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  store i32 133, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %79, i32* %2, align 4
  br label %219

80:                                               ; preds = %13
  %81 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %81, i32* %2, align 4
  br label %219

82:                                               ; preds = %13
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i32 133, i32* %84, align 4
  %85 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %85, i32* %2, align 4
  br label %219

86:                                               ; preds = %13
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store i32 136, i32* %95, align 4
  br label %99

96:                                               ; preds = %86
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  store i32 131, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %100, i32* %2, align 4
  br label %219

101:                                              ; preds = %13
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  store i32 131, i32* %103, align 4
  %104 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %104, i32* %2, align 4
  br label %219

105:                                              ; preds = %13
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  store i32 135, i32* %114, align 4
  br label %118

115:                                              ; preds = %105
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  store i32 134, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @TLS1_FLAGS_SKIP_CERT_VERIFY, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  store i32 134, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %118
  %130 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %130, i32* %2, align 4
  br label %219

131:                                              ; preds = %13
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  store i32 134, i32* %133, align 4
  %134 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %134, i32* %2, align 4
  br label %219

135:                                              ; preds = %13
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SSL_HRR_PENDING, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  store i32 133, i32* %143, align 4
  br label %171

144:                                              ; preds = %135
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @SSL_EARLY_DATA_CONNECTING, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  store i32 129, i32* %152, align 4
  br label %170

153:                                              ; preds = %144
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %155 = call i32 @SSL_IS_DTLS(%struct.TYPE_14__* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %153
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  store i32 130, i32* %165, align 4
  br label %169

166:                                              ; preds = %157, %153
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  store i32 132, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169, %150
  br label %171

171:                                              ; preds = %170, %141
  %172 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %172, i32* %2, align 4
  br label %219

173:                                              ; preds = %13
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  store i32 132, i32* %175, align 4
  %176 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %176, i32* %2, align 4
  br label %219

177:                                              ; preds = %13
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  store i32 128, i32* %184, align 4
  %185 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %185, i32* %2, align 4
  br label %219

186:                                              ; preds = %177
  %187 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %187, i32* %2, align 4
  br label %219

188:                                              ; preds = %13
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  store i32 134, i32* %195, align 4
  %196 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %196, i32* %2, align 4
  br label %219

197:                                              ; preds = %188
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  store i32 128, i32* %199, align 4
  %200 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %200, i32* %2, align 4
  br label %219

201:                                              ; preds = %13
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %203 = call i32 @ssl3_renegotiate_check(%struct.TYPE_14__* %202, i32 1)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %201
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %207 = call i32 @tls_setup_handshake(%struct.TYPE_14__* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = load i32, i32* @WRITE_TRAN_ERROR, align 4
  store i32 %210, i32* %2, align 4
  br label %219

211:                                              ; preds = %205
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  store i32 133, i32* %213, align 4
  %214 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %214, i32* %2, align 4
  br label %219

215:                                              ; preds = %201
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  store i32 128, i32* %217, align 4
  %218 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %215, %211, %209, %197, %193, %186, %182, %173, %171, %131, %129, %101, %99, %82, %80, %78, %57, %55, %32, %29, %17, %10
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_14__*) #1

declare dso_local i32 @ossl_statem_client13_write_transition(%struct.TYPE_14__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @SSL_IS_DTLS(%struct.TYPE_14__*) #1

declare dso_local i32 @ssl3_renegotiate_check(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @tls_setup_handshake(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
