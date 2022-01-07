; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-des.c_px_crypt_des.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-des.c_px_crypt_des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@px_crypt_des.output = internal global [21 x i8] zeroinitializer, align 16
@des_initialised = common dso_local global i32 0, align 4
@_PASSWORD_EFMT1 = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"invalid salt\00", align 1
@_crypt_a64 = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @px_crypt_des(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @des_initialised, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 (...) @des_init()
  br label %19

19:                                               ; preds = %17, %2
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32* %20, i32** %14, align 8
  br label %21

21:                                               ; preds = %44, %19
  %22 = load i32*, i32** %14, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = sub nsw i64 %27, 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %21
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = shl i32 %33, 1
  %35 = load i32*, i32** %14, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %14, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %41, %30
  br label %21

45:                                               ; preds = %21
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %47 = bitcast i32* %46 to i8*
  %48 = call i64 @des_setkey(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i8* null, i8** %3, align 8
  br label %328

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @_PASSWORD_EFMT1, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %162

58:                                               ; preds = %51
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = icmp slt i32 %60, 9
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = call i32 @errmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %67 = call i32 @ereport(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %58
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %85, %68
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 5
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @ascii_to_bin(i8 signext %77)
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 1
  %81 = mul nsw i32 %80, 6
  %82 = shl i32 %78, %81
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %69

88:                                               ; preds = %69
  store i32 5, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %105, %88
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 9
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = call i32 @ascii_to_bin(i8 signext %97)
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, 5
  %101 = mul nsw i32 %100, 6
  %102 = shl i32 %98, %101
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %89

108:                                              ; preds = %89
  br label %109

109:                                              ; preds = %155, %108
  %110 = load i8*, i8** %4, align 8
  %111 = load i8, i8* %110, align 1
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %113, label %156

113:                                              ; preds = %109
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %115 = bitcast i32* %114 to i8*
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %117 = bitcast i32* %116 to i8*
  %118 = call i64 @des_cipher(i8* %115, i8* %117, i64 0, i32 1)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  store i8* null, i8** %3, align 8
  br label %328

121:                                              ; preds = %113
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32* %122, i32** %14, align 8
  br label %123

123:                                              ; preds = %139, %121
  %124 = load i32*, i32** %14, align 8
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %126 = ptrtoint i32* %124 to i64
  %127 = ptrtoint i32* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 4
  %130 = sub nsw i64 %129, 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %123
  %133 = load i8*, i8** %4, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br label %137

137:                                              ; preds = %132, %123
  %138 = phi i1 [ false, %123 ], [ %136, %132 ]
  br i1 %138, label %139, label %149

139:                                              ; preds = %137
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %4, align 8
  %142 = load i8, i8* %140, align 1
  %143 = sext i8 %142 to i32
  %144 = shl i32 %143, 1
  %145 = load i32*, i32** %14, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %14, align 8
  %147 = load i32, i32* %145, align 4
  %148 = xor i32 %147, %144
  store i32 %148, i32* %145, align 4
  br label %123

149:                                              ; preds = %137
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %151 = bitcast i32* %150 to i8*
  %152 = call i64 @des_setkey(i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i8* null, i8** %3, align 8
  br label %328

155:                                              ; preds = %149
  br label %109

156:                                              ; preds = %109
  %157 = load i8*, i8** %5, align 8
  %158 = call i32 @StrNCpy(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @px_crypt_des.output, i64 0, i64 0), i8* %157, i32 10)
  %159 = call i32 @strlen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @px_crypt_des.output, i64 0, i64 0))
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @px_crypt_des.output, i64 0, i64 0), i64 %160
  store i8* %161, i8** %13, align 8
  br label %202

162:                                              ; preds = %51
  store i32 25, i32* %7, align 4
  %163 = load i8*, i8** %5, align 8
  %164 = call i32 @strlen(i8* %163)
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = load i32, i32* @ERROR, align 4
  %168 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %169 = call i32 @errcode(i32 %168)
  %170 = call i32 @errmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %171 = call i32 @ereport(i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %166, %162
  %173 = load i8*, i8** %5, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = call i32 @ascii_to_bin(i8 signext %175)
  %177 = shl i32 %176, 6
  %178 = load i8*, i8** %5, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = call i32 @ascii_to_bin(i8 signext %180)
  %182 = or i32 %177, %181
  store i32 %182, i32* %8, align 4
  %183 = load i8*, i8** %5, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  store i8 %185, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @px_crypt_des.output, i64 0, i64 0), align 16
  %186 = load i8*, i8** %5, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 1
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %172
  %192 = load i8*, i8** %5, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  br label %199

196:                                              ; preds = %172
  %197 = load i8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @px_crypt_des.output, i64 0, i64 0), align 16
  %198 = sext i8 %197 to i32
  br label %199

199:                                              ; preds = %196, %191
  %200 = phi i32 [ %195, %191 ], [ %198, %196 ]
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @px_crypt_des.output, i64 0, i64 1), align 1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @px_crypt_des.output, i64 0, i64 2), i8** %13, align 8
  br label %202

