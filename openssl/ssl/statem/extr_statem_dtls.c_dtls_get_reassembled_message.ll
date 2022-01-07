; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_dtls.c_dtls_get_reassembled_message.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_dtls.c_dtls_get_reassembled_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i8*, %struct.TYPE_24__*, %struct.TYPE_23__*, i32, i32, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_25__*, i32)*, %struct.TYPE_22__, %struct.TYPE_21__*, i32, i32, %struct.TYPE_19__, i64 }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_25__*, i32, i32*, i8*, i32, i32, i64*)* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.hm_header_st = type { i64, i64, i64, i64 }

@DTLS1_HM_HEADER_LENGTH = common dso_local global i32 0, align 4
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@SSL_READING = common dso_local global i8* null, align 8
@SSL3_RT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL3_MT_CCS = common dso_local global i8 0, align 1
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_F_DTLS_GET_REASSEMBLED_MESSAGE = common dso_local global i32 0, align 4
@SSL_R_BAD_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_BAD_LENGTH = common dso_local global i32 0, align 4
@TLS_ST_OK = common dso_local global i64 0, align 8
@SSL3_MT_HELLO_REQUEST = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32*, i64*)* @dtls_get_reassembled_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtls_get_reassembled_message(%struct.TYPE_25__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hm_header_st, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %20 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32*, i32** %6, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %223, %3
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %27 = call i32 @dtls1_retrieve_buffered_fragment(%struct.TYPE_25__* %26, i64* %12)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %291

31:                                               ; preds = %25
  %32 = load i32, i32* %14, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %291

40:                                               ; preds = %31
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_25__*, i32, i32*, i8*, i32, i32, i64*)*, i32 (%struct.TYPE_25__*, i32, i32*, i8*, i32, i32, i64*)** %44, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %47 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %48 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %49 = call i32 %45(%struct.TYPE_25__* %46, i32 %47, i32* %15, i8* %23, i32 %48, i32 0, i64* %17)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load i8*, i8** @SSL_READING, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i64*, i64** %7, align 8
  store i64 0, i64* %56, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %291

57:                                               ; preds = %40
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @SSL3_RT_CHANGE_CIPHER_SPEC, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %108

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, i8* %23, i64 0
  %63 = load i8, i8* %62, align 16
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @SSL3_MT_CCS, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %70 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %71 = load i32, i32* @SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, align 4
  %72 = load i32, i32* @SSL_R_BAD_CHANGE_CIPHER_SPEC, align 4
  %73 = call i32 @SSLfatal(%struct.TYPE_25__* %69, i32 %70, i32 %71, i32 %72)
  br label %287

74:                                               ; preds = %61
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %17, align 8
  %81 = call i32 @memcpy(i64 %79, i8* %23, i64 %80)
  %82 = load i64, i64* %17, align 8
  %83 = sub i64 %82, 1
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 12
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 11
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 8
  %99 = load i64, i64* %17, align 8
  %100 = sub i64 %99, 1
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 11
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  store i64 %100, i64* %104, align 8
  %105 = load i64, i64* %17, align 8
  %106 = sub i64 %105, 1
  %107 = load i64*, i64** %7, align 8
  store i64 %106, i64* %107, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %291

108:                                              ; preds = %57
  %109 = load i64, i64* %17, align 8
  %110 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp ne i64 %109, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %115 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %116 = load i32, i32* @SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, align 4
  %117 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %118 = call i32 @SSLfatal(%struct.TYPE_25__* %114, i32 %115, i32 %116, i32 %117)
  br label %287

119:                                              ; preds = %108
  %120 = call i32 @dtls1_get_message_header(i8* %23, %struct.hm_header_st* %16)
  %121 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %16, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %10, align 8
  %123 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %16, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %11, align 8
  %125 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %16, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* %12, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 10
  %130 = call i64 @RECORD_LAYER_get_rrec_length(i32* %129)
  %131 = icmp ugt i64 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %119
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %134 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %135 = load i32, i32* @SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, align 4
  %136 = load i32, i32* @SSL_R_BAD_LENGTH, align 4
  %137 = call i32 @SSLfatal(%struct.TYPE_25__* %133, i32 %134, i32 %135, i32 %136)
  br label %287

138:                                              ; preds = %119
  %139 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %16, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %140, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %138
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %149 = call i32 @dtls1_process_out_of_seq_message(%struct.TYPE_25__* %148, %struct.hm_header_st* %16)
  %150 = load i32*, i32** %6, align 8
  store i32 %149, i32* %150, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %291

151:                                              ; preds = %138
  %152 = load i64, i64* %12, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* %10, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %160 = call i32 @dtls1_reassemble_fragment(%struct.TYPE_25__* %159, %struct.hm_header_st* %16)
  %161 = load i32*, i32** %6, align 8
  store i32 %160, i32* %161, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %291

162:                                              ; preds = %154, %151
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %232, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %232

175:                                              ; preds = %167
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 7
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @TLS_ST_OK, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %232

