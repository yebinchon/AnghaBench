; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_read_transition.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_read_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i64, %struct.TYPE_14__, %struct.TYPE_13__*, i32, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32 }

@SSL3_MT_CLIENT_HELLO = common dso_local global i32 0, align 4
@TLS_ST_SR_CLNT_HELLO = common dso_local global i32 0, align 4
@SSL3_MT_CLIENT_KEY_EXCHANGE = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_VERIFY_FAIL_IF_NO_PEER_CERT = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_SERVER_READ_TRANSITION = common dso_local global i32 0, align 4
@SSL_R_PEER_DID_NOT_RETURN_A_CERTIFICATE = common dso_local global i32 0, align 4
@SSL3_MT_CERTIFICATE = common dso_local global i32 0, align 4
@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL3_MT_CERTIFICATE_VERIFY = common dso_local global i32 0, align 4
@SSL3_MT_NEXT_PROTO = common dso_local global i32 0, align 4
@SSL3_MT_FINISHED = common dso_local global i32 0, align 4
@TLS_ST_SR_FINISHED = common dso_local global i8* null, align 8
@SSL_READING = common dso_local global i32 0, align 4
@SSL3_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_server_read_transition(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 6
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %6, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = call i64 @SSL_IS_TLS13(%struct.TYPE_15__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ossl_statem_server13_read_transition(%struct.TYPE_15__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %185

19:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %211

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %24 [
    i32 136, label %25
    i32 135, label %25
    i32 137, label %25
    i32 128, label %34
    i32 134, label %96
    i32 131, label %104
    i32 133, label %133
    i32 132, label %141
    i32 130, label %166
    i32 129, label %176
  ]

24:                                               ; preds = %20
  br label %184

25:                                               ; preds = %20, %20, %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SSL3_MT_CLIENT_HELLO, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @TLS_ST_SR_CLNT_HELLO, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 1, i32* %3, align 4
  br label %211

33:                                               ; preds = %25
  br label %184

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SSL3_MT_CLIENT_KEY_EXCHANGE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %34
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %38
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SSL3_VERSION, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %45
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SSL_VERIFY_FAIL_IF_NO_PEER_CERT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %68 = load i32, i32* @SSL_F_OSSL_STATEM_SERVER_READ_TRANSITION, align 4
  %69 = load i32, i32* @SSL_R_PEER_DID_NOT_RETURN_A_CERTIFICATE, align 4
  %70 = call i32 @SSLfatal(%struct.TYPE_15__* %66, i32 %67, i32 %68, i32 %69)
  store i32 0, i32* %3, align 4
  br label %211

71:                                               ; preds = %58, %51
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  store i32 131, i32* %73, align 4
  store i32 1, i32* %3, align 4
  br label %211

74:                                               ; preds = %45
  br label %78

75:                                               ; preds = %38
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  store i32 131, i32* %77, align 4
  store i32 1, i32* %3, align 4
  br label %211

78:                                               ; preds = %74
  br label %95

79:                                               ; preds = %34
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @SSL3_MT_CERTIFICATE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store i32 134, i32* %92, align 4
  store i32 1, i32* %3, align 4
  br label %211

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %79
  br label %95

95:                                               ; preds = %94, %78
  br label %184

96:                                               ; preds = %20
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SSL3_MT_CLIENT_KEY_EXCHANGE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  store i32 131, i32* %102, align 4
  store i32 1, i32* %3, align 4
  br label %211

103:                                              ; preds = %96
  br label %184

104:                                              ; preds = %20
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %104
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111, %104
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  store i32 132, i32* %122, align 4
  store i32 1, i32* %3, align 4
  br label %211

123:                                              ; preds = %116
  br label %132

124:                                              ; preds = %111
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @SSL3_MT_CERTIFICATE_VERIFY, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  store i32 133, i32* %130, align 4
  store i32 1, i32* %3, align 4
  br label %211

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %123
  br label %184

133:                                              ; preds = %20
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  store i32 132, i32* %139, align 4
  store i32 1, i32* %3, align 4
  br label %211

140:                                              ; preds = %133
  br label %184

141:                                              ; preds = %20
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %141
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @SSL3_MT_NEXT_PROTO, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  store i32 130, i32* %153, align 4
  store i32 1, i32* %3, align 4
  br label %211

154:                                              ; preds = %147
  br label %165

155:                                              ; preds = %141
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i8*, i8** @TLS_ST_SR_FINISHED, align 8
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  store i32 1, i32* %3, align 4
  br label %211

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164, %154
  br label %184

166:                                              ; preds = %20
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i8*, i8** @TLS_ST_SR_FINISHED, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  store i32 1, i32* %3, align 4
  br label %211

175:                                              ; preds = %166
  br label %184

176:                                              ; preds = %20
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  store i32 132, i32* %182, align 4
  store i32 1, i32* %3, align 4
  br label %211

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183, %175, %165, %140, %132, %103, %95, %33, %24
  br label %185

185:                                              ; preds = %184, %18
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %187 = call i64 @SSL_IS_DTLS(%struct.TYPE_15__* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %185
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %205

193:                                              ; preds = %189
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 2
  store i64 0, i64* %195, align 8
  %196 = load i32, i32* @SSL_READING, align 4
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %200 = call i32* @SSL_get_rbio(%struct.TYPE_15__* %199)
  store i32* %200, i32** %7, align 8
  %201 = load i32*, i32** %7, align 8
  %202 = call i32 @BIO_clear_retry_flags(i32* %201)
  %203 = load i32*, i32** %7, align 8
  %204 = call i32 @BIO_set_retry_read(i32* %203)
  store i32 0, i32* %3, align 4
  br label %211

205:                                              ; preds = %189, %185
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %207 = load i32, i32* @SSL3_AD_UNEXPECTED_MESSAGE, align 4
  %208 = load i32, i32* @SSL_F_OSSL_STATEM_SERVER_READ_TRANSITION, align 4
  %209 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %210 = call i32 @SSLfatal(%struct.TYPE_15__* %206, i32 %207, i32 %208, i32 %209)
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %205, %193, %180, %170, %159, %151, %137, %128, %120, %100, %90, %75, %71, %65, %29, %19
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_15__*) #1

declare dso_local i32 @ossl_statem_server13_read_transition(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_15__*) #1

declare dso_local i32* @SSL_get_rbio(%struct.TYPE_15__*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_set_retry_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