202:                                              ; preds = %199, %156
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @setup_salt(i32 %203)
  %205 = load i32, i32* %7, align 4
  %206 = call i64 @do_des(i64 0, i64 0, i32* %10, i32* %11, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  store i8* null, i8** %3, align 8
  br label %328

209:                                              ; preds = %202
  %210 = load i32, i32* %10, align 4
  %211 = ashr i32 %210, 8
  store i32 %211, i32* %9, align 4
  %212 = load i8**, i8*** @_crypt_a64, align 8
  %213 = load i32, i32* %9, align 4
  %214 = ashr i32 %213, 18
  %215 = and i32 %214, 63
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %212, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = ptrtoint i8* %218 to i8
  %220 = load i8*, i8** %13, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %13, align 8
  store i8 %219, i8* %220, align 1
  %222 = load i8**, i8*** @_crypt_a64, align 8
  %223 = load i32, i32* %9, align 4
  %224 = ashr i32 %223, 12
  %225 = and i32 %224, 63
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %222, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = ptrtoint i8* %228 to i8
  %230 = load i8*, i8** %13, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %13, align 8
  store i8 %229, i8* %230, align 1
  %232 = load i8**, i8*** @_crypt_a64, align 8
  %233 = load i32, i32* %9, align 4
  %234 = ashr i32 %233, 6
  %235 = and i32 %234, 63
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %232, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = ptrtoint i8* %238 to i8
  %240 = load i8*, i8** %13, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %13, align 8
  store i8 %239, i8* %240, align 1
  %242 = load i8**, i8*** @_crypt_a64, align 8
  %243 = load i32, i32* %9, align 4
  %244 = and i32 %243, 63
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %242, i64 %245
  %247 = load i8*, i8** %246, align 8
  %248 = ptrtoint i8* %247 to i8
  %249 = load i8*, i8** %13, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %13, align 8
  store i8 %248, i8* %249, align 1
  %251 = load i32, i32* %10, align 4
  %252 = shl i32 %251, 16
  %253 = load i32, i32* %11, align 4
  %254 = ashr i32 %253, 16
  %255 = and i32 %254, 65535
  %256 = or i32 %252, %255
  store i32 %256, i32* %9, align 4
  %257 = load i8**, i8*** @_crypt_a64, align 8
  %258 = load i32, i32* %9, align 4
  %259 = ashr i32 %258, 18
  %260 = and i32 %259, 63
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %257, i64 %261
  %263 = load i8*, i8** %262, align 8
  %264 = ptrtoint i8* %263 to i8
  %265 = load i8*, i8** %13, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %13, align 8
  store i8 %264, i8* %265, align 1
  %267 = load i8**, i8*** @_crypt_a64, align 8
  %268 = load i32, i32* %9, align 4
  %269 = ashr i32 %268, 12
  %270 = and i32 %269, 63
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8*, i8** %267, i64 %271
  %273 = load i8*, i8** %272, align 8
  %274 = ptrtoint i8* %273 to i8
  %275 = load i8*, i8** %13, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %13, align 8
  store i8 %274, i8* %275, align 1
  %277 = load i8**, i8*** @_crypt_a64, align 8
  %278 = load i32, i32* %9, align 4
  %279 = ashr i32 %278, 6
  %280 = and i32 %279, 63
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %277, i64 %281
  %283 = load i8*, i8** %282, align 8
  %284 = ptrtoint i8* %283 to i8
  %285 = load i8*, i8** %13, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %13, align 8
  store i8 %284, i8* %285, align 1
  %287 = load i8**, i8*** @_crypt_a64, align 8
  %288 = load i32, i32* %9, align 4
  %289 = and i32 %288, 63
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8*, i8** %287, i64 %290
  %292 = load i8*, i8** %291, align 8
  %293 = ptrtoint i8* %292 to i8
  %294 = load i8*, i8** %13, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %13, align 8
  store i8 %293, i8* %294, align 1
  %296 = load i32, i32* %11, align 4
  %297 = shl i32 %296, 2
  store i32 %297, i32* %9, align 4
  %298 = load i8**, i8*** @_crypt_a64, align 8
  %299 = load i32, i32* %9, align 4
  %300 = ashr i32 %299, 12
  %301 = and i32 %300, 63
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8*, i8** %298, i64 %302
  %304 = load i8*, i8** %303, align 8
  %305 = ptrtoint i8* %304 to i8
  %306 = load i8*, i8** %13, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %13, align 8
  store i8 %305, i8* %306, align 1
  %308 = load i8**, i8*** @_crypt_a64, align 8
  %309 = load i32, i32* %9, align 4
  %310 = ashr i32 %309, 6
  %311 = and i32 %310, 63
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8*, i8** %308, i64 %312
  %314 = load i8*, i8** %313, align 8
  %315 = ptrtoint i8* %314 to i8
  %316 = load i8*, i8** %13, align 8
  %317 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %317, i8** %13, align 8
  store i8 %315, i8* %316, align 1
  %318 = load i8**, i8*** @_crypt_a64, align 8
  %319 = load i32, i32* %9, align 4
  %320 = and i32 %319, 63
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8*, i8** %318, i64 %321
  %323 = load i8*, i8** %322, align 8
  %324 = ptrtoint i8* %323 to i8
  %325 = load i8*, i8** %13, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %13, align 8
  store i8 %324, i8* %325, align 1
  %327 = load i8*, i8** %13, align 8
  store i8 0, i8* %327, align 1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @px_crypt_des.output, i64 0, i64 0), i8** %3, align 8
  br label %328

328:                                              ; preds = %209, %208, %154, %120, %50
  %329 = load i8*, i8** %3, align 8
  ret i8* %329
}

declare dso_local i32 @des_init(...) #1

declare dso_local i64 @des_setkey(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ascii_to_bin(i8 signext) #1

declare dso_local i64 @des_cipher(i8*, i8*, i64, i32) #1

declare dso_local i32 @StrNCpy(i8*, i8*, i32) #1

declare dso_local i32 @setup_salt(i32) #1

declare dso_local i64 @do_des(i64, i64, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
