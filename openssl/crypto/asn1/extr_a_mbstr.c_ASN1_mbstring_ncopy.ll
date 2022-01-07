; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_mbstr.c_ASN1_mbstring_ncopy.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_mbstr.c_ASN1_mbstring_ncopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32 }

@DIRSTRING_TYPE = common dso_local global i64 0, align 8
@ASN1_F_ASN1_MBSTRING_NCOPY = common dso_local global i32 0, align 4
@ASN1_R_INVALID_BMPSTRING_LENGTH = common dso_local global i32 0, align 4
@ASN1_R_INVALID_UNIVERSALSTRING_LENGTH = common dso_local global i32 0, align 4
@in_utf8 = common dso_local global i32 0, align 4
@ASN1_R_INVALID_UTF8STRING = common dso_local global i32 0, align 4
@ASN1_R_UNKNOWN_FORMAT = common dso_local global i32 0, align 4
@ASN1_R_STRING_TOO_SHORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"minsize=\00", align 1
@ASN1_R_STRING_TOO_LONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"maxsize=\00", align 1
@type_str = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_CHARACTERS = common dso_local global i32 0, align 4
@B_ASN1_NUMERICSTRING = common dso_local global i64 0, align 8
@V_ASN1_NUMERICSTRING = common dso_local global i32 0, align 4
@B_ASN1_PRINTABLESTRING = common dso_local global i64 0, align 8
@V_ASN1_PRINTABLESTRING = common dso_local global i32 0, align 4
@B_ASN1_IA5STRING = common dso_local global i64 0, align 8
@V_ASN1_IA5STRING = common dso_local global i32 0, align 4
@B_ASN1_T61STRING = common dso_local global i64 0, align 8
@V_ASN1_T61STRING = common dso_local global i32 0, align 4
@B_ASN1_BMPSTRING = common dso_local global i64 0, align 8
@V_ASN1_BMPSTRING = common dso_local global i32 0, align 4
@B_ASN1_UNIVERSALSTRING = common dso_local global i64 0, align 8
@V_ASN1_UNIVERSALSTRING = common dso_local global i32 0, align 4
@V_ASN1_UTF8STRING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@out_utf8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_mbstring_ncopy(%struct.TYPE_6__** %0, i8* %1, i32 %2, i32 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_6__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca [32 x i8], align 16
  %25 = alloca i32 (i64, i8*)*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %20, align 4
  store i32 (i64, i8*)* null, i32 (i64, i8*)** %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %28, %7
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* @DIRSTRING_TYPE, align 8
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %12, align 4
  switch i32 %37, label %76 [
    i32 130, label %38
    i32 129, label %49
    i32 128, label %60
    i32 131, label %74
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @ASN1_F_ASN1_MBSTRING_NCOPY, align 4
  %44 = load i32, i32* @ASN1_R_INVALID_BMPSTRING_LENGTH, align 4
  %45 = call i32 @ASN1err(i32 %43, i32 %44)
  store i32 -1, i32* %8, align 4
  br label %277

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %23, align 4
  br label %80

49:                                               ; preds = %36
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 3
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @ASN1_F_ASN1_MBSTRING_NCOPY, align 4
  %55 = load i32, i32* @ASN1_R_INVALID_UNIVERSALSTRING_LENGTH, align 4
  %56 = call i32 @ASN1err(i32 %54, i32 %55)
  store i32 -1, i32* %8, align 4
  br label %277

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 2
  store i32 %59, i32* %23, align 4
  br label %80

60:                                               ; preds = %36
  store i32 0, i32* %23, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @in_utf8, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i32 (i64, i8*)*
  %66 = call i32 (i8*, i32, i32, i32 (i64, i8*)*, ...) @traverse_string(i8* %61, i32 %62, i32 128, i32 (i64, i8*)* %65, i32* %23)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i32, i32* @ASN1_F_ASN1_MBSTRING_NCOPY, align 4
  %71 = load i32, i32* @ASN1_R_INVALID_UTF8STRING, align 4
  %72 = call i32 @ASN1err(i32 %70, i32 %71)
  store i32 -1, i32* %8, align 4
  br label %277

73:                                               ; preds = %60
  br label %80

74:                                               ; preds = %36
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %23, align 4
  br label %80

76:                                               ; preds = %36
  %77 = load i32, i32* @ASN1_F_ASN1_MBSTRING_NCOPY, align 4
  %78 = load i32, i32* @ASN1_R_UNKNOWN_FORMAT, align 4
  %79 = call i32 @ASN1err(i32 %77, i32 %78)
  store i32 -1, i32* %8, align 4
  br label %277

80:                                               ; preds = %74, %73, %57, %46
  %81 = load i64, i64* %14, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load i32, i32* %23, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %14, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i32, i32* @ASN1_F_ASN1_MBSTRING_NCOPY, align 4
  %90 = load i32, i32* @ASN1_R_STRING_TOO_SHORT, align 4
  %91 = call i32 @ASN1err(i32 %89, i32 %90)
  %92 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @BIO_snprintf(i8* %92, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %93)
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %96 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  store i32 -1, i32* %8, align 4
  br label %277

97:                                               ; preds = %83, %80
  %98 = load i64, i64* %15, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load i32, i32* %23, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %15, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i32, i32* @ASN1_F_ASN1_MBSTRING_NCOPY, align 4
  %107 = load i32, i32* @ASN1_R_STRING_TOO_LONG, align 4
  %108 = call i32 @ASN1err(i32 %106, i32 %107)
  %109 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %110 = load i64, i64* %15, align 8
  %111 = call i32 @BIO_snprintf(i8* %109, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %110)
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %113 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %112)
  store i32 -1, i32* %8, align 4
  br label %277

114:                                              ; preds = %100, %97
  %115 = load i8*, i8** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @type_str, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i32 (i64, i8*)*
  %121 = call i32 (i8*, i32, i32, i32 (i64, i8*)*, ...) @traverse_string(i8* %115, i32 %116, i32 %117, i32 (i64, i8*)* %120, i64* %13)
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load i32, i32* @ASN1_F_ASN1_MBSTRING_NCOPY, align 4
  %125 = load i32, i32* @ASN1_R_ILLEGAL_CHARACTERS, align 4
  %126 = call i32 @ASN1err(i32 %124, i32 %125)
  store i32 -1, i32* %8, align 4
  br label %277

127:                                              ; preds = %114
  store i32 131, i32* %19, align 4
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* @B_ASN1_NUMERICSTRING, align 8
  %130 = and i64 %128, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @V_ASN1_NUMERICSTRING, align 4
  store i32 %133, i32* %16, align 4
  br label %176

134:                                              ; preds = %127
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* @B_ASN1_PRINTABLESTRING, align 8
  %137 = and i64 %135, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @V_ASN1_PRINTABLESTRING, align 4
  store i32 %140, i32* %16, align 4
  br label %175

141:                                              ; preds = %134
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* @B_ASN1_IA5STRING, align 8
  %144 = and i64 %142, %143
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @V_ASN1_IA5STRING, align 4
  store i32 %147, i32* %16, align 4
  br label %174

148:                                              ; preds = %141
  %149 = load i64, i64* %13, align 8
  %150 = load i64, i64* @B_ASN1_T61STRING, align 8
  %151 = and i64 %149, %150
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* @V_ASN1_T61STRING, align 4
  store i32 %154, i32* %16, align 4
  br label %173

155:                                              ; preds = %148
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* @B_ASN1_BMPSTRING, align 8
  %158 = and i64 %156, %157
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* @V_ASN1_BMPSTRING, align 4
  store i32 %161, i32* %16, align 4
  store i32 130, i32* %19, align 4
  br label %172

162:                                              ; preds = %155
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* @B_ASN1_UNIVERSALSTRING, align 8
  %165 = and i64 %163, %164
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load i32, i32* @V_ASN1_UNIVERSALSTRING, align 4
  store i32 %168, i32* %16, align 4
  store i32 129, i32* %19, align 4
  br label %171

169:                                              ; preds = %162
  %170 = load i32, i32* @V_ASN1_UTF8STRING, align 4
  store i32 %170, i32* %16, align 4
  store i32 128, i32* %19, align 4
  br label %171

171:                                              ; preds = %169, %167
  br label %172

172:                                              ; preds = %171, %160
  br label %173

173:                                              ; preds = %172, %153
  br label %174

174:                                              ; preds = %173, %146
  br label %175

175:                                              ; preds = %174, %139
  br label %176

176:                                              ; preds = %175, %132
  %177 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %178 = icmp ne %struct.TYPE_6__** %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %16, align 4
  store i32 %180, i32* %8, align 4
  br label %277

181:                                              ; preds = %176
  %182 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = icmp ne %struct.TYPE_6__* %183, null
  br i1 %184, label %185, label %199

185:                                              ; preds = %181
  store i8 0, i8* %18, align 1
  %186 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  store %struct.TYPE_6__* %187, %struct.TYPE_6__** %21, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @OPENSSL_free(i8* %190)
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  store i8* null, i8** %193, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  store i32 0, i32* %195, align 8
  %196 = load i32, i32* %16, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 4
  br label %211

199:                                              ; preds = %181
  store i8 1, i8* %18, align 1
  %200 = load i32, i32* %16, align 4
  %201 = call %struct.TYPE_6__* @ASN1_STRING_type_new(i32 %200)
  store %struct.TYPE_6__* %201, %struct.TYPE_6__** %21, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %203 = icmp eq %struct.TYPE_6__* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load i32, i32* @ASN1_F_ASN1_MBSTRING_NCOPY, align 4
  %206 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %207 = call i32 @ASN1err(i32 %205, i32 %206)
  store i32 -1, i32* %8, align 4
  br label %277

208:                                              ; preds = %199
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %210 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %209, %struct.TYPE_6__** %210, align 8
  br label %211

211:                                              ; preds = %208, %185
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %19, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %227

215:                                              ; preds = %211
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @ASN1_STRING_set(%struct.TYPE_6__* %216, i8* %217, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = load i32, i32* @ASN1_F_ASN1_MBSTRING_NCOPY, align 4
  %223 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %224 = call i32 @ASN1err(i32 %222, i32 %223)
  store i32 -1, i32* %8, align 4
  br label %277

225:                                              ; preds = %215
  %226 = load i32, i32* %16, align 4
  store i32 %226, i32* %8, align 4
  br label %277

227:                                              ; preds = %211
  %228 = load i32, i32* %19, align 4
  switch i32 %228, label %245 [
    i32 131, label %229
    i32 130, label %231
    i32 129, label %234
    i32 128, label %237
  ]

229:                                              ; preds = %227
  %230 = load i32, i32* %23, align 4
  store i32 %230, i32* %20, align 4
  store i32 (i64, i8*)* @cpy_asc, i32 (i64, i8*)** %25, align 8
  br label %245

231:                                              ; preds = %227
  %232 = load i32, i32* %23, align 4
  %233 = shl i32 %232, 1
  store i32 %233, i32* %20, align 4
  store i32 (i64, i8*)* @cpy_bmp, i32 (i64, i8*)** %25, align 8
  br label %245

234:                                              ; preds = %227
  %235 = load i32, i32* %23, align 4
  %236 = shl i32 %235, 2
  store i32 %236, i32* %20, align 4
  store i32 (i64, i8*)* @cpy_univ, i32 (i64, i8*)** %25, align 8
  br label %245

237:                                              ; preds = %227
  store i32 0, i32* %20, align 4
  %238 = load i8*, i8** %10, align 8
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* @out_utf8, align 4
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to i32 (i64, i8*)*
  %244 = call i32 (i8*, i32, i32, i32 (i64, i8*)*, ...) @traverse_string(i8* %238, i32 %239, i32 %240, i32 (i64, i8*)* %243, i32* %20)
  store i32 (i64, i8*)* @cpy_utf8, i32 (i64, i8*)** %25, align 8
  br label %245

245:                                              ; preds = %227, %237, %234, %231, %229
  %246 = load i32, i32* %20, align 4
  %247 = add nsw i32 %246, 1
  %248 = call i8* @OPENSSL_malloc(i32 %247)
  store i8* %248, i8** %22, align 8
  %249 = icmp eq i8* %248, null
  br i1 %249, label %250, label %260

250:                                              ; preds = %245
  %251 = load i8, i8* %18, align 1
  %252 = icmp ne i8 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %255 = call i32 @ASN1_STRING_free(%struct.TYPE_6__* %254)
  br label %256

256:                                              ; preds = %253, %250
  %257 = load i32, i32* @ASN1_F_ASN1_MBSTRING_NCOPY, align 4
  %258 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %259 = call i32 @ASN1err(i32 %257, i32 %258)
  store i32 -1, i32* %8, align 4
  br label %277

260:                                              ; preds = %245
  %261 = load i32, i32* %20, align 4
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 8
  %264 = load i8*, i8** %22, align 8
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  store i8* %264, i8** %266, align 8
  %267 = load i8*, i8** %22, align 8
  %268 = load i32, i32* %20, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  store i8 0, i8* %270, align 1
  %271 = load i8*, i8** %10, align 8
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %12, align 4
  %274 = load i32 (i64, i8*)*, i32 (i64, i8*)** %25, align 8
  %275 = call i32 (i8*, i32, i32, i32 (i64, i8*)*, ...) @traverse_string(i8* %271, i32 %272, i32 %273, i32 (i64, i8*)* %274, i8** %22)
  %276 = load i32, i32* %16, align 4
  store i32 %276, i32* %8, align 4
  br label %277

277:                                              ; preds = %260, %256, %225, %221, %204, %179, %123, %105, %88, %76, %69, %53, %42
  %278 = load i32, i32* %8, align 4
  ret i32 %278
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @traverse_string(i8*, i32, i32, i32 (i64, i8*)*, ...) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local %struct.TYPE_6__* @ASN1_STRING_type_new(i32) #1

declare dso_local i32 @ASN1_STRING_set(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @cpy_asc(i64, i8*) #1

declare dso_local i32 @cpy_bmp(i64, i8*) #1

declare dso_local i32 @cpy_univ(i64, i8*) #1

declare dso_local i32 @cpy_utf8(i64, i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @ASN1_STRING_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
