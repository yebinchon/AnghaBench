; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_write_transition.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_write_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, %struct.TYPE_21__, i32, %struct.TYPE_18__*, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_SERVER_WRITE_TRANSITION = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@WRITE_TRAN_ERROR = common dso_local global i32 0, align 4
@WRITE_TRAN_CONTINUE = common dso_local global i32 0, align 4
@WRITE_TRAN_FINISHED = common dso_local global i32 0, align 4
@SSL_OP_COOKIE_EXCHANGE = common dso_local global i32 0, align 4
@SSL_aNULL = common dso_local global i32 0, align 4
@SSL_aSRP = common dso_local global i32 0, align 4
@SSL_aPSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_server_write_transition(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %5 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 5
  store %struct.TYPE_24__* %6, %struct.TYPE_24__** %4, align 8
  %7 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %8 = call i64 @SSL_IS_TLS13(%struct.TYPE_23__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = call i32 @ossl_statem_server13_write_transition(%struct.TYPE_23__* %11)
  store i32 %12, i32* %2, align 4
  br label %225

13:                                               ; preds = %1
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %17 [
    i32 140, label %24
    i32 141, label %42
    i32 132, label %44
    i32 139, label %48
    i32 142, label %87
    i32 128, label %89
    i32 137, label %147
    i32 135, label %158
    i32 131, label %167
    i32 136, label %176
    i32 129, label %180
    i32 138, label %182
    i32 130, label %206
    i32 134, label %210
    i32 133, label %214
  ]

17:                                               ; preds = %13
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %20 = load i32, i32* @SSL_F_OSSL_STATEM_SERVER_WRITE_TRANSITION, align 4
  %21 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %22 = call i32 @SSLfatal(%struct.TYPE_23__* %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @WRITE_TRAN_ERROR, align 4
  store i32 %23, i32* %2, align 4
  br label %225

24:                                               ; preds = %13
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 132
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  store i32 132, i32* %31, align 4
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  store i32 141, i32* %33, align 4
  %34 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %34, i32* %2, align 4
  br label %225

35:                                               ; preds = %24
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %37 = call i32 @tls_setup_handshake(%struct.TYPE_23__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @WRITE_TRAN_ERROR, align 4
  store i32 %40, i32* %2, align 4
  br label %225

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %13, %41
  %43 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %43, i32* %2, align 4
  br label %225

44:                                               ; preds = %13
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  store i32 140, i32* %46, align 4
  %47 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %47, i32* %2, align 4
  br label %225

48:                                               ; preds = %13
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %50 = call i32 @SSL_IS_DTLS(%struct.TYPE_23__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %61 = call i32 @SSL_get_options(%struct.TYPE_23__* %60)
  %62 = load i32, i32* @SSL_OP_COOKIE_EXCHANGE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  store i32 142, i32* %67, align 4
  br label %85

68:                                               ; preds = %59, %52, %48
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = call i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_23__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  store i32 140, i32* %79, align 4
  %80 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %80, i32* %2, align 4
  br label %225

81:                                               ; preds = %73, %68
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  store i32 128, i32* %83, align 4
  br label %84

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %65
  %86 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %86, i32* %2, align 4
  br label %225

87:                                               ; preds = %13
  %88 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %88, i32* %2, align 4
  br label %225

89:                                               ; preds = %13
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  store i32 130, i32* %102, align 4
  br label %106

103:                                              ; preds = %94
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  store i32 134, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %145

107:                                              ; preds = %89
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SSL_aNULL, align 4
  %116 = load i32, i32* @SSL_aSRP, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @SSL_aPSK, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %114, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %107
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  store i32 137, i32* %124, align 4
  br label %144

125:                                              ; preds = %107
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %127 = call i32 @send_server_key_exchange(%struct.TYPE_23__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  store i32 131, i32* %131, align 4
  br label %143

132:                                              ; preds = %125
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %134 = call i32 @send_certificate_request(%struct.TYPE_23__* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 0
  store i32 136, i32* %138, align 4
  br label %142

139:                                              ; preds = %132
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  store i32 129, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142, %129
  br label %144

144:                                              ; preds = %143, %122
  br label %145

145:                                              ; preds = %144, %106
  %146 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %146, i32* %2, align 4
  br label %225

147:                                              ; preds = %13
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  store i32 135, i32* %155, align 4
  %156 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %156, i32* %2, align 4
  br label %225

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %13, %157
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %160 = call i32 @send_server_key_exchange(%struct.TYPE_23__* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  store i32 131, i32* %164, align 4
  %165 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %165, i32* %2, align 4
  br label %225

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %13, %166
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %169 = call i32 @send_certificate_request(%struct.TYPE_23__* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  store i32 136, i32* %173, align 4
  %174 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %174, i32* %2, align 4
  br label %225

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %13, %175
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 0
  store i32 129, i32* %178, align 4
  %179 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %179, i32* %2, align 4
  br label %225

180:                                              ; preds = %13
  %181 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %181, i32* %2, align 4
  br label %225

182:                                              ; preds = %13
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  store i32 140, i32* %189, align 4
  %190 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %190, i32* %2, align 4
  br label %225

191:                                              ; preds = %182
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 0
  store i32 130, i32* %199, align 4
  br label %203

200:                                              ; preds = %191
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  store i32 134, i32* %202, align 4
  br label %203

203:                                              ; preds = %200, %197
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %205, i32* %2, align 4
  br label %225

206:                                              ; preds = %13
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 0
  store i32 134, i32* %208, align 4
  %209 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %209, i32* %2, align 4
  br label %225

210:                                              ; preds = %13
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  store i32 133, i32* %212, align 4
  %213 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %213, i32* %2, align 4
  br label %225

214:                                              ; preds = %13
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %220, i32* %2, align 4
  br label %225

221:                                              ; preds = %214
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  store i32 140, i32* %223, align 4
  %224 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %221, %219, %210, %206, %204, %187, %180, %176, %171, %162, %153, %145, %87, %85, %77, %44, %42, %39, %29, %17, %10
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_23__*) #1

declare dso_local i32 @ossl_statem_server13_write_transition(%struct.TYPE_23__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @tls_setup_handshake(%struct.TYPE_23__*) #1

declare dso_local i32 @SSL_IS_DTLS(%struct.TYPE_23__*) #1

declare dso_local i32 @SSL_get_options(%struct.TYPE_23__*) #1

declare dso_local i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_23__*) #1

declare dso_local i32 @send_server_key_exchange(%struct.TYPE_23__*) #1

declare dso_local i32 @send_certificate_request(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
