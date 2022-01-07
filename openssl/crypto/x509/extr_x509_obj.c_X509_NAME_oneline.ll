; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_obj.c_X509_NAME_oneline.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_obj.c_X509_NAME_oneline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i8* }
%struct.TYPE_14__ = type { i8* }

@X509_NAME_oneline.hex = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str = private unnamed_addr constant [13 x i8] c"NO X509_NAME\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@NAME_ONELINE_MAX = common dso_local global i32 0, align 4
@X509_F_X509_NAME_ONELINE = common dso_local global i32 0, align 4
@X509_R_NAME_TOO_LONG = common dso_local global i32 0, align 4
@V_ASN1_GENERALSTRING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@V_ASN1_IA5STRING = common dso_local global i32 0, align 4
@V_ASN1_PRINTABLESTRING = common dso_local global i32 0, align 4
@V_ASN1_TELETEXSTRING = common dso_local global i32 0, align 4
@V_ASN1_VISIBLESTRING = common dso_local global i32 0, align 4
@os_toascii = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @X509_NAME_oneline(%struct.TYPE_13__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_14__*, align 8
  %22 = alloca [4 x i32], align 16
  %23 = alloca [80 x i8], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %21, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %3
  %27 = call %struct.TYPE_14__* (...) @BUF_MEM_new()
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %21, align 8
  %28 = icmp eq %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %362

30:                                               ; preds = %26
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %32 = call i32 @BUF_MEM_grow(%struct.TYPE_14__* %31, i32 200)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %362

35:                                               ; preds = %30
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  store i32 200, i32* %7, align 4
  br label %45

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i8* null, i8** %4, align 8
  br label %369

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %35
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = icmp eq %struct.TYPE_13__* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %6, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %56 = call i32 @OPENSSL_free(%struct.TYPE_14__* %55)
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @strncpy(i8* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %4, align 8
  br label %369

67:                                               ; preds = %45
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %341, %67
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sk_X509_NAME_ENTRY_num(i32 %74)
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %344

77:                                               ; preds = %70
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call %struct.TYPE_12__* @sk_X509_NAME_ENTRY_value(i32 %80, i32 %81)
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %8, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @OBJ_obj2nid(i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @NID_undef, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %10, align 4
  %92 = call i8* @OBJ_nid2sn(i32 %91)
  store i8* %92, i8** %18, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %90, %77
  %95 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @i2t_ASN1_OBJECT(i8* %95, i32 80, i32 %98)
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  store i8* %100, i8** %18, align 8
  br label %101

101:                                              ; preds = %94, %90
  %102 = load i8*, i8** %18, align 8
  %103 = call i32 @strlen(i8* %102)
  store i32 %103, i32* %13, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %17, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @NAME_ONELINE_MAX, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %101
  %118 = load i32, i32* @X509_F_X509_NAME_ONELINE, align 4
  %119 = load i32, i32* @X509_R_NAME_TOO_LONG, align 4
  %120 = call i32 @X509err(i32 %118, i32 %119)
  br label %366

121:                                              ; preds = %101
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %20, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* @V_ASN1_GENERALSTRING, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %181

130:                                              ; preds = %121
  %131 = load i32, i32* %15, align 4
  %132 = srem i32 %131, 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %181

134:                                              ; preds = %130
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 3
  store i32 0, i32* %135, align 4
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 2
  store i32 0, i32* %136, align 8
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 1
  store i32 0, i32* %137, align 4
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  store i32 0, i32* %138, align 16
  store i32 0, i32* %16, align 4
  br label %139

139:                                              ; preds = %157, %134
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load i8*, i8** %20, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %143
  %152 = load i32, i32* %16, align 4
  %153 = and i32 %152, 3
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %154
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %151, %143
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %16, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %16, align 4
  br label %139

160:                                              ; preds = %139
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  %162 = load i32, i32* %161, align 16
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %162, %164
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 2
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %165, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %160
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 3
  store i32 1, i32* %171, align 4
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 2
  store i32 1, i32* %172, align 8
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 1
  store i32 1, i32* %173, align 4
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  store i32 1, i32* %174, align 16
  br label %180

175:                                              ; preds = %160
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 2
  store i32 0, i32* %176, align 8
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 1
  store i32 0, i32* %177, align 4
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  store i32 0, i32* %178, align 16
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 3
  store i32 1, i32* %179, align 4
  br label %180

180:                                              ; preds = %175, %170
  br label %186

181:                                              ; preds = %130, %121
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 3
  store i32 1, i32* %182, align 4
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 2
  store i32 1, i32* %183, align 8
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 1
  store i32 1, i32* %184, align 4
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  store i32 1, i32* %185, align 16
  br label %186

186:                                              ; preds = %181, %180
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %187

187:                                              ; preds = %221, %186
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %15, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %224

191:                                              ; preds = %187
  %192 = load i32, i32* %16, align 4
  %193 = and i32 %192, 3
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %191
  br label %221

199:                                              ; preds = %191
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  %202 = load i8*, i8** %20, align 8
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = icmp slt i32 %207, 32
  br i1 %208, label %217, label %209

209:                                              ; preds = %199
  %210 = load i8*, i8** %20, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = icmp sgt i32 %215, 126
  br i1 %216, label %217, label %220

217:                                              ; preds = %209, %199
  %218 = load i32, i32* %14, align 4
  %219 = add nsw i32 %218, 3
  store i32 %219, i32* %14, align 4
  br label %220

220:                                              ; preds = %217, %209
  br label %221

221:                                              ; preds = %220, %198
  %222 = load i32, i32* %16, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %16, align 4
  br label %187

224:                                              ; preds = %187
  %225 = load i32, i32* %12, align 4
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 1, %226
  %228 = add nsw i32 %227, 1
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %228, %229
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %12, align 4
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* @NAME_ONELINE_MAX, align 4
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %224
  %237 = load i32, i32* @X509_F_X509_NAME_ONELINE, align 4
  %238 = load i32, i32* @X509_R_NAME_TOO_LONG, align 4
  %239 = call i32 @X509err(i32 %237, i32 %238)
  br label %366

240:                                              ; preds = %224
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %242 = icmp ne %struct.TYPE_14__* %241, null
  br i1 %242, label %243, label %257

243:                                              ; preds = %240
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  %247 = call i32 @BUF_MEM_grow(%struct.TYPE_14__* %244, i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %243
  br label %362

250:                                              ; preds = %243
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  store i8* %256, i8** %19, align 8
  br label %268

257:                                              ; preds = %240
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* %7, align 4
  %260 = icmp sgt i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %257
  br label %344

262:                                              ; preds = %257
  %263 = load i8*, i8** %6, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  store i8* %266, i8** %19, align 8
  br label %267

267:                                              ; preds = %262
  br label %268

268:                                              ; preds = %267, %250
  %269 = load i8*, i8** %19, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %19, align 8
  store i8 47, i8* %269, align 1
  %271 = load i8*, i8** %19, align 8
  %272 = load i8*, i8** %18, align 8
  %273 = load i32, i32* %13, align 4
  %274 = call i32 @memcpy(i8* %271, i8* %272, i32 %273)
  %275 = load i32, i32* %13, align 4
  %276 = load i8*, i8** %19, align 8
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i8, i8* %276, i64 %277
  store i8* %278, i8** %19, align 8
  %279 = load i8*, i8** %19, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %19, align 8
  store i8 61, i8* %279, align 1
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 2
  %285 = load i8*, i8** %284, align 8
  store i8* %285, i8** %20, align 8
  store i32 0, i32* %16, align 4
  br label %286

286:                                              ; preds = %336, %268
  %287 = load i32, i32* %16, align 4
  %288 = load i32, i32* %15, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %339

290:                                              ; preds = %286
  %291 = load i32, i32* %16, align 4
  %292 = and i32 %291, 3
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %290
  br label %336

298:                                              ; preds = %290
  %299 = load i8*, i8** %20, align 8
  %300 = load i32, i32* %16, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  store i32 %304, i32* %10, align 4
  %305 = load i32, i32* %10, align 4
  %306 = icmp slt i32 %305, 32
  br i1 %306, label %310, label %307

307:                                              ; preds = %298
  %308 = load i32, i32* %10, align 4
  %309 = icmp sgt i32 %308, 126
  br i1 %309, label %310, label %330

310:                                              ; preds = %307, %298
  %311 = load i8*, i8** %19, align 8
  %312 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %312, i8** %19, align 8
  store i8 92, i8* %311, align 1
  %313 = load i8*, i8** %19, align 8
  %314 = getelementptr inbounds i8, i8* %313, i32 1
  store i8* %314, i8** %19, align 8
  store i8 120, i8* %313, align 1
  %315 = load i32, i32* %10, align 4
  %316 = ashr i32 %315, 4
  %317 = and i32 %316, 15
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [17 x i8], [17 x i8]* @X509_NAME_oneline.hex, i64 0, i64 %318
  %320 = load i8, i8* %319, align 1
  %321 = load i8*, i8** %19, align 8
  %322 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %322, i8** %19, align 8
  store i8 %320, i8* %321, align 1
  %323 = load i32, i32* %10, align 4
  %324 = and i32 %323, 15
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [17 x i8], [17 x i8]* @X509_NAME_oneline.hex, i64 0, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = load i8*, i8** %19, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %19, align 8
  store i8 %327, i8* %328, align 1
  br label %335

330:                                              ; preds = %307
  %331 = load i32, i32* %10, align 4
  %332 = trunc i32 %331 to i8
  %333 = load i8*, i8** %19, align 8
  %334 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %334, i8** %19, align 8
  store i8 %332, i8* %333, align 1
  br label %335

335:                                              ; preds = %330, %310
  br label %336

336:                                              ; preds = %335, %297
  %337 = load i32, i32* %16, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %16, align 4
  br label %286

339:                                              ; preds = %286
  %340 = load i8*, i8** %19, align 8
  store i8 0, i8* %340, align 1
  br label %341

341:                                              ; preds = %339
  %342 = load i32, i32* %9, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %9, align 4
  br label %70

344:                                              ; preds = %261, %70
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %346 = icmp ne %struct.TYPE_14__* %345, null
  br i1 %346, label %347, label %353

347:                                              ; preds = %344
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 0
  %350 = load i8*, i8** %349, align 8
  store i8* %350, i8** %19, align 8
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %352 = call i32 @OPENSSL_free(%struct.TYPE_14__* %351)
  br label %355

353:                                              ; preds = %344
  %354 = load i8*, i8** %6, align 8
  store i8* %354, i8** %19, align 8
  br label %355

355:                                              ; preds = %353, %347
  %356 = load i32, i32* %9, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  %359 = load i8*, i8** %19, align 8
  store i8 0, i8* %359, align 1
  br label %360

360:                                              ; preds = %358, %355
  %361 = load i8*, i8** %19, align 8
  store i8* %361, i8** %4, align 8
  br label %369

362:                                              ; preds = %249, %34, %29
  %363 = load i32, i32* @X509_F_X509_NAME_ONELINE, align 4
  %364 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %365 = call i32 @X509err(i32 %363, i32 %364)
  br label %366

366:                                              ; preds = %362, %236, %117
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %368 = call i32 @BUF_MEM_free(%struct.TYPE_14__* %367)
  store i8* null, i8** %4, align 8
  br label %369

369:                                              ; preds = %366, %360, %57, %43
  %370 = load i8*, i8** %4, align 8
  ret i8* %370
}

declare dso_local %struct.TYPE_14__* @BUF_MEM_new(...) #1

declare dso_local i32 @BUF_MEM_grow(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_14__*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @sk_X509_NAME_ENTRY_num(i32) #1

declare dso_local %struct.TYPE_12__* @sk_X509_NAME_ENTRY_value(i32, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i32 @i2t_ASN1_OBJECT(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @BUF_MEM_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
