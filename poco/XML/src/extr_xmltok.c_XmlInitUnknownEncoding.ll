; ModuleID = '/home/carl/AnghaBench/poco/XML/src/extr_xmltok.c_XmlInitUnknownEncoding.c'
source_filename = "/home/carl/AnghaBench/poco/XML/src/extr_xmltok.c_XmlInitUnknownEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.unknown_encoding = type { i32*, i32**, %struct.TYPE_6__, i64, i8* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_7__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@latin1_encoding = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@BT_OTHER = common dso_local global i8 0, align 1
@BT_NONXML = common dso_local global i8 0, align 1
@BT_MALFORM = common dso_local global i8 0, align 1
@BT_LEAD2 = common dso_local global i32 0, align 4
@nmstrtPages = common dso_local global i32 0, align 4
@BT_NMSTRT = common dso_local global i8 0, align 1
@namePages = common dso_local global i32 0, align 4
@BT_NAME = common dso_local global i8 0, align 1
@unknown_isName = common dso_local global i8* null, align 8
@unknown_isNmstrt = common dso_local global i8* null, align 8
@unknown_isInvalid = common dso_local global i8* null, align 8
@unknown_toUtf8 = common dso_local global i32 0, align 4
@unknown_toUtf16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @XmlInitUnknownEncoding(i8* %0, i32* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.unknown_encoding*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.unknown_encoding*
  store %struct.unknown_encoding* %14, %struct.unknown_encoding** %11, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @memcpy(i8* %15, %struct.TYPE_8__* @latin1_encoding, i32 4)
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %50, %4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 128
  br i1 %19, label %20, label %53

20:                                               ; preds = %17
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @latin1_encoding, i32 0, i32 0), align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @BT_OTHER, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %20
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @latin1_encoding, i32 0, i32 0), align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @BT_NONXML, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %390

49:                                               ; preds = %40, %30, %20
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %17

53:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %327, %53
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 256
  br i1 %56, label %57, label %330

57:                                               ; preds = %54
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %96

65:                                               ; preds = %57
  %66 = load i8, i8* @BT_MALFORM, align 1
  %67 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %68 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 %66, i8* %73, align 1
  %74 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %75 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 65535, i32* %79, align 4
  %80 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %81 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 1, i32* %87, align 4
  %88 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %89 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %88, i32 0, i32 1
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 0, i32* %95, align 4
  br label %326

96:                                               ; preds = %57
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %134

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, -4
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %390

103:                                              ; preds = %99
  %104 = load i64, i64* %8, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %390

107:                                              ; preds = %103
  %108 = load i32, i32* @BT_LEAD2, align 4
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 2
  %111 = sub nsw i32 %108, %110
  %112 = trunc i32 %111 to i8
  %113 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %114 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8 %112, i8* %119, align 1
  %120 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %121 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %120, i32 0, i32 1
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 0, i32* %127, align 4
  %128 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %129 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 0, i32* %133, align 4
  br label %325

134:                                              ; preds = %96
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %135, 128
  br i1 %136, label %137, label %209

137:                                              ; preds = %134
  %138 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @latin1_encoding, i32 0, i32 0), align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = load i8, i8* @BT_OTHER, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp ne i32 %143, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %137
  %148 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @latin1_encoding, i32 0, i32 0), align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = load i8, i8* @BT_NONXML, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp ne i32 %153, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %147
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %390

162:                                              ; preds = %157, %147, %137
  %163 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @latin1_encoding, i32 0, i32 0), align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %169 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  store i8 %167, i8* %174, align 1
  %175 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %176 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %175, i32 0, i32 1
  %177 = load i32**, i32*** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  store i32 1, i32* %182, align 4
  %183 = load i32, i32* %12, align 4
  %184 = trunc i32 %183 to i8
  %185 = sext i8 %184 to i32
  %186 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %187 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %186, i32 0, i32 1
  %188 = load i32**, i32*** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  store i32 %185, i32* %193, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %162
  br label %199

197:                                              ; preds = %162
  %198 = load i32, i32* %12, align 4
  br label %199

199:                                              ; preds = %197, %196
  %200 = phi i32 [ 65535, %196 ], [ %198, %197 ]
  %201 = trunc i32 %200 to i16
  %202 = zext i16 %201 to i32
  %203 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %204 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %202, i32* %208, align 4
  br label %324

209:                                              ; preds = %134
  %210 = load i32, i32* %12, align 4
  %211 = call i64 @checkCharRefNumber(i32 %210)
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %213, label %244

213:                                              ; preds = %209
  %214 = load i8, i8* @BT_NONXML, align 1
  %215 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %216 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  store i8 %214, i8* %221, align 1
  %222 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %223 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 65535, i32* %227, align 4
  %228 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %229 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %228, i32 0, i32 1
  %230 = load i32**, i32*** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32*, i32** %230, i64 %232
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  store i32 1, i32* %235, align 4
  %236 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %237 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %236, i32 0, i32 1
  %238 = load i32**, i32*** %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32*, i32** %238, i64 %240
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  store i32 0, i32* %243, align 4
  br label %323

