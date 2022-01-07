; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_sess.c_ssl_session_dup.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_sess.c_ssl_session_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i64, i32*, %struct.TYPE_10__, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_10__ = type { i32*, i64, i64, i64, i32*, i32* }

@CRYPTO_EX_INDEX_SSL_SESSION = common dso_local global i32 0, align 4
@SSL_F_SSL_SESSION_DUP = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @ssl_session_dup(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.TYPE_11__* @OPENSSL_malloc(i32 144)
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %6, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %9 = icmp eq %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %274

11:                                               ; preds = %2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = call i32 @memcpy(%struct.TYPE_11__* %12, %struct.TYPE_11__* %13, i32 144)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 7
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 6
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 5
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 8
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 9
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 5
  %38 = call i32 @memset(i32* %37, i32 0, i32 4)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 12
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 11
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 10
  store i32* %45, i32** %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 10
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %11
  br label %274

53:                                               ; preds = %11
  %54 = load i32, i32* @CRYPTO_EX_INDEX_SSL_SESSION, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 5
  %58 = call i32 @CRYPTO_new_ex_data(i32 %54, %struct.TYPE_11__* %55, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %274

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 9
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 9
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @X509_up_ref(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %274

73:                                               ; preds = %66
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 9
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 9
  store i32* %76, i32** %78, align 8
  br label %79

79:                                               ; preds = %73, %61
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 8
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 8
  %87 = load i32*, i32** %86, align 8
  %88 = call i32* @X509_chain_up_ref(i32* %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 8
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 8
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %274

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %79
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 7
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %97
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 7
  %105 = load i32*, i32** %104, align 8
  %106 = call i8* @OPENSSL_strdup(i32* %105)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 7
  store i32* %107, i32** %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 7
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  br label %274

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %97
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = call i8* @OPENSSL_strdup(i32* %124)
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 6
  store i32* %126, i32** %128, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 6
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  br label %274

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %116
  %136 = load i32, i32* @CRYPTO_EX_INDEX_SSL_SESSION, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 5
  %141 = call i32 @CRYPTO_dup_ex_data(i32 %136, i32* %138, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %135
  br label %274

144:                                              ; preds = %135
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %167

150:                                              ; preds = %144
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = call i8* @OPENSSL_strdup(i32* %154)
  %156 = bitcast i8* %155 to i32*
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 5
  store i32* %156, i32** %159, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 5
  %163 = load i32*, i32** %162, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %150
  br label %274

166:                                              ; preds = %150
  br label %167

167:                                              ; preds = %166, %144
  %168 = load i32, i32* %5, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %197

170:                                              ; preds = %167
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %197

176:                                              ; preds = %170
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = call i8* @OPENSSL_memdup(i32* %180, i64 %184)
  %186 = bitcast i8* %185 to i32*
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 4
  store i32* %186, i32** %189, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 4
  %193 = load i32*, i32** %192, align 8
  %194 = icmp eq i32* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %176
  br label %274

196:                                              ; preds = %176
  br label %204

197:                                              ; preds = %170, %167
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 3
  store i64 0, i64* %200, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  store i64 0, i64* %203, align 8
  br label %204

204:                                              ; preds = %197, %196
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %231

210:                                              ; preds = %204
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i8* @OPENSSL_memdup(i32* %214, i64 %218)
  %220 = bitcast i8* %219 to i32*
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  store i32* %220, i32** %223, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = icmp eq i32* %227, null
  br i1 %228, label %229, label %230

229:                                              ; preds = %210
  br label %274

230:                                              ; preds = %210
  br label %231

231:                                              ; preds = %230, %204
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %250

236:                                              ; preds = %231
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = call i8* @OPENSSL_strdup(i32* %239)
  %241 = bitcast i8* %240 to i32*
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 3
  store i32* %241, i32** %243, align 8
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 3
  %246 = load i32*, i32** %245, align 8
  %247 = icmp eq i32* %246, null
  br i1 %247, label %248, label %249

248:                                              ; preds = %236
  br label %274

249:                                              ; preds = %236
  br label %250

250:                                              ; preds = %249, %231
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %272

255:                                              ; preds = %250
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = call i8* @OPENSSL_memdup(i32* %258, i64 %261)
  %263 = bitcast i8* %262 to i32*
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 1
  store i32* %263, i32** %265, align 8
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = icmp eq i32* %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %255
  br label %274

271:                                              ; preds = %255
  br label %272

272:                                              ; preds = %271, %250
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %273, %struct.TYPE_11__** %3, align 8
  br label %280

274:                                              ; preds = %270, %248, %229, %195, %165, %143, %133, %114, %95, %72, %60, %52, %10
  %275 = load i32, i32* @SSL_F_SSL_SESSION_DUP, align 4
  %276 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %277 = call i32 @SSLerr(i32 %275, i32 %276)
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %279 = call i32 @SSL_SESSION_free(%struct.TYPE_11__* %278)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %280

280:                                              ; preds = %274, %272
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %281
}

declare dso_local %struct.TYPE_11__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @CRYPTO_new_ex_data(i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @X509_up_ref(i32*) #1

declare dso_local i32* @X509_chain_up_ref(i32*) #1

declare dso_local i8* @OPENSSL_strdup(i32*) #1

declare dso_local i32 @CRYPTO_dup_ex_data(i32, i32*, i32*) #1

declare dso_local i8* @OPENSSL_memdup(i32*, i64) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @SSL_SESSION_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
