; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_unserialize_op_array.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_unserialize_op_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_21__*, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__**, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32* }
%struct.TYPE_21__ = type { i64, i64, i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_20__, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_21__* }

@ZVAL_PTR_DTOR = common dso_local global i32 0, align 4
@IS_CONST = common dso_local global i64 0, align 8
@ZEND_ACC_HAS_RETURN_TYPE = common dso_local global i32 0, align 4
@ZEND_ACC_VARIADIC = common dso_local global i32 0, align 4
@ZEND_ACC_IMMUTABLE = common dso_local global i32 0, align 4
@ZEND_LAST_CATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32*, i8*)* @zend_file_cache_unserialize_op_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_file_cache_unserialize_op_array(%struct.TYPE_22__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__**, align 8
  %15 = alloca %struct.TYPE_21__**, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %19 = icmp ne %struct.TYPE_21__* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %3
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %24 = call i32 @IS_UNSERIALIZED(%struct.TYPE_21__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %29)
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %7, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @ZVAL_PTR_DTOR, align 4
  %38 = call i32 @zend_file_cache_unserialize_hash(%struct.TYPE_21__* %34, i32* %35, i8* %36, i32 (%struct.TYPE_21__*, i32*, i8*)* @zend_file_cache_unserialize_zval, i32 %37)
  br label %39

39:                                               ; preds = %26, %20, %3
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 19
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %92

44:                                               ; preds = %39
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 19
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 18
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 17
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %53)
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 16
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %57)
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 15
  %61 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %60, align 8
  %62 = bitcast %struct.TYPE_21__** %61 to %struct.TYPE_21__*
  %63 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %62)
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 14
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  %67 = call i32 @UNSERIALIZE_STR(%struct.TYPE_21__* %66)
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 13
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = call i32 @UNSERIALIZE_STR(%struct.TYPE_21__* %70)
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 12
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %74)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 11
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %78)
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 10
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %81, align 8
  %83 = call i32 @UNSERIALIZE_STR(%struct.TYPE_21__* %82)
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 9
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %86)
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %90)
  br label %362

92:                                               ; preds = %39
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 18
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = icmp ne %struct.TYPE_21__* %95, null
  br i1 %96, label %97, label %129

97:                                               ; preds = %92
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 18
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %99, align 8
  %101 = call i32 @IS_UNSERIALIZED(%struct.TYPE_21__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %129, label %103

103:                                              ; preds = %97
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 18
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %106)
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 18
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  store %struct.TYPE_21__* %110, %struct.TYPE_21__** %8, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i64 %115
  store %struct.TYPE_21__* %116, %struct.TYPE_21__** %9, align 8
  br label %117

117:                                              ; preds = %121, %103
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %120 = icmp ult %struct.TYPE_21__* %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @zend_file_cache_unserialize_zval(%struct.TYPE_21__* %122, i32* %123, i8* %124)
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 1
  store %struct.TYPE_21__* %127, %struct.TYPE_21__** %8, align 8
  br label %117

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %97, %92
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 17
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = call i32 @IS_UNSERIALIZED(%struct.TYPE_21__* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %362, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 17
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %138)
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 17
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %141, align 8
  store %struct.TYPE_21__* %142, %struct.TYPE_21__** %10, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i64 %147
  store %struct.TYPE_21__* %148, %struct.TYPE_21__** %11, align 8
  br label %149

149:                                              ; preds = %187, %135
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %152 = icmp ult %struct.TYPE_21__* %150, %151
  br i1 %152, label %153, label %192