182:                                              ; preds = %175
  %183 = getelementptr inbounds i8, i8* %23, i64 0
  %184 = load i8, i8* %183, align 16
  %185 = zext i8 %184 to i32
  %186 = load i8, i8* @SSL3_MT_HELLO_REQUEST, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %232

189:                                              ; preds = %182
  %190 = getelementptr inbounds i8, i8* %23, i64 1
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %226

194:                                              ; preds = %189
  %195 = getelementptr inbounds i8, i8* %23, i64 2
  %196 = load i8, i8* %195, align 2
  %197 = zext i8 %196 to i32
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %226

199:                                              ; preds = %194
  %200 = getelementptr inbounds i8, i8* %23, i64 3
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %199
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 6
  %207 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_25__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_25__*, i32)** %206, align 8
  %208 = icmp ne i32 (i32, i32, i32, i8*, i32, %struct.TYPE_25__*, i32)* %207, null
  br i1 %208, label %209, label %223

209:                                              ; preds = %204
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 6
  %212 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_25__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_25__*, i32)** %211, align 8
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %217 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = call i32 %212(i32 0, i32 %215, i32 %216, i8* %23, i32 %217, %struct.TYPE_25__* %218, i32 %221)
  br label %223

223:                                              ; preds = %209, %204
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 0
  store i64 0, i64* %225, align 8
  br label %25

226:                                              ; preds = %199, %194, %189
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %228 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %229 = load i32, i32* @SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, align 4
  %230 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %231 = call i32 @SSLfatal(%struct.TYPE_25__* %227, i32 %228, i32 %229, i32 %230)
  br label %287

232:                                              ; preds = %182, %175, %167, %162
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %234 = call i32 @dtls1_preprocess_fragment(%struct.TYPE_25__* %233, %struct.hm_header_st* %16)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %232
  br label %287

237:                                              ; preds = %232
  %238 = load i64, i64* %12, align 8
  %239 = icmp ugt i64 %238, 0
  br i1 %239, label %240, label %271

240:                                              ; preds = %237
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 3
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = inttoptr i64 %245 to i8*
  %247 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  store i8* %249, i8** %19, align 8
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  %254 = load i32 (%struct.TYPE_25__*, i32, i32*, i8*, i32, i32, i64*)*, i32 (%struct.TYPE_25__*, i32, i32*, i8*, i32, i32, i64*)** %253, align 8
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %256 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %257 = load i8*, i8** %19, align 8
  %258 = load i64, i64* %11, align 8
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  %260 = load i64, i64* %12, align 8
  %261 = trunc i64 %260 to i32
  %262 = call i32 %254(%struct.TYPE_25__* %255, i32 %256, i32* null, i8* %259, i32 %261, i32 0, i64* %17)
  store i32 %262, i32* %13, align 4
  %263 = load i32, i32* %13, align 4
  %264 = icmp sle i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %240
  %266 = load i8*, i8** @SSL_READING, align 8
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 1
  store i8* %266, i8** %268, align 8
  %269 = load i64*, i64** %7, align 8
  store i64 0, i64* %269, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %291

270:                                              ; preds = %240
  br label %272

271:                                              ; preds = %237
  store i64 0, i64* %17, align 8
  br label %272

272:                                              ; preds = %271, %270
  %273 = load i64, i64* %17, align 8
  %274 = load i64, i64* %12, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %278 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %279 = load i32, i32* @SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, align 4
  %280 = load i32, i32* @SSL_R_BAD_LENGTH, align 4
  %281 = call i32 @SSLfatal(%struct.TYPE_25__* %277, i32 %278, i32 %279, i32 %280)
  br label %287

282:                                              ; preds = %272
  %283 = load i64, i64* %12, align 8
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 0
  store i64 %283, i64* %285, align 8
  %286 = load i64*, i64** %7, align 8
  store i64 %283, i64* %286, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %291

287:                                              ; preds = %276, %236, %226, %132, %113, %68
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 0
  store i64 0, i64* %289, align 8
  %290 = load i64*, i64** %7, align 8
  store i64 0, i64* %290, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %291

291:                                              ; preds = %287, %282, %265, %158, %147, %74, %52, %34, %30
  %292 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %292)
  %293 = load i32, i32* %4, align 4
  ret i32 %293
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dtls1_retrieve_buffered_fragment(%struct.TYPE_25__*, i64*) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_25__*, i32, i32, i32) #2

declare dso_local i32 @memcpy(i64, i8*, i64) #2

declare dso_local i32 @dtls1_get_message_header(i8*, %struct.hm_header_st*) #2

declare dso_local i64 @RECORD_LAYER_get_rrec_length(i32*) #2

declare dso_local i32 @dtls1_process_out_of_seq_message(%struct.TYPE_25__*, %struct.hm_header_st*) #2

declare dso_local i32 @dtls1_reassemble_fragment(%struct.TYPE_25__*, %struct.hm_header_st*) #2

declare dso_local i32 @dtls1_preprocess_fragment(%struct.TYPE_25__*, %struct.hm_header_st*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
