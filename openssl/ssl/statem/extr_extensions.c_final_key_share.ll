; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions.c_final_key_share.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions.c_final_key_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, %struct.TYPE_11__, i32, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32* }

@SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST = common dso_local global i32 0, align 4
@TLSEXT_KEX_MODE_FLAG_KE = common dso_local global i32 0, align 4
@SSL_AD_MISSING_EXTENSION = common dso_local global i32 0, align 4
@SSL_F_FINAL_KEY_SHARE = common dso_local global i32 0, align 4
@SSL_R_NO_SUITABLE_KEY_SHARE = common dso_local global i32 0, align 4
@TLS1_FLAGS_STATELESS = common dso_local global i32 0, align 4
@SSL_HRR_NONE = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_HRR_PENDING = common dso_local global i64 0, align 8
@TLSEXT_KEX_MODE_FLAG_KE_DHE = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_HRR_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32)* @final_key_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @final_key_share(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = call i32 @SSL_IS_TLS13(%struct.TYPE_13__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %242

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %242

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TLSEXT_KEX_MODE_FLAG_KE, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37, %32
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = load i32, i32* @SSL_AD_MISSING_EXTENSION, align 4
  %48 = load i32, i32* @SSL_F_FINAL_KEY_SHARE, align 4
  %49 = load i32, i32* @SSL_R_NO_SUITABLE_KEY_SHARE, align 4
  %50 = call i32 @SSLfatal(%struct.TYPE_13__* %46, i32 %47, i32 %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %242

51:                                               ; preds = %37, %29, %24
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %227

56:                                               ; preds = %51
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %96

62:                                               ; preds = %56
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TLS1_FLAGS_STATELESS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %62
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SSL_HRR_NONE, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @ossl_assert(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %76
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %88 = load i32, i32* @SSL_F_FINAL_KEY_SHARE, align 4
  %89 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %90 = call i32 @SSLfatal(%struct.TYPE_13__* %86, i32 %87, i32 %88, i32 %89)
  store i32 0, i32* %4, align 4
  br label %242

91:                                               ; preds = %76
  %92 = load i64, i64* @SSL_HRR_PENDING, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  store i32 1, i32* %4, align 4
  br label %242

95:                                               ; preds = %70, %62
  br label %216

96:                                               ; preds = %56
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SSL_HRR_NONE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %156

102:                                              ; preds = %96
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %156

105:                                              ; preds = %102
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @TLSEXT_KEX_MODE_FLAG_KE_DHE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %156

118:                                              ; preds = %110, %105
  store i32 0, i32* %13, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = call i32 @tls1_get_peer_groups(%struct.TYPE_13__* %119, i32** %9, i64* %11)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = call i32 @tls1_get_supported_groups(%struct.TYPE_13__* %121, i32** %8, i64* %10)
  store i64 0, i64* %12, align 8
  br label %123

123:                                              ; preds = %140, %118
  %124 = load i64, i64* %12, align 8
  %125 = load i64, i64* %10, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %123
  %128 = load i32*, i32** %8, align 8
  %129 = load i64, i64* %12, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %13, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = load i64, i64* %11, align 8
  %136 = call i64 @check_in_list(%struct.TYPE_13__* %132, i32 %133, i32* %134, i64 %135, i32 1)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %143

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %12, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %12, align 8
  br label %123

143:                                              ; preds = %138, %123
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* %10, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  %152 = load i64, i64* @SSL_HRR_PENDING, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  store i32 1, i32* %4, align 4
  br label %242

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %155, %110, %102, %96
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @TLSEXT_KEX_MODE_FLAG_KE, align 4
  %167 = and i32 %165, %166
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %161, %156
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  br label %177

175:                                              ; preds = %169
  %176 = load i32, i32* @SSL_AD_MISSING_EXTENSION, align 4
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i32 [ %174, %173 ], [ %176, %175 ]
  %179 = load i32, i32* @SSL_F_FINAL_KEY_SHARE, align 4
  %180 = load i32, i32* @SSL_R_NO_SUITABLE_KEY_SHARE, align 4
  %181 = call i32 @SSLfatal(%struct.TYPE_13__* %170, i32 %178, i32 %179, i32 %180)
  store i32 0, i32* %4, align 4
  br label %242

182:                                              ; preds = %161
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @TLS1_FLAGS_STATELESS, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %182
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %215, label %196

196:                                              ; preds = %190
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SSL_HRR_NONE, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 @ossl_assert(i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %196
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %207 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %208 = load i32, i32* @SSL_F_FINAL_KEY_SHARE, align 4
  %209 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %210 = call i32 @SSLfatal(%struct.TYPE_13__* %206, i32 %207, i32 %208, i32 %209)
  store i32 0, i32* %4, align 4
  br label %242

211:                                              ; preds = %196
  %212 = load i64, i64* @SSL_HRR_PENDING, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  store i32 1, i32* %4, align 4
  br label %242

215:                                              ; preds = %190, %182
  br label %216

216:                                              ; preds = %215, %95
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @SSL_HRR_PENDING, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load i64, i64* @SSL_HRR_COMPLETE, align 8
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %222, %216
  br label %241

227:                                              ; preds = %51
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %240, label %230

230:                                              ; preds = %227
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %232 = call i32 @tls13_generate_handshake_secret(%struct.TYPE_13__* %231, i32* null, i32 0)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %230
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %236 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %237 = load i32, i32* @SSL_F_FINAL_KEY_SHARE, align 4
  %238 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %239 = call i32 @SSLfatal(%struct.TYPE_13__* %235, i32 %236, i32 %237, i32 %238)
  store i32 0, i32* %4, align 4
  br label %242

240:                                              ; preds = %230, %227
  br label %241

241:                                              ; preds = %240, %226
  store i32 1, i32* %4, align 4
  br label %242

242:                                              ; preds = %241, %234, %211, %205, %177, %147, %91, %85, %45, %23, %17
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_13__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @tls1_get_peer_groups(%struct.TYPE_13__*, i32**, i64*) #1

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_13__*, i32**, i64*) #1

declare dso_local i64 @check_in_list(%struct.TYPE_13__*, i32, i32*, i64, i32) #1

declare dso_local i32 @tls13_generate_handshake_secret(%struct.TYPE_13__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