153:                                              ; preds = %149
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @IS_CONST, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %153
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 7
  %164 = bitcast %struct.TYPE_20__* %163 to { %struct.TYPE_21__*, %struct.TYPE_21__* }*
  %165 = getelementptr inbounds { %struct.TYPE_21__*, %struct.TYPE_21__* }, { %struct.TYPE_21__*, %struct.TYPE_21__* }* %164, i32 0, i32 0
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %165, align 8
  %167 = getelementptr inbounds { %struct.TYPE_21__*, %struct.TYPE_21__* }, { %struct.TYPE_21__*, %struct.TYPE_21__* }* %164, i32 0, i32 1
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %167, align 8
  %169 = call i32 @ZEND_PASS_TWO_UPDATE_CONSTANT(%struct.TYPE_22__* %160, %struct.TYPE_21__* %161, %struct.TYPE_21__* %166, %struct.TYPE_21__* %168)
  br label %170

170:                                              ; preds = %159, %153
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @IS_CONST, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %170
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 6
  %181 = bitcast %struct.TYPE_20__* %180 to { %struct.TYPE_21__*, %struct.TYPE_21__* }*
  %182 = getelementptr inbounds { %struct.TYPE_21__*, %struct.TYPE_21__* }, { %struct.TYPE_21__*, %struct.TYPE_21__* }* %181, i32 0, i32 0
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %182, align 8
  %184 = getelementptr inbounds { %struct.TYPE_21__*, %struct.TYPE_21__* }, { %struct.TYPE_21__*, %struct.TYPE_21__* }* %181, i32 0, i32 1
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %184, align 8
  %186 = call i32 @ZEND_PASS_TWO_UPDATE_CONSTANT(%struct.TYPE_22__* %177, %struct.TYPE_21__* %178, %struct.TYPE_21__* %183, %struct.TYPE_21__* %185)
  br label %187

187:                                              ; preds = %176, %170
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %189 = call i32 @zend_deserialize_opcode_handler(%struct.TYPE_21__* %188)
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 1
  store %struct.TYPE_21__* %191, %struct.TYPE_21__** %10, align 8
  br label %149

192:                                              ; preds = %149
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 16
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %194, align 8
  %196 = icmp ne %struct.TYPE_21__* %195, null
  br i1 %196, label %197, label %255

197:                                              ; preds = %192
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 16
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %199, align 8
  %201 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %200)
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 16
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %203, align 8
  store %struct.TYPE_21__* %204, %struct.TYPE_21__** %12, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i64 %209
  store %struct.TYPE_21__* %210, %struct.TYPE_21__** %13, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @ZEND_ACC_HAS_RETURN_TYPE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %197
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 -1
  store %struct.TYPE_21__* %219, %struct.TYPE_21__** %12, align 8
  br label %220

220:                                              ; preds = %217, %197
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @ZEND_ACC_VARIADIC, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %220
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 1
  store %struct.TYPE_21__* %229, %struct.TYPE_21__** %13, align 8
  br label %230

230:                                              ; preds = %227, %220
  br label %231

231:                                              ; preds = %246, %230
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %234 = icmp ult %struct.TYPE_21__* %232, %233
  br i1 %234, label %235, label %254

235:                                              ; preds = %231
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 5
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %237, align 8
  %239 = call i32 @IS_UNSERIALIZED(%struct.TYPE_21__* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %235
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 5
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %243, align 8
  %245 = call i32 @UNSERIALIZE_STR(%struct.TYPE_21__* %244)
  br label %246

246:                                              ; preds = %241, %235
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 4
  %249 = load i32*, i32** %5, align 8
  %250 = load i8*, i8** %6, align 8
  %251 = call i32 @zend_file_cache_unserialize_type(i32* %248, i32* %249, i8* %250)
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 1
  store %struct.TYPE_21__* %253, %struct.TYPE_21__** %12, align 8
  br label %231

254:                                              ; preds = %231
  br label %255

255:                                              ; preds = %254, %192
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 15
  %258 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %257, align 8
  %259 = icmp ne %struct.TYPE_21__** %258, null
  br i1 %259, label %260, label %292

260:                                              ; preds = %255
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 15
  %263 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %262, align 8
  %264 = bitcast %struct.TYPE_21__** %263 to %struct.TYPE_21__*
  %265 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %264)
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 15
  %268 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %267, align 8
  store %struct.TYPE_21__** %268, %struct.TYPE_21__*** %14, align 8
  %269 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %269, i64 %273
  store %struct.TYPE_21__** %274, %struct.TYPE_21__*** %15, align 8
  br label %275

