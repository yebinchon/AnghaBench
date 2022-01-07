; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_util_funcs.c_zend_class_copy_ctor.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_util_funcs.c_zend_class_copy_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_10__**, %struct.TYPE_10__**, %struct.TYPE_10__*, %struct.TYPE_11__**, %struct.TYPE_10__*, %struct.TYPE_11__**, i32, i32, i32*, i32, %struct.TYPE_11__*, i32, i32* }
%struct.TYPE_10__ = type { i32 }

@ZEND_ACC_LINKED = common dso_local global i32 0, align 4
@constructor = common dso_local global i32 0, align 4
@destructor = common dso_local global i32 0, align 4
@clone = common dso_local global i32 0, align 4
@__get = common dso_local global i32 0, align 4
@__set = common dso_local global i32 0, align 4
@__call = common dso_local global i32 0, align 4
@serialize_func = common dso_local global i32 0, align 4
@unserialize_func = common dso_local global i32 0, align 4
@__isset = common dso_local global i32 0, align 4
@__unset = common dso_local global i32 0, align 4
@__tostring = common dso_local global i32 0, align 4
@__callstatic = common dso_local global i32 0, align 4
@__debugInfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__**)* @zend_class_copy_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_class_copy_ctor(%struct.TYPE_11__** %0) #0 {
  %2 = alloca %struct.TYPE_11__**, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__**, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_10__**, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_10__**, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %2, align 8
  %21 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %2, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %3, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = call i8* @ARENA_REALLOC(%struct.TYPE_11__* %23)
  %25 = bitcast i8* %24 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %3, align 8
  %26 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %2, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 16
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = call i64 @IN_ARENA(%struct.TYPE_11__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 16
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = call i8* @ARENA_REALLOC(%struct.TYPE_11__* %44)
  %46 = bitcast i8* %45 to %struct.TYPE_11__*
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 16
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %48, align 8
  br label %49

49:                                               ; preds = %41, %35, %1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 18
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %89

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = call i8* @emalloc(i32 %60)
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %5, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 18
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %4, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  store i32* %71, i32** %6, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 18
  store i32* %72, i32** %74, align 8
  br label %75

75:                                               ; preds = %83, %54
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = icmp ne i32* %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @ZVAL_COPY_VALUE_PROP(i32* %80, i32* %81)
  br label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %4, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %5, align 8
  br label %75

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %49
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 17
  %92 = call i32 @zend_hash_clone_methods(i32* %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 14
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %206

97:                                               ; preds = %89
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  br label %109

105:                                              ; preds = %97
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 16
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  br label %109

109:                                              ; preds = %105, %104
  %110 = phi %struct.TYPE_11__* [ null, %104 ], [ %108, %105 ]
  store %struct.TYPE_11__* %110, %struct.TYPE_11__** %9, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 4, %114
  %116 = trunc i64 %115 to i32
  %117 = call i8* @emalloc(i32 %116)
  %118 = bitcast i8* %117 to i32*
  store i32* %118, i32** %5, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 14
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %4, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 14
  store i32* %122, i32** %124, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %130 = icmp ne %struct.TYPE_11__* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %109
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  br label %136

135:                                              ; preds = %109
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i32 [ %134, %131 ], [ 0, %135 ]
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %153, %136
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %138
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32* %146, i32** %10, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32*, i32** %4, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = call i32 @ZVAL_COPY_VALUE(i32* %147, i32* %151)
  br label %153

153:                                              ; preds = %142
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %7, align 4
  br label %138

156:                                              ; preds = %138
  br label %157

157:                                              ; preds = %201, %156
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %159 = icmp ne %struct.TYPE_11__* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 14
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br label %165

165:                                              ; preds = %160, %157
  %166 = phi i1 [ false, %157 ], [ %164, %160 ]
  br i1 %166, label %167, label %205

167:                                              ; preds = %165
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 16
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = icmp ne %struct.TYPE_11__* %170, null
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 16
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  br label %179

178:                                              ; preds = %167
  br label %179

179:                                              ; preds = %178, %172
  %180 = phi i32 [ %177, %172 ], [ 0, %178 ]
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %198, %179
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp sge i32 %182, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %181
  %186 = load i32*, i32** %5, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32* %189, i32** %11, align 8
  %190 = load i32*, i32** %11, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 14
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = call i32 @ZVAL_INDIRECT(i32* %190, i32* %196)
  br label %198

198:                                              ; preds = %185
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %7, align 4
  br label %181

201:                                              ; preds = %181
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 16
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  store %struct.TYPE_11__* %204, %struct.TYPE_11__** %9, align 8
  br label %157

205:                                              ; preds = %165
  br label %206

206:                                              ; preds = %205, %89
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 15
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 14
  %212 = call i32 @ZEND_MAP_PTR_INIT(i32 %209, i32** %211)
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 13
  %215 = call i32 @zend_hash_clone_prop_info(i32* %214)
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 12
  %218 = call i32 @zend_hash_clone_constants(i32* %217)
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 11
  %221 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %220, align 8
  %222 = icmp ne %struct.TYPE_11__** %221, null
  br i1 %222, label %223, label %269

223:                                              ; preds = %206
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 11
  %226 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %225, align 8
  %227 = bitcast %struct.TYPE_11__** %226 to %struct.TYPE_11__*
  %228 = call i8* @ARENA_REALLOC(%struct.TYPE_11__* %227)
  %229 = bitcast i8* %228 to %struct.TYPE_11__**
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 11
  store %struct.TYPE_11__** %229, %struct.TYPE_11__*** %231, align 8
  store i32 0, i32* %12, align 4
  br label %232

232:                                              ; preds = %265, %223
  %233 = load i32, i32* %12, align 4
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp slt i32 %233, %236
  br i1 %237, label %238, label %268

238:                                              ; preds = %232
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 11
  %241 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %240, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %241, i64 %243
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = call i64 @IN_ARENA(%struct.TYPE_11__* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %264

248:                                              ; preds = %238
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 11
  %251 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %250, align 8
  %252 = load i32, i32* %12, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %251, i64 %253
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = call i8* @ARENA_REALLOC(%struct.TYPE_11__* %255)
  %257 = bitcast i8* %256 to %struct.TYPE_11__*
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 11
  %260 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %260, i64 %262
  store %struct.TYPE_11__* %257, %struct.TYPE_11__** %263, align 8
  br label %264

264:                                              ; preds = %248, %238
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %12, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %12, align 4
  br label %232

268:                                              ; preds = %232
  br label %269

269:                                              ; preds = %268, %206
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %360

274:                                              ; preds = %269
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %304, label %281

281:                                              ; preds = %274
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = mul i64 4, %285
  %287 = trunc i64 %286 to i32
  %288 = call i8* @emalloc(i32 %287)
  %289 = bitcast i8* %288 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %289, %struct.TYPE_10__** %13, align 8
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 10
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %292, align 8
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = sext i32 %296 to i64
  %298 = mul i64 4, %297
  %299 = trunc i64 %298 to i32
  %300 = call i32 @memcpy(%struct.TYPE_10__* %290, %struct.TYPE_10__* %293, i32 %299)
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 10
  store %struct.TYPE_10__* %301, %struct.TYPE_10__** %303, align 8
  br label %359

304:                                              ; preds = %274
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %307 to i64
  %309 = mul i64 8, %308
  %310 = trunc i64 %309 to i32
  %311 = call i8* @emalloc(i32 %310)
  %312 = bitcast i8* %311 to %struct.TYPE_11__**
  store %struct.TYPE_11__** %312, %struct.TYPE_11__*** %14, align 8
  store i64 0, i64* %15, align 8
  br label %313

313:                                              ; preds = %352, %304
  %314 = load i64, i64* %15, align 8
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = icmp ult i64 %314, %318
  br i1 %319, label %320, label %355

320:                                              ; preds = %313
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 9
  %323 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %322, align 8
  %324 = load i64, i64* %15, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %323, i64 %324
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %325, align 8
  %327 = call i64 @IN_ARENA(%struct.TYPE_11__* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %341

329:                                              ; preds = %320
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 9
  %332 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %331, align 8
  %333 = load i64, i64* %15, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %332, i64 %333
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %334, align 8
  %336 = call i8* @ARENA_REALLOC(%struct.TYPE_11__* %335)
  %337 = bitcast i8* %336 to %struct.TYPE_11__*
  %338 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %14, align 8
  %339 = load i64, i64* %15, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %338, i64 %339
  store %struct.TYPE_11__* %337, %struct.TYPE_11__** %340, align 8
  br label %351

341:                                              ; preds = %320
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 9
  %344 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %343, align 8
  %345 = load i64, i64* %15, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %344, i64 %345
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %346, align 8
  %348 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %14, align 8
  %349 = load i64, i64* %15, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %348, i64 %349
  store %struct.TYPE_11__* %347, %struct.TYPE_11__** %350, align 8
  br label %351

351:                                              ; preds = %341, %329
  br label %352

352:                                              ; preds = %351
  %353 = load i64, i64* %15, align 8
  %354 = add i64 %353, 1
  store i64 %354, i64* %15, align 8
  br label %313

355:                                              ; preds = %313
  %356 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %14, align 8
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 9
  store %struct.TYPE_11__** %356, %struct.TYPE_11__*** %358, align 8
  br label %359

359:                                              ; preds = %355, %281
  br label %360

360:                                              ; preds = %359, %269
  %361 = load i32, i32* @constructor, align 4
  %362 = call i32 @zend_update_inherited_handler(i32 %361)
  %363 = load i32, i32* @destructor, align 4
  %364 = call i32 @zend_update_inherited_handler(i32 %363)
  %365 = load i32, i32* @clone, align 4
  %366 = call i32 @zend_update_inherited_handler(i32 %365)
  %367 = load i32, i32* @__get, align 4
  %368 = call i32 @zend_update_inherited_handler(i32 %367)
  %369 = load i32, i32* @__set, align 4
  %370 = call i32 @zend_update_inherited_handler(i32 %369)
  %371 = load i32, i32* @__call, align 4
  %372 = call i32 @zend_update_inherited_handler(i32 %371)
  %373 = load i32, i32* @serialize_func, align 4
  %374 = call i32 @zend_update_inherited_handler(i32 %373)
  %375 = load i32, i32* @unserialize_func, align 4
  %376 = call i32 @zend_update_inherited_handler(i32 %375)
  %377 = load i32, i32* @__isset, align 4
  %378 = call i32 @zend_update_inherited_handler(i32 %377)
  %379 = load i32, i32* @__unset, align 4
  %380 = call i32 @zend_update_inherited_handler(i32 %379)
  %381 = load i32, i32* @__tostring, align 4
  %382 = call i32 @zend_update_inherited_handler(i32 %381)
  %383 = load i32, i32* @__callstatic, align 4
  %384 = call i32 @zend_update_inherited_handler(i32 %383)
  %385 = load i32, i32* @__debugInfo, align 4
  %386 = call i32 @zend_update_inherited_handler(i32 %385)
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 5
  %389 = load i32, i32* %388, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %572

391:                                              ; preds = %360
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 5
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  %396 = mul i64 4, %395
  %397 = trunc i64 %396 to i32
  %398 = call i8* @emalloc(i32 %397)
  %399 = bitcast i8* %398 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %399, %struct.TYPE_10__** %16, align 8
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %401 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 8
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %402, align 8
  %404 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  %408 = mul i64 4, %407
  %409 = trunc i64 %408 to i32
  %410 = call i32 @memcpy(%struct.TYPE_10__* %400, %struct.TYPE_10__* %403, i32 %409)
  %411 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 8
  store %struct.TYPE_10__* %411, %struct.TYPE_10__** %413, align 8
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 7
  %416 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %415, align 8
  %417 = icmp ne %struct.TYPE_10__** %416, null
  br i1 %417, label %418, label %478

418:                                              ; preds = %391
  store i32 0, i32* %18, align 4
  br label %419

419:                                              ; preds = %428, %418
  %420 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %420, i32 0, i32 7
  %422 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %421, align 8
  %423 = load i32, i32* %18, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %422, i64 %424
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %425, align 8
  %427 = icmp ne %struct.TYPE_10__* %426, null
  br i1 %427, label %428, label %431

428:                                              ; preds = %419
  %429 = load i32, i32* %18, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %18, align 4
  br label %419

431:                                              ; preds = %419
  %432 = load i32, i32* %18, align 4
  %433 = add nsw i32 %432, 1
  %434 = sext i32 %433 to i64
  %435 = mul i64 8, %434
  %436 = trunc i64 %435 to i32
  %437 = call i8* @emalloc(i32 %436)
  %438 = bitcast i8* %437 to %struct.TYPE_10__**
  store %struct.TYPE_10__** %438, %struct.TYPE_10__*** %17, align 8
  store i32 0, i32* %18, align 4
  br label %439

439:                                              ; preds = %448, %431
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 7
  %442 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %441, align 8
  %443 = load i32, i32* %18, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %442, i64 %444
  %446 = load %struct.TYPE_10__*, %struct.TYPE_10__** %445, align 8
  %447 = icmp ne %struct.TYPE_10__* %446, null
  br i1 %447, label %448, label %470

448:                                              ; preds = %439
  %449 = call i8* @emalloc(i32 4)
  %450 = bitcast i8* %449 to %struct.TYPE_10__*
  %451 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %452 = load i32, i32* %18, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %451, i64 %453
  store %struct.TYPE_10__* %450, %struct.TYPE_10__** %454, align 8
  %455 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %456 = load i32, i32* %18, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %455, i64 %457
  %459 = load %struct.TYPE_10__*, %struct.TYPE_10__** %458, align 8
  %460 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 7
  %462 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %461, align 8
  %463 = load i32, i32* %18, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %462, i64 %464
  %466 = load %struct.TYPE_10__*, %struct.TYPE_10__** %465, align 8
  %467 = call i32 @memcpy(%struct.TYPE_10__* %459, %struct.TYPE_10__* %466, i32 4)
  %468 = load i32, i32* %18, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %18, align 4
  br label %439

470:                                              ; preds = %439
  %471 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %472 = load i32, i32* %18, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %471, i64 %473
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %474, align 8
  %475 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %476 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %476, i32 0, i32 7
  store %struct.TYPE_10__** %475, %struct.TYPE_10__*** %477, align 8
  br label %478

478:                                              ; preds = %470, %391
  %479 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %480 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %479, i32 0, i32 6
  %481 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %480, align 8
  %482 = icmp ne %struct.TYPE_10__** %481, null
  br i1 %482, label %483, label %571

483:                                              ; preds = %478
  store i32 0, i32* %20, align 4
  br label %484

484:                                              ; preds = %493, %483
  %485 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %485, i32 0, i32 6
  %487 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %486, align 8
  %488 = load i32, i32* %20, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %487, i64 %489
  %491 = load %struct.TYPE_10__*, %struct.TYPE_10__** %490, align 8
  %492 = icmp ne %struct.TYPE_10__* %491, null
  br i1 %492, label %493, label %496

493:                                              ; preds = %484
  %494 = load i32, i32* %20, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %20, align 4
  br label %484

496:                                              ; preds = %484
  %497 = load i32, i32* %20, align 4
  %498 = add nsw i32 %497, 1
  %499 = sext i32 %498 to i64
  %500 = mul i64 8, %499
  %501 = trunc i64 %500 to i32
  %502 = call i8* @emalloc(i32 %501)
  %503 = bitcast i8* %502 to %struct.TYPE_10__**
  store %struct.TYPE_10__** %503, %struct.TYPE_10__*** %19, align 8
  store i32 0, i32* %20, align 4
  br label %504

504:                                              ; preds = %513, %496
  %505 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %505, i32 0, i32 6
  %507 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %506, align 8
  %508 = load i32, i32* %20, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %507, i64 %509
  %511 = load %struct.TYPE_10__*, %struct.TYPE_10__** %510, align 8
  %512 = icmp ne %struct.TYPE_10__* %511, null
  br i1 %512, label %513, label %563

513:                                              ; preds = %504
  %514 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %515 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %514, i32 0, i32 6
  %516 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %515, align 8
  %517 = load i32, i32* %20, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %516, i64 %518
  %520 = load %struct.TYPE_10__*, %struct.TYPE_10__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = sub nsw i32 %522, 1
  %524 = sext i32 %523 to i64
  %525 = mul i64 %524, 8
  %526 = add i64 4, %525
  %527 = trunc i64 %526 to i32
  %528 = call i8* @emalloc(i32 %527)
  %529 = bitcast i8* %528 to %struct.TYPE_10__*
  %530 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %19, align 8
  %531 = load i32, i32* %20, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %530, i64 %532
  store %struct.TYPE_10__* %529, %struct.TYPE_10__** %533, align 8
  %534 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %19, align 8
  %535 = load i32, i32* %20, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %534, i64 %536
  %538 = load %struct.TYPE_10__*, %struct.TYPE_10__** %537, align 8
  %539 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %540 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %539, i32 0, i32 6
  %541 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %540, align 8
  %542 = load i32, i32* %20, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %541, i64 %543
  %545 = load %struct.TYPE_10__*, %struct.TYPE_10__** %544, align 8
  %546 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %547 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %546, i32 0, i32 6
  %548 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %547, align 8
  %549 = load i32, i32* %20, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %548, i64 %550
  %552 = load %struct.TYPE_10__*, %struct.TYPE_10__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 4
  %555 = sub nsw i32 %554, 1
  %556 = sext i32 %555 to i64
  %557 = mul i64 %556, 8
  %558 = add i64 4, %557
  %559 = trunc i64 %558 to i32
  %560 = call i32 @memcpy(%struct.TYPE_10__* %538, %struct.TYPE_10__* %545, i32 %559)
  %561 = load i32, i32* %20, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %20, align 4
  br label %504

563:                                              ; preds = %504
  %564 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %19, align 8
  %565 = load i32, i32* %20, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %564, i64 %566
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %567, align 8
  %568 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %19, align 8
  %569 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %570 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %569, i32 0, i32 6
  store %struct.TYPE_10__** %568, %struct.TYPE_10__*** %570, align 8
  br label %571

571:                                              ; preds = %563, %478
  br label %572

572:                                              ; preds = %571, %360
  ret void
}

declare dso_local i8* @ARENA_REALLOC(%struct.TYPE_11__*) #1

declare dso_local i64 @IN_ARENA(%struct.TYPE_11__*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @ZVAL_COPY_VALUE_PROP(i32*, i32*) #1

declare dso_local i32 @zend_hash_clone_methods(i32*) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i32 @ZVAL_INDIRECT(i32*, i32*) #1

declare dso_local i32 @ZEND_MAP_PTR_INIT(i32, i32**) #1

declare dso_local i32 @zend_hash_clone_prop_info(i32*) #1

declare dso_local i32 @zend_hash_clone_constants(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @zend_update_inherited_handler(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
