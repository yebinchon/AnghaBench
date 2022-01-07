; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_decl_initializer_alloc.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_decl_initializer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64, i8*, %struct.TYPE_29__, %struct.TYPE_31__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_35__ = type { i32, i64 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { i32 }

@VT_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown type size\00", align 1
@tok = common dso_local global i8 0, align 1
@TOK_STR = common dso_local global i8 0, align 1
@TOK_LSTR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unexpected end of file in initializer\00", align 1
@macro_ptr = common dso_local global i32 0, align 4
@VT_VALMASK = common dso_local global i32 0, align 4
@VT_LOCAL = common dso_local global i32 0, align 4
@loc = common dso_local global i32 0, align 4
@VT_CONST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"incompatible types for redefinition of '%s'\00", align 1
@VT_EXTERN = common dso_local global i32 0, align 4
@VT_SYM = common dso_local global i32 0, align 4
@vtop = common dso_local global %struct.TYPE_36__* null, align 8
@VT_WEAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_34__*, %struct.TYPE_35__*, i32, i32, i32, i8*, i32)* @decl_initializer_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decl_initializer_alloc(%struct.TYPE_34__* %0, %struct.TYPE_35__* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_32__, align 4
  %20 = alloca %struct.TYPE_30__, align 4
  %21 = alloca %struct.TYPE_31__*, align 8
  %22 = alloca %struct.TYPE_31__*, align 8
  %23 = alloca %struct.TYPE_31__*, align 8
  %24 = alloca %struct.TYPE_33__, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %8, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %25 = bitcast %struct.TYPE_32__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %21, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %27 = call i64 @is_struct(%struct.TYPE_34__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %7
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %31, align 8
  store %struct.TYPE_31__* %32, %struct.TYPE_31__** %22, align 8
  br label %33

33:                                               ; preds = %43, %29
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %35 = icmp ne %struct.TYPE_31__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %38, align 8
  %40 = icmp ne %struct.TYPE_31__* %39, null
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i1 [ false, %33 ], [ %40, %36 ]
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %45, align 8
  store %struct.TYPE_31__* %46, %struct.TYPE_31__** %22, align 8
  br label %33

47:                                               ; preds = %41
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %49 = icmp ne %struct.TYPE_31__* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VT_ARRAY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  store %struct.TYPE_31__* %67, %struct.TYPE_31__** %21, align 8
  br label %68

68:                                               ; preds = %66, %58, %50, %47
  br label %69

69:                                               ; preds = %68, %7
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %71 = call i32 @type_size(%struct.TYPE_34__* %70, i32* %16)
  store i32 %71, i32* %15, align 4
  %72 = call i32 @tok_str_new(%struct.TYPE_30__* %20)
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %77 = icmp ne %struct.TYPE_31__* %76, null
  br i1 %77, label %78, label %178

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %178

81:                                               ; preds = %78, %69
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call i32 (i8*, ...) @TCC_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %104, %89
  %91 = load i8, i8* @tok, align 1
  %92 = sext i8 %91 to i32
  %93 = load i8, i8* @TOK_STR, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load i8, i8* @tok, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* @TOK_LSTR, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %98, %100
  br label %102

102:                                              ; preds = %96, %90
  %103 = phi i1 [ true, %90 ], [ %101, %96 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = call i32 @tok_str_add_tok(%struct.TYPE_30__* %20)
  %106 = call i32 (...) @next()
  br label %90

107:                                              ; preds = %102
  br label %159

108:                                              ; preds = %86
  store i32 0, i32* %18, align 4
  br label %109

109:                                              ; preds = %156, %108
  %110 = call i64 (...) @tcc_nerr()
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  %113 = load i32, i32* %18, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %112
  %116 = load i8, i8* @tok, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 44
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i8, i8* @tok, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 59
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi i1 [ false, %115 ], [ %122, %119 ]
  br label %125

125:                                              ; preds = %123, %112
  %126 = phi i1 [ true, %112 ], [ %124, %123 ]
  br label %127

127:                                              ; preds = %125, %109
  %128 = phi i1 [ false, %109 ], [ %126, %125 ]
  br i1 %128, label %129, label %158

129:                                              ; preds = %127
  %130 = load i8, i8* @tok, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 (i8*, ...) @TCC_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %129
  %136 = call i32 @tok_str_add_tok(%struct.TYPE_30__* %20)
  %137 = load i8, i8* @tok, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 123
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* %18, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %18, align 4
  br label %156

143:                                              ; preds = %135
  %144 = load i8, i8* @tok, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 125
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = load i32, i32* %18, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = icmp sle i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = call i32 (...) @next()
  br label %158

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %143
  br label %156

156:                                              ; preds = %155, %140
  %157 = call i32 (...) @next()
  br label %109

158:                                              ; preds = %152, %127
  br label %159

159:                                              ; preds = %158, %107
  %160 = call i32 @tok_str_add(%struct.TYPE_30__* %20, i32 -1)
  %161 = call i32 @tok_str_add(%struct.TYPE_30__* %20, i32 0)
  %162 = call i32 @save_parse_state(%struct.TYPE_32__* %19)
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* @macro_ptr, align 4
  %165 = call i32 (...) @next()
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %167 = call i32 @decl_initializer(%struct.TYPE_34__* %166, i32 0, i32 1, i32 1)
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* @macro_ptr, align 4
  %170 = call i32 (...) @next()
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %172 = call i32 @type_size(%struct.TYPE_34__* %171, i32* %16)
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %159
  %176 = call i32 (i8*, ...) @TCC_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %159
  br label %178

178:                                              ; preds = %177, %78, %75
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %180 = icmp ne %struct.TYPE_31__* %179, null
  br i1 %180, label %181, label %197

181:                                              ; preds = %178
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 2
  %190 = call i32 @pointed_size(%struct.TYPE_29__* %189)
  %191 = sext i32 %190 to i64
  %192 = mul nsw i64 %187, %191
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %15, align 4
  br label %197

197:                                              ; preds = %181, %178
  %198 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %197
  %203 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %16, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %16, align 4
  br label %212

212:                                              ; preds = %208, %202
  br label %220

213:                                              ; preds = %197
  %214 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  store i32 1, i32* %16, align 4
  br label %219

219:                                              ; preds = %218, %213
  br label %220

220:                                              ; preds = %219, %212
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @VT_VALMASK, align 4
  %223 = and i32 %221, %222
  %224 = load i32, i32* @VT_LOCAL, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %248

226:                                              ; preds = %220
  %227 = load i32, i32* @loc, align 4
  %228 = load i32, i32* %15, align 4
  %229 = sub nsw i32 %227, %228
  %230 = load i32, i32* %16, align 4
  %231 = sub nsw i32 0, %230
  %232 = and i32 %229, %231
  store i32 %232, i32* @loc, align 4
  %233 = load i32, i32* @loc, align 4
  store i32 %233, i32* %17, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %226
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %17, align 4
  %241 = call %struct.TYPE_31__* @sym_push(i32 %237, %struct.TYPE_34__* %238, i32 %239, i32 %240)
  br label %247

242:                                              ; preds = %226
  %243 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %17, align 4
  %246 = call i32 @vset(%struct.TYPE_34__* %243, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %242, %236
  br label %372

248:                                              ; preds = %220
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %23, align 8
  %249 = load i32, i32* %12, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %327

251:                                              ; preds = %248
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* @VT_CONST, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %327

255:                                              ; preds = %251
  %256 = load i32, i32* %12, align 4
  %257 = call %struct.TYPE_31__* @sym_find(i32 %256)
  store %struct.TYPE_31__* %257, %struct.TYPE_31__** %23, align 8
  %258 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %259 = icmp ne %struct.TYPE_31__* %258, null
  br i1 %259, label %260, label %326

260:                                              ; preds = %255
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %264 = call i32 @is_compatible_types(%struct.TYPE_29__* %262, %struct.TYPE_34__* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %260
  %267 = load i32, i32* %12, align 4
  %268 = call i32 @get_tok_str(i32 %267, i32* null)
  %269 = call i32 (i8*, ...) @TCC_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %266, %260
  %271 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %272 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @VT_EXTERN, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %320

278:                                              ; preds = %270
  %279 = load i32, i32* @VT_EXTERN, align 4
  %280 = xor i32 %279, -1
  %281 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = and i32 %284, %280
  store i32 %285, i32* %283, align 8
  %286 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %287 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @VT_ARRAY, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %319

293:                                              ; preds = %278
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %295 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp slt i64 %299, 0
  br i1 %300, label %301, label %319

301:                                              ; preds = %293
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_31__*, %struct.TYPE_31__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp sge i64 %306, 0
  br i1 %307, label %308, label %319

308:                                              ; preds = %301
  %309 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_31__*, %struct.TYPE_31__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %317, i32 0, i32 0
  store i64 %313, i64* %318, align 8
  br label %319

319:                                              ; preds = %308, %301, %293, %278
  br label %325

320:                                              ; preds = %270
  %321 = load i32, i32* %11, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %320
  br label %373

324:                                              ; preds = %320
  br label %325

325:                                              ; preds = %324, %319
  br label %326

326:                                              ; preds = %325, %255
  br label %327

327:                                              ; preds = %326, %251, %248
  %328 = load i32, i32* %12, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %348

330:                                              ; preds = %327
  %331 = load i32, i32* %14, align 4
  %332 = load i32, i32* @VT_CONST, align 4
  %333 = icmp ne i32 %331, %332
  br i1 %333, label %337, label %334

334:                                              ; preds = %330
  %335 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %336 = icmp ne %struct.TYPE_31__* %335, null
  br i1 %336, label %347, label %337

337:                                              ; preds = %334, %330
  %338 = load i32, i32* %12, align 4
  %339 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %340 = load i32, i32* %10, align 4
  %341 = load i32, i32* @VT_SYM, align 4
  %342 = or i32 %340, %341
  %343 = call %struct.TYPE_31__* @sym_push(i32 %338, %struct.TYPE_34__* %339, i32 %342, i32 0)
  store %struct.TYPE_31__* %343, %struct.TYPE_31__** %23, align 8
  %344 = load i8*, i8** %13, align 8
  %345 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %346 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %345, i32 0, i32 1
  store i8* %344, i8** %346, align 8
  br label %347

347:                                              ; preds = %337, %334
  br label %358

348:                                              ; preds = %327
  %349 = bitcast %struct.TYPE_33__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %349, i8 0, i64 4, i1 false)
  %350 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %351 = load i32, i32* @VT_CONST, align 4
  %352 = load i32, i32* @VT_SYM, align 4
  %353 = or i32 %351, %352
  %354 = call i32 @vsetc(%struct.TYPE_34__* %350, i32 %353, %struct.TYPE_33__* %24)
  %355 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %356 = load %struct.TYPE_36__*, %struct.TYPE_36__** @vtop, align 8
  %357 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %356, i32 0, i32 0
  store %struct.TYPE_31__* %355, %struct.TYPE_31__** %357, align 8
  br label %358

358:                                              ; preds = %348, %347
  %359 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @VT_WEAK, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %358
  %366 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %367 = icmp ne %struct.TYPE_31__* %366, null
  br i1 %367, label %368, label %371

368:                                              ; preds = %365
  %369 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %370 = call i32 @weaken_symbol(%struct.TYPE_31__* %369)
  br label %371

371:                                              ; preds = %368, %365, %358
  br label %372

372:                                              ; preds = %371, %247
  br label %373

373:                                              ; preds = %372, %323
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @is_struct(%struct.TYPE_34__*) #2

declare dso_local i32 @type_size(%struct.TYPE_34__*, i32*) #2

declare dso_local i32 @tok_str_new(%struct.TYPE_30__*) #2

declare dso_local i32 @TCC_ERR(i8*, ...) #2

declare dso_local i32 @tok_str_add_tok(%struct.TYPE_30__*) #2

declare dso_local i32 @next(...) #2

declare dso_local i64 @tcc_nerr(...) #2

declare dso_local i32 @tok_str_add(%struct.TYPE_30__*, i32) #2

declare dso_local i32 @save_parse_state(%struct.TYPE_32__*) #2

declare dso_local i32 @decl_initializer(%struct.TYPE_34__*, i32, i32, i32) #2

declare dso_local i32 @pointed_size(%struct.TYPE_29__*) #2

declare dso_local %struct.TYPE_31__* @sym_push(i32, %struct.TYPE_34__*, i32, i32) #2

declare dso_local i32 @vset(%struct.TYPE_34__*, i32, i32) #2

declare dso_local %struct.TYPE_31__* @sym_find(i32) #2

declare dso_local i32 @is_compatible_types(%struct.TYPE_29__*, %struct.TYPE_34__*) #2

declare dso_local i32 @get_tok_str(i32, i32*) #2

declare dso_local i32 @vsetc(%struct.TYPE_34__*, i32, %struct.TYPE_33__*) #2

declare dso_local i32 @weaken_symbol(%struct.TYPE_31__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