275:                                              ; preds = %288, %260
  %276 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %277 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %15, align 8
  %278 = icmp ult %struct.TYPE_21__** %276, %277
  br i1 %278, label %279, label %291

279:                                              ; preds = %275
  %280 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %280, align 8
  %282 = call i32 @IS_UNSERIALIZED(%struct.TYPE_21__* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %279
  %285 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %285, align 8
  %287 = call i32 @UNSERIALIZE_STR(%struct.TYPE_21__* %286)
  br label %288

288:                                              ; preds = %284, %279
  %289 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %289, i32 1
  store %struct.TYPE_21__** %290, %struct.TYPE_21__*** %14, align 8
  br label %275

291:                                              ; preds = %275
  br label %292

292:                                              ; preds = %291, %255
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 14
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %294, align 8
  %296 = call i32 @UNSERIALIZE_STR(%struct.TYPE_21__* %295)
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 13
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %298, align 8
  %300 = call i32 @UNSERIALIZE_STR(%struct.TYPE_21__* %299)
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 12
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %302, align 8
  %304 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %303)
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 11
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %306, align 8
  %308 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %307)
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 10
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %310, align 8
  %312 = call i32 @UNSERIALIZE_STR(%struct.TYPE_21__* %311)
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 9
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %314, align 8
  %316 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %315)
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 8
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %318, align 8
  %320 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %319)
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @ZEND_ACC_IMMUTABLE, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %349

327:                                              ; preds = %292
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 6
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %329, align 8
  %331 = icmp ne %struct.TYPE_21__* %330, null
  br i1 %331, label %332, label %337

332:                                              ; preds = %327
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 7
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @ZEND_MAP_PTR_NEW(i32 %335)
  br label %344

337:                                              ; preds = %327
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 7
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 6
  %343 = call i32 @ZEND_MAP_PTR_INIT(i32 %340, %struct.TYPE_21__** %342)
  br label %344

344:                                              ; preds = %337, %332
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @ZEND_MAP_PTR_NEW(i32 %347)
  br label %361

349:                                              ; preds = %292
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 7
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i32 0, i32 6
  %355 = call i32 @ZEND_MAP_PTR_INIT(i32 %352, %struct.TYPE_21__** %354)
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 5
  %358 = load i32, i32* %357, align 4
  %359 = call %struct.TYPE_21__* @ZEND_MAP_PTR(i32 %358)
  %360 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_21__* %359)
  br label %361

361:                                              ; preds = %349, %344
  br label %362

362:                                              ; preds = %44, %361, %129
  ret void
}

declare dso_local i32 @IS_UNSERIALIZED(%struct.TYPE_21__*) #1

declare dso_local i32 @UNSERIALIZE_PTR(%struct.TYPE_21__*) #1

declare dso_local i32 @zend_file_cache_unserialize_hash(%struct.TYPE_21__*, i32*, i8*, i32 (%struct.TYPE_21__*, i32*, i8*)*, i32) #1

declare dso_local i32 @zend_file_cache_unserialize_zval(%struct.TYPE_21__*, i32*, i8*) #1

declare dso_local i32 @UNSERIALIZE_STR(%struct.TYPE_21__*) #1

declare dso_local i32 @ZEND_PASS_TWO_UPDATE_CONSTANT(%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @zend_deserialize_opcode_handler(%struct.TYPE_21__*) #1

declare dso_local i32 @zend_file_cache_unserialize_type(i32*, i32*, i8*) #1

declare dso_local i32 @ZEND_MAP_PTR_NEW(i32) #1

declare dso_local i32 @ZEND_MAP_PTR_INIT(i32, %struct.TYPE_21__**) #1

declare dso_local %struct.TYPE_21__* @ZEND_MAP_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
