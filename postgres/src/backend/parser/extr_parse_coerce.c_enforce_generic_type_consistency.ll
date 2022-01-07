; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_enforce_generic_type_consistency.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_enforce_generic_type_consistency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@ANYELEMENTOID = common dso_local global i64 0, align 8
@ANYNONARRAYOID = common dso_local global i64 0, align 8
@ANYENUMOID = common dso_local global i64 0, align 8
@UNKNOWNOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"arguments declared \22anyelement\22 are not all alike\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s versus %s\00", align 1
@ANYARRAYOID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"arguments declared \22anyarray\22 are not all alike\00", align 1
@ANYRANGEOID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"arguments declared \22anyrange\22 are not all alike\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"argument declared %s is not an array but type %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"anyarray\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"argument declared %s is not consistent with argument declared %s\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"anyelement\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"argument declared %s is not a range type but type %s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"anyrange\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"could not determine polymorphic type because input has type %s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"type matched to anynonarray is an array type: %s\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"type matched to anyenum is not an enum type: %s\00", align 1
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [43 x i8] c"could not find array type for data type %s\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"could not find range type for data type %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @enforce_generic_type_consistency(i64* %0, i64* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %27 = load i64, i64* @InvalidOid, align 8
  store i64 %27, i64* %15, align 8
  %28 = load i64, i64* @InvalidOid, align 8
  store i64 %28, i64* %16, align 8
  %29 = load i64, i64* @InvalidOid, align 8
  store i64 %29, i64* %17, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @ANYELEMENTOID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %5
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @ANYNONARRAYOID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @ANYENUMOID, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %33, %5
  %42 = phi i1 [ true, %33 ], [ true, %5 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %20, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @ANYNONARRAYOID, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %21, align 4
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @ANYENUMOID, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %22, align 4
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %206, %41
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %209

56:                                               ; preds = %52
  %57 = load i64*, i64** %8, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %23, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %24, align 8
  %67 = load i64, i64* %23, align 8
  %68 = load i64, i64* @ANYELEMENTOID, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %56
  %71 = load i64, i64* %23, align 8
  %72 = load i64, i64* @ANYNONARRAYOID, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %23, align 8
  %76 = load i64, i64* @ANYENUMOID, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %123

78:                                               ; preds = %74, %70, %56
  store i32 1, i32* %20, align 4
  store i32 1, i32* %13, align 4
  %79 = load i64, i64* %23, align 8
  %80 = load i64, i64* @ANYNONARRAYOID, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %21, align 4
  br label %89

83:                                               ; preds = %78
  %84 = load i64, i64* %23, align 8
  %85 = load i64, i64* @ANYENUMOID, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 1, i32* %22, align 4
  br label %88

88:                                               ; preds = %87, %83
  br label %89

89:                                               ; preds = %88, %82
  %90 = load i64, i64* %24, align 8
  %91 = load i64, i64* @UNKNOWNOID, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 1, i32* %14, align 4
  br label %206

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i64, i64* %23, align 8
  %99 = load i64, i64* %24, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %206

102:                                              ; preds = %97, %94
  %103 = load i64, i64* %15, align 8
  %104 = call i64 @OidIsValid(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %102
  %107 = load i64, i64* %24, align 8
  %108 = load i64, i64* %15, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load i32, i32* @ERROR, align 4
  %112 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %113 = call i32 @errcode(i32 %112)
  %114 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %115 = load i64, i64* %15, align 8
  %116 = call i8* @format_type_be(i64 %115)
  %117 = load i64, i64* %24, align 8
  %118 = call i8* @format_type_be(i64 %117)
  %119 = call i32 @errdetail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %116, i8* %118)
  %120 = call i32 @ereport(i32 %111, i32 %119)
  br label %121

121:                                              ; preds = %110, %106, %102
  %122 = load i64, i64* %24, align 8
  store i64 %122, i64* %15, align 8
  br label %205

123:                                              ; preds = %74
  %124 = load i64, i64* %23, align 8
  %125 = load i64, i64* @ANYARRAYOID, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %163

127:                                              ; preds = %123
  store i32 1, i32* %13, align 4
  %128 = load i64, i64* %24, align 8
  %129 = load i64, i64* @UNKNOWNOID, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 1, i32* %14, align 4
  br label %206

132:                                              ; preds = %127
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i64, i64* %23, align 8
  %137 = load i64, i64* %24, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %206

140:                                              ; preds = %135, %132
  %141 = load i64, i64* %24, align 8
  %142 = call i64 @getBaseType(i64 %141)
  store i64 %142, i64* %24, align 8
  %143 = load i64, i64* %16, align 8
  %144 = call i64 @OidIsValid(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %140
  %147 = load i64, i64* %24, align 8
  %148 = load i64, i64* %16, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load i32, i32* @ERROR, align 4
  %152 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %153 = call i32 @errcode(i32 %152)
  %154 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %155 = load i64, i64* %16, align 8
  %156 = call i8* @format_type_be(i64 %155)
  %157 = load i64, i64* %24, align 8
  %158 = call i8* @format_type_be(i64 %157)
  %159 = call i32 @errdetail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %156, i8* %158)
  %160 = call i32 @ereport(i32 %151, i32 %159)
  br label %161

161:                                              ; preds = %150, %146, %140
  %162 = load i64, i64* %24, align 8
  store i64 %162, i64* %16, align 8
  br label %204

163:                                              ; preds = %123
  %164 = load i64, i64* %23, align 8
  %165 = load i64, i64* @ANYRANGEOID, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %203

167:                                              ; preds = %163
  store i32 1, i32* %13, align 4
  %168 = load i64, i64* %24, align 8
  %169 = load i64, i64* @UNKNOWNOID, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 1, i32* %14, align 4
  br label %206

172:                                              ; preds = %167
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load i64, i64* %23, align 8
  %177 = load i64, i64* %24, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  br label %206

180:                                              ; preds = %175, %172
  %181 = load i64, i64* %24, align 8
  %182 = call i64 @getBaseType(i64 %181)
  store i64 %182, i64* %24, align 8
  %183 = load i64, i64* %17, align 8
  %184 = call i64 @OidIsValid(i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %180
  %187 = load i64, i64* %24, align 8
  %188 = load i64, i64* %17, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %186
  %191 = load i32, i32* @ERROR, align 4
  %192 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %193 = call i32 @errcode(i32 %192)
  %194 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %195 = load i64, i64* %17, align 8
  %196 = call i8* @format_type_be(i64 %195)
  %197 = load i64, i64* %24, align 8
  %198 = call i8* @format_type_be(i64 %197)
  %199 = call i32 @errdetail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %196, i8* %198)
  %200 = call i32 @ereport(i32 %191, i32 %199)
  br label %201

201:                                              ; preds = %190, %186, %180
  %202 = load i64, i64* %24, align 8
  store i64 %202, i64* %17, align 8
  br label %203

203:                                              ; preds = %201, %163
  br label %204

204:                                              ; preds = %203, %161
  br label %205

205:                                              ; preds = %204, %121
  br label %206

206:                                              ; preds = %205, %179, %171, %139, %131, %101, %93
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %12, align 4
  br label %52

209:                                              ; preds = %52
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = load i64, i64* %10, align 8
  store i64 %213, i64* %6, align 8
  br label %532

214:                                              ; preds = %209
  %215 = load i64, i64* %16, align 8
  %216 = call i64 @OidIsValid(i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %265

218:                                              ; preds = %214
  %219 = load i64, i64* %16, align 8
  %220 = load i64, i64* @ANYARRAYOID, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = load i32, i32* %20, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %222
  %226 = load i64, i64* @ANYELEMENTOID, align 8
  store i64 %226, i64* %18, align 8
  br label %242

227:                                              ; preds = %222, %218
  %228 = load i64, i64* %16, align 8
  %229 = call i64 @get_element_type(i64 %228)
  store i64 %229, i64* %18, align 8
  %230 = load i64, i64* %18, align 8
  %231 = call i64 @OidIsValid(i64 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %241, label %233

233:                                              ; preds = %227
  %234 = load i32, i32* @ERROR, align 4
  %235 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %236 = call i32 @errcode(i32 %235)
  %237 = load i64, i64* %16, align 8
  %238 = call i8* @format_type_be(i64 %237)
  %239 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %238)
  %240 = call i32 @ereport(i32 %234, i32 %239)
  br label %241

241:                                              ; preds = %233, %227
  br label %242

242:                                              ; preds = %241, %225
  %243 = load i64, i64* %15, align 8
  %244 = call i64 @OidIsValid(i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %242
  %247 = load i64, i64* %18, align 8
  store i64 %247, i64* %15, align 8
  br label %264

248:                                              ; preds = %242
  %249 = load i64, i64* %18, align 8
  %250 = load i64, i64* %15, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %252, label %263

252:                                              ; preds = %248
  %253 = load i32, i32* @ERROR, align 4
  %254 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %255 = call i32 @errcode(i32 %254)
  %256 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %257 = load i64, i64* %16, align 8
  %258 = call i8* @format_type_be(i64 %257)
  %259 = load i64, i64* %15, align 8
  %260 = call i8* @format_type_be(i64 %259)
  %261 = call i32 @errdetail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %258, i8* %260)
  %262 = call i32 @ereport(i32 %253, i32 %261)
  br label %263

263:                                              ; preds = %252, %248
  br label %264

264:                                              ; preds = %263, %246
  br label %265

265:                                              ; preds = %264, %214
  %266 = load i64, i64* %17, align 8
  %267 = call i64 @OidIsValid(i64 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %316

269:                                              ; preds = %265
  %270 = load i64, i64* %17, align 8
  %271 = load i64, i64* @ANYRANGEOID, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %269
  %274 = load i32, i32* %20, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %273
  %277 = load i64, i64* @ANYELEMENTOID, align 8
  store i64 %277, i64* %19, align 8
  br label %293

278:                                              ; preds = %273, %269
  %279 = load i64, i64* %17, align 8
  %280 = call i64 @get_range_subtype(i64 %279)
  store i64 %280, i64* %19, align 8
  %281 = load i64, i64* %19, align 8
  %282 = call i64 @OidIsValid(i64 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %292, label %284

284:                                              ; preds = %278
  %285 = load i32, i32* @ERROR, align 4
  %286 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %287 = call i32 @errcode(i32 %286)
  %288 = load i64, i64* %17, align 8
  %289 = call i8* @format_type_be(i64 %288)
  %290 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %289)
  %291 = call i32 @ereport(i32 %285, i32 %290)
  br label %292

292:                                              ; preds = %284, %278
  br label %293

293:                                              ; preds = %292, %276
  %294 = load i64, i64* %15, align 8
  %295 = call i64 @OidIsValid(i64 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %293
  %298 = load i64, i64* %19, align 8
  store i64 %298, i64* %15, align 8
  br label %315

299:                                              ; preds = %293
  %300 = load i64, i64* %19, align 8
  %301 = load i64, i64* %15, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %303, label %314

303:                                              ; preds = %299
  %304 = load i32, i32* @ERROR, align 4
  %305 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %306 = call i32 @errcode(i32 %305)
  %307 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %308 = load i64, i64* %17, align 8
  %309 = call i8* @format_type_be(i64 %308)
  %310 = load i64, i64* %15, align 8
  %311 = call i8* @format_type_be(i64 %310)
  %312 = call i32 @errdetail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %309, i8* %311)
  %313 = call i32 @ereport(i32 %304, i32 %312)
  br label %314

314:                                              ; preds = %303, %299
  br label %315

315:                                              ; preds = %314, %297
  br label %316

316:                                              ; preds = %315, %265
  %317 = load i64, i64* %15, align 8
  %318 = call i64 @OidIsValid(i64 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %334, label %320

320:                                              ; preds = %316
  %321 = load i32, i32* %11, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = load i64, i64* @ANYELEMENTOID, align 8
  store i64 %324, i64* %15, align 8
  %325 = load i64, i64* @ANYARRAYOID, align 8
  store i64 %325, i64* %16, align 8
  %326 = load i64, i64* @ANYRANGEOID, align 8
  store i64 %326, i64* %17, align 8
  br label %333

327:                                              ; preds = %320
  %328 = load i32, i32* @ERROR, align 4
  %329 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %330 = call i32 @errcode(i32 %329)
  %331 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %332 = call i32 @ereport(i32 %328, i32 %331)
  br label %333

333:                                              ; preds = %327, %323
  br label %334

334:                                              ; preds = %333, %316
  %335 = load i32, i32* %21, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %354

337:                                              ; preds = %334
  %338 = load i64, i64* %15, align 8
  %339 = load i64, i64* @ANYELEMENTOID, align 8
  %340 = icmp ne i64 %338, %339
  br i1 %340, label %341, label %354

341:                                              ; preds = %337
  %342 = load i64, i64* %15, align 8
  %343 = call i64 @type_is_array_domain(i64 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %353

345:                                              ; preds = %341
  %346 = load i32, i32* @ERROR, align 4
  %347 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %348 = call i32 @errcode(i32 %347)
  %349 = load i64, i64* %15, align 8
  %350 = call i8* @format_type_be(i64 %349)
  %351 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* %350)
  %352 = call i32 @ereport(i32 %346, i32 %351)
  br label %353

353:                                              ; preds = %345, %341
  br label %354

354:                                              ; preds = %353, %337, %334
  %355 = load i32, i32* %22, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %374

357:                                              ; preds = %354
  %358 = load i64, i64* %15, align 8
  %359 = load i64, i64* @ANYELEMENTOID, align 8
  %360 = icmp ne i64 %358, %359
  br i1 %360, label %361, label %374

361:                                              ; preds = %357
  %362 = load i64, i64* %15, align 8
  %363 = call i32 @type_is_enum(i64 %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %373, label %365

365:                                              ; preds = %361
  %366 = load i32, i32* @ERROR, align 4
  %367 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %368 = call i32 @errcode(i32 %367)
  %369 = load i64, i64* %15, align 8
  %370 = call i8* @format_type_be(i64 %369)
  %371 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i8* %370)
  %372 = call i32 @ereport(i32 %366, i32 %371)
  br label %373

373:                                              ; preds = %365, %361
  br label %374

374:                                              ; preds = %373, %357, %354
  %375 = load i32, i32* %14, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %473

377:                                              ; preds = %374
  store i32 0, i32* %12, align 4
  br label %378

378:                                              ; preds = %469, %377
  %379 = load i32, i32* %12, align 4
  %380 = load i32, i32* %9, align 4
  %381 = icmp slt i32 %379, %380
  br i1 %381, label %382, label %472

382:                                              ; preds = %378
  %383 = load i64*, i64** %8, align 8
  %384 = load i32, i32* %12, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i64, i64* %383, i64 %385
  %387 = load i64, i64* %386, align 8
  store i64 %387, i64* %25, align 8
  %388 = load i64*, i64** %7, align 8
  %389 = load i32, i32* %12, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i64, i64* %388, i64 %390
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %26, align 8
  %393 = load i64, i64* %26, align 8
  %394 = load i64, i64* @UNKNOWNOID, align 8
  %395 = icmp ne i64 %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %382
  br label %469

397:                                              ; preds = %382
  %398 = load i64, i64* %25, align 8
  %399 = load i64, i64* @ANYELEMENTOID, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %409, label %401

401:                                              ; preds = %397
  %402 = load i64, i64* %25, align 8
  %403 = load i64, i64* @ANYNONARRAYOID, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %409, label %405

405:                                              ; preds = %401
  %406 = load i64, i64* %25, align 8
  %407 = load i64, i64* @ANYENUMOID, align 8
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %415

409:                                              ; preds = %405, %401, %397
  %410 = load i64, i64* %15, align 8
  %411 = load i64*, i64** %8, align 8
  %412 = load i32, i32* %12, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i64, i64* %411, i64 %413
  store i64 %410, i64* %414, align 8
  br label %468

415:                                              ; preds = %405
  %416 = load i64, i64* %25, align 8
  %417 = load i64, i64* @ANYARRAYOID, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %419, label %444

419:                                              ; preds = %415
  %420 = load i64, i64* %16, align 8
  %421 = call i64 @OidIsValid(i64 %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %438, label %423

423:                                              ; preds = %419
  %424 = load i64, i64* %15, align 8
  %425 = call i64 @get_array_type(i64 %424)
  store i64 %425, i64* %16, align 8
  %426 = load i64, i64* %16, align 8
  %427 = call i64 @OidIsValid(i64 %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %437, label %429

429:                                              ; preds = %423
  %430 = load i32, i32* @ERROR, align 4
  %431 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %432 = call i32 @errcode(i32 %431)
  %433 = load i64, i64* %15, align 8
  %434 = call i8* @format_type_be(i64 %433)
  %435 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8* %434)
  %436 = call i32 @ereport(i32 %430, i32 %435)
  br label %437

437:                                              ; preds = %429, %423
  br label %438

438:                                              ; preds = %437, %419
  %439 = load i64, i64* %16, align 8
  %440 = load i64*, i64** %8, align 8
  %441 = load i32, i32* %12, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i64, i64* %440, i64 %442
  store i64 %439, i64* %443, align 8
  br label %467

444:                                              ; preds = %415
  %445 = load i64, i64* %25, align 8
  %446 = load i64, i64* @ANYRANGEOID, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %448, label %466

448:                                              ; preds = %444
  %449 = load i64, i64* %17, align 8
  %450 = call i64 @OidIsValid(i64 %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %460, label %452

452:                                              ; preds = %448
  %453 = load i32, i32* @ERROR, align 4
  %454 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %455 = call i32 @errcode(i32 %454)
  %456 = load i64, i64* %15, align 8
  %457 = call i8* @format_type_be(i64 %456)
  %458 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i8* %457)
  %459 = call i32 @ereport(i32 %453, i32 %458)
  br label %460

460:                                              ; preds = %452, %448
  %461 = load i64, i64* %17, align 8
  %462 = load i64*, i64** %8, align 8
  %463 = load i32, i32* %12, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i64, i64* %462, i64 %464
  store i64 %461, i64* %465, align 8
  br label %466

466:                                              ; preds = %460, %444
  br label %467

467:                                              ; preds = %466, %438
  br label %468

468:                                              ; preds = %467, %409
  br label %469

469:                                              ; preds = %468, %396
  %470 = load i32, i32* %12, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %12, align 4
  br label %378

472:                                              ; preds = %378
  br label %473

473:                                              ; preds = %472, %374
  %474 = load i64, i64* %10, align 8
  %475 = load i64, i64* @ANYARRAYOID, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %477, label %498

477:                                              ; preds = %473
  %478 = load i64, i64* %16, align 8
  %479 = call i64 @OidIsValid(i64 %478)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %496, label %481

481:                                              ; preds = %477
  %482 = load i64, i64* %15, align 8
  %483 = call i64 @get_array_type(i64 %482)
  store i64 %483, i64* %16, align 8
  %484 = load i64, i64* %16, align 8
  %485 = call i64 @OidIsValid(i64 %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %495, label %487

487:                                              ; preds = %481
  %488 = load i32, i32* @ERROR, align 4
  %489 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %490 = call i32 @errcode(i32 %489)
  %491 = load i64, i64* %15, align 8
  %492 = call i8* @format_type_be(i64 %491)
  %493 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8* %492)
  %494 = call i32 @ereport(i32 %488, i32 %493)
  br label %495

495:                                              ; preds = %487, %481
  br label %496

496:                                              ; preds = %495, %477
  %497 = load i64, i64* %16, align 8
  store i64 %497, i64* %6, align 8
  br label %532

498:                                              ; preds = %473
  %499 = load i64, i64* %10, align 8
  %500 = load i64, i64* @ANYRANGEOID, align 8
  %501 = icmp eq i64 %499, %500
  br i1 %501, label %502, label %516

502:                                              ; preds = %498
  %503 = load i64, i64* %17, align 8
  %504 = call i64 @OidIsValid(i64 %503)
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %514, label %506

506:                                              ; preds = %502
  %507 = load i32, i32* @ERROR, align 4
  %508 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %509 = call i32 @errcode(i32 %508)
  %510 = load i64, i64* %15, align 8
  %511 = call i8* @format_type_be(i64 %510)
  %512 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i8* %511)
  %513 = call i32 @ereport(i32 %507, i32 %512)
  br label %514

514:                                              ; preds = %506, %502
  %515 = load i64, i64* %17, align 8
  store i64 %515, i64* %6, align 8
  br label %532

516:                                              ; preds = %498
  %517 = load i64, i64* %10, align 8
  %518 = load i64, i64* @ANYELEMENTOID, align 8
  %519 = icmp eq i64 %517, %518
  br i1 %519, label %528, label %520

520:                                              ; preds = %516
  %521 = load i64, i64* %10, align 8
  %522 = load i64, i64* @ANYNONARRAYOID, align 8
  %523 = icmp eq i64 %521, %522
  br i1 %523, label %528, label %524

524:                                              ; preds = %520
  %525 = load i64, i64* %10, align 8
  %526 = load i64, i64* @ANYENUMOID, align 8
  %527 = icmp eq i64 %525, %526
  br i1 %527, label %528, label %530

528:                                              ; preds = %524, %520, %516
  %529 = load i64, i64* %15, align 8
  store i64 %529, i64* %6, align 8
  br label %532

530:                                              ; preds = %524
  %531 = load i64, i64* %10, align 8
  store i64 %531, i64* %6, align 8
  br label %532

532:                                              ; preds = %530, %528, %514, %496, %212
  %533 = load i64, i64* %6, align 8
  ret i64 %533
}

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errdetail(i8*, i8*, i8*) #1

declare dso_local i8* @format_type_be(i64) #1

declare dso_local i64 @getBaseType(i64) #1

declare dso_local i64 @get_element_type(i64) #1

declare dso_local i64 @get_range_subtype(i64) #1

declare dso_local i64 @type_is_array_domain(i64) #1

declare dso_local i32 @type_is_enum(i64) #1

declare dso_local i64 @get_array_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