244:                                              ; preds = %209
  %245 = load i32, i32* %12, align 4
  %246 = icmp sgt i32 %245, 65535
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %390

248:                                              ; preds = %244
  %249 = load i32, i32* @nmstrtPages, align 4
  %250 = load i32, i32* %12, align 4
  %251 = ashr i32 %250, 8
  %252 = load i32, i32* %12, align 4
  %253 = and i32 %252, 255
  %254 = call i64 @UCS2_GET_NAMING(i32 %249, i32 %251, i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %248
  %257 = load i8, i8* @BT_NMSTRT, align 1
  %258 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %259 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  store i8 %257, i8* %264, align 1
  br label %292

265:                                              ; preds = %248
  %266 = load i32, i32* @namePages, align 4
  %267 = load i32, i32* %12, align 4
  %268 = ashr i32 %267, 8
  %269 = load i32, i32* %12, align 4
  %270 = and i32 %269, 255
  %271 = call i64 @UCS2_GET_NAMING(i32 %266, i32 %268, i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %265
  %274 = load i8, i8* @BT_NAME, align 1
  %275 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %276 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = load i32, i32* %10, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  store i8 %274, i8* %281, align 1
  br label %291

282:                                              ; preds = %265
  %283 = load i8, i8* @BT_OTHER, align 1
  %284 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %285 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  store i8 %283, i8* %290, align 1
  br label %291

291:                                              ; preds = %282, %273
  br label %292

292:                                              ; preds = %291, %256
  %293 = load i32, i32* %12, align 4
  %294 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %295 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %294, i32 0, i32 1
  %296 = load i32**, i32*** %295, align 8
  %297 = load i32, i32* %10, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32*, i32** %296, i64 %298
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  %302 = bitcast i32* %301 to i8*
  %303 = call i64 @XmlUtf8Encode(i32 %293, i8* %302)
  %304 = trunc i64 %303 to i8
  %305 = sext i8 %304 to i32
  %306 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %307 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %306, i32 0, i32 1
  %308 = load i32**, i32*** %307, align 8
  %309 = load i32, i32* %10, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32*, i32** %308, i64 %310
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 0
  store i32 %305, i32* %313, align 4
  %314 = load i32, i32* %12, align 4
  %315 = trunc i32 %314 to i16
  %316 = zext i16 %315 to i32
  %317 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %318 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %10, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  store i32 %316, i32* %322, align 4
  br label %323

323:                                              ; preds = %292, %213
  br label %324

324:                                              ; preds = %323, %199
  br label %325

325:                                              ; preds = %324, %107
  br label %326

326:                                              ; preds = %325, %65
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %10, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %10, align 4
  br label %54

330:                                              ; preds = %54
  %331 = load i8*, i8** %9, align 8
  %332 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %333 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %332, i32 0, i32 4
  store i8* %331, i8** %333, align 8
  %334 = load i64, i64* %8, align 8
  %335 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %336 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %335, i32 0, i32 3
  store i64 %334, i64* %336, align 8
  %337 = load i64, i64* %8, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %376

339:                                              ; preds = %330
  %340 = load i8*, i8** @unknown_isName, align 8
  %341 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %342 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 10
  store i8* %340, i8** %343, align 8
  %344 = load i8*, i8** @unknown_isName, align 8
  %345 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %346 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 9
  store i8* %344, i8** %347, align 8
  %348 = load i8*, i8** @unknown_isName, align 8
  %349 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %350 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 8
  store i8* %348, i8** %351, align 8
  %352 = load i8*, i8** @unknown_isNmstrt, align 8
  %353 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %354 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 7
  store i8* %352, i8** %355, align 8
  %356 = load i8*, i8** @unknown_isNmstrt, align 8
  %357 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %358 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 6
  store i8* %356, i8** %359, align 8
  %360 = load i8*, i8** @unknown_isNmstrt, align 8
  %361 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %362 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 5
  store i8* %360, i8** %363, align 8
  %364 = load i8*, i8** @unknown_isInvalid, align 8
  %365 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %366 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 4
  store i8* %364, i8** %367, align 8
  %368 = load i8*, i8** @unknown_isInvalid, align 8
  %369 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %370 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 3
  store i8* %368, i8** %371, align 8
  %372 = load i8*, i8** @unknown_isInvalid, align 8
  %373 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %374 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 2
  store i8* %372, i8** %375, align 8
  br label %376

376:                                              ; preds = %339, %330
  %377 = load i32, i32* @unknown_toUtf8, align 4
  %378 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %379 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 1
  store i32 %377, i32* %381, align 4
  %382 = load i32, i32* @unknown_toUtf16, align 4
  %383 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %384 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 0
  store i32 %382, i32* %386, align 8
  %387 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %388 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 1
  store %struct.TYPE_7__* %389, %struct.TYPE_7__** %5, align 8
  br label %390

390:                                              ; preds = %376, %247, %161, %106, %102, %48
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %391
}

declare dso_local i32 @memcpy(i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @checkCharRefNumber(i32) #1

declare dso_local i64 @UCS2_GET_NAMING(i32, i32, i32) #1

declare dso_local i64 @XmlUtf8Encode(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
