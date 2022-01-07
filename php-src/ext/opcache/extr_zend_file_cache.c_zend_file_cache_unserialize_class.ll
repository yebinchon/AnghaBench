; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_unserialize_class.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_unserialize_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i64, i64, i64, %struct.TYPE_17__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i64*, %struct.TYPE_16__, %struct.TYPE_17__**, i64, %struct.TYPE_17__**, i64, %struct.TYPE_17__*, i64, %struct.TYPE_17__*, %struct.TYPE_17__**, i32, %struct.TYPE_15__, i32, %struct.TYPE_17__*, i32, %struct.TYPE_17__*, i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }

@ZEND_ACC_LINKED = common dso_local global i32 0, align 4
@zend_file_cache_unserialize_func = common dso_local global i32 0, align 4
@ZEND_FUNCTION_DTOR = common dso_local global i32* null, align 8
@zend_file_cache_unserialize_class_constant = common dso_local global i32 0, align 4
@zend_file_cache_unserialize_prop_info = common dso_local global i32 0, align 4
@ZEND_ACC_ANON_CLASS = common dso_local global i32 0, align 4
@zend_class_serialize_deny = common dso_local global i32 0, align 4
@zend_class_unserialize_deny = common dso_local global i32 0, align 4
@ZEND_ACC_IMMUTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32*, i8*)* @zend_file_cache_unserialize_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_file_cache_unserialize_class(%struct.TYPE_17__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_17__**, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_17__**, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = call %struct.TYPE_17__* @Z_PTR_P(%struct.TYPE_17__* %22)
  %24 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = call %struct.TYPE_17__* @Z_PTR_P(%struct.TYPE_17__* %25)
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %7, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 37
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @UNSERIALIZE_STR(i64 %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 45
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = icmp ne %struct.TYPE_17__* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %3
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 46
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @UNSERIALIZE_STR(i64 %45)
  br label %55

47:                                               ; preds = %35
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 45
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %50)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 45
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** %8, align 8
  br label %55

55:                                               ; preds = %47, %42
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 44
  %59 = load i32*, i32** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @zend_file_cache_unserialize_func, align 4
  %62 = load i32*, i32** @ZEND_FUNCTION_DTOR, align 8
  %63 = call i32 @zend_file_cache_unserialize_hash(i32* %58, i32* %59, i8* %60, i32 %61, i32* %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 43
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = icmp ne %struct.TYPE_17__* %66, null
  br i1 %67, label %68, label %94

68:                                               ; preds = %56
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 43
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 43
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  store %struct.TYPE_17__* %75, %struct.TYPE_17__** %9, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i64 %80
  store %struct.TYPE_17__* %81, %struct.TYPE_17__** %10, align 8
  br label %82

82:                                               ; preds = %86, %68
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %85 = icmp ult %struct.TYPE_17__* %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @zend_file_cache_unserialize_zval(%struct.TYPE_17__* %87, i32* %88, i8* %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 1
  store %struct.TYPE_17__* %92, %struct.TYPE_17__** %9, align 8
  br label %82

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %56
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = icmp ne %struct.TYPE_17__* %97, null
  br i1 %98, label %99, label %137

99:                                               ; preds = %94
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  store %struct.TYPE_17__* %106, %struct.TYPE_17__** %11, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %109 = icmp ne %struct.TYPE_17__* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %99
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  br label %115

114:                                              ; preds = %99
  br label %115

115:                                              ; preds = %114, %110
  %116 = phi i32 [ %113, %110 ], [ 0, %114 ]
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i64 %117
  store %struct.TYPE_17__* %118, %struct.TYPE_17__** %12, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i64 %123
  store %struct.TYPE_17__* %124, %struct.TYPE_17__** %13, align 8
  br label %125

125:                                              ; preds = %129, %115
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %128 = icmp ult %struct.TYPE_17__* %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @zend_file_cache_unserialize_zval(%struct.TYPE_17__* %130, i32* %131, i8* %132)
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 1
  store %struct.TYPE_17__* %135, %struct.TYPE_17__** %12, align 8
  br label %125

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %94
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 42
  %140 = load i32*, i32** %5, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load i32, i32* @zend_file_cache_unserialize_class_constant, align 4
  %143 = call i32 @zend_file_cache_unserialize_hash(i32* %139, i32* %140, i8* %141, i32 %142, i32* null)
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 41
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @UNSERIALIZE_STR(i64 %148)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 41
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @UNSERIALIZE_STR(i64 %154)
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 40
  %158 = load i32*, i32** %5, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = load i32, i32* @zend_file_cache_unserialize_prop_info, align 4
  %161 = call i32 @zend_file_cache_unserialize_hash(i32* %157, i32* %158, i8* %159, i32 %160, i32* null)
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 39
  %164 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %163, align 8
  %165 = icmp ne %struct.TYPE_17__** %164, null
  br i1 %165, label %166, label %191

166:                                              ; preds = %137
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 39
  %169 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %168, align 8
  %170 = bitcast %struct.TYPE_17__** %169 to %struct.TYPE_17__*
  %171 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %170)
  store i64 0, i64* %14, align 8
  br label %172

172:                                              ; preds = %187, %166
  %173 = load i64, i64* %14, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp ult i64 %173, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %172
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 39
  %182 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %181, align 8
  %183 = load i64, i64* %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %182, i64 %183
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %184, align 8
  %186 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %185)
  br label %187

187:                                              ; preds = %179
  %188 = load i64, i64* %14, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %14, align 8
  br label %172

190:                                              ; preds = %172
  br label %191

191:                                              ; preds = %190, %137
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %237

196:                                              ; preds = %191
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = call i32 @ZEND_ASSERT(i32 %204)
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 38
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %208)
  store i64 0, i64* %15, align 8
  br label %210

210:                                              ; preds = %233, %196
  %211 = load i64, i64* %15, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = icmp ult i64 %211, %214
  br i1 %215, label %216, label %236

216:                                              ; preds = %210
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 38
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %218, align 8
  %220 = load i64, i64* %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 37
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @UNSERIALIZE_STR(i64 %223)
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 38
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  %228 = load i64, i64* %15, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 35
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @UNSERIALIZE_STR(i64 %231)
  br label %233

233:                                              ; preds = %216
  %234 = load i64, i64* %15, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %15, align 8
  br label %210

236:                                              ; preds = %210
  br label %237

237:                                              ; preds = %236, %191
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %404

242:                                              ; preds = %237
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 36
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %244, align 8
  %246 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %245)
  store i64 0, i64* %16, align 8
  br label %247

247:                                              ; preds = %270, %242
  %248 = load i64, i64* %16, align 8
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = icmp ult i64 %248, %251
  br i1 %252, label %253, label %273

253:                                              ; preds = %247
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 36
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %255, align 8
  %257 = load i64, i64* %16, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 37
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @UNSERIALIZE_STR(i64 %260)
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 36
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %263, align 8
  %265 = load i64, i64* %16, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 35
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @UNSERIALIZE_STR(i64 %268)
  br label %270

270:                                              ; preds = %253
  %271 = load i64, i64* %16, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %16, align 8
  br label %247

273:                                              ; preds = %247
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 34
  %276 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %275, align 8
  %277 = icmp ne %struct.TYPE_17__** %276, null
  br i1 %277, label %278, label %334

278:                                              ; preds = %273
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 34
  %281 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %280, align 8
  %282 = bitcast %struct.TYPE_17__** %281 to %struct.TYPE_17__*
  %283 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %282)
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 34
  %286 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %285, align 8
  store %struct.TYPE_17__** %286, %struct.TYPE_17__*** %17, align 8
  br label %287

287:                                              ; preds = %330, %278
  %288 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %288, align 8
  %290 = icmp ne %struct.TYPE_17__* %289, null
  br i1 %290, label %291, label %333

291:                                              ; preds = %287
  %292 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %292, align 8
  %294 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %293)
  %295 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %295, align 8
  store %struct.TYPE_17__* %296, %struct.TYPE_17__** %18, align 8
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 31
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %291
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 31
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = call i32 @UNSERIALIZE_STR(i64 %306)
  br label %308

308:                                              ; preds = %302, %291
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 31
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %308
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 31
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = call i32 @UNSERIALIZE_STR(i64 %318)
  br label %320

320:                                              ; preds = %314, %308
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 33
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %320
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 33
  %328 = load i64, i64* %327, align 8
  %329 = call i32 @UNSERIALIZE_STR(i64 %328)
  br label %330

330:                                              ; preds = %325, %320
  %331 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %331, i32 1
  store %struct.TYPE_17__** %332, %struct.TYPE_17__*** %17, align 8
  br label %287

333:                                              ; preds = %287
  br label %334

334:                                              ; preds = %333, %273
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 32
  %337 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %336, align 8
  %338 = icmp ne %struct.TYPE_17__** %337, null
  br i1 %338, label %339, label %403

339:                                              ; preds = %334
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 32
  %342 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %341, align 8
  %343 = bitcast %struct.TYPE_17__** %342 to %struct.TYPE_17__*
  %344 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %343)
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 32
  %347 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %346, align 8
  store %struct.TYPE_17__** %347, %struct.TYPE_17__*** %19, align 8
  br label %348

348:                                              ; preds = %399, %339
  %349 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %349, align 8
  %351 = icmp ne %struct.TYPE_17__* %350, null
  br i1 %351, label %352, label %402

352:                                              ; preds = %348
  %353 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %353, align 8
  %355 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %354)
  %356 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %356, align 8
  store %struct.TYPE_17__* %357, %struct.TYPE_17__** %20, align 8
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %359 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %358, i32 0, i32 31
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %352
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 31
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = call i32 @UNSERIALIZE_STR(i64 %367)
  br label %369

369:                                              ; preds = %363, %352
  %370 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 31
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %369
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i32 0, i32 31
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = call i32 @UNSERIALIZE_STR(i64 %379)
  br label %381

381:                                              ; preds = %375, %369
  store i64 0, i64* %21, align 8
  br label %382

382:                                              ; preds = %396, %381
  %383 = load i64, i64* %21, align 8
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 5
  %386 = load i64, i64* %385, align 8
  %387 = icmp ult i64 %383, %386
  br i1 %387, label %388, label %399

388:                                              ; preds = %382
  %389 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 30
  %391 = load i64*, i64** %390, align 8
  %392 = load i64, i64* %21, align 8
  %393 = getelementptr inbounds i64, i64* %391, i64 %392
  %394 = load i64, i64* %393, align 8
  %395 = call i32 @UNSERIALIZE_STR(i64 %394)
  br label %396

396:                                              ; preds = %388
  %397 = load i64, i64* %21, align 8
  %398 = add i64 %397, 1
  store i64 %398, i64* %21, align 8
  br label %382

399:                                              ; preds = %382
  %400 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %401 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %400, i32 1
  store %struct.TYPE_17__** %401, %struct.TYPE_17__*** %19, align 8
  br label %348

402:                                              ; preds = %348
  br label %403

403:                                              ; preds = %402, %334
  br label %404

404:                                              ; preds = %403, %237
  %405 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %405, i32 0, i32 29
  %407 = load %struct.TYPE_17__*, %struct.TYPE_17__** %406, align 8
  %408 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %407)
  %409 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 28
  %411 = load %struct.TYPE_17__*, %struct.TYPE_17__** %410, align 8
  %412 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %411)
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 27
  %415 = load %struct.TYPE_17__*, %struct.TYPE_17__** %414, align 8
  %416 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %415)
  %417 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %418 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %417, i32 0, i32 26
  %419 = load %struct.TYPE_17__*, %struct.TYPE_17__** %418, align 8
  %420 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %419)
  %421 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %421, i32 0, i32 25
  %423 = load %struct.TYPE_17__*, %struct.TYPE_17__** %422, align 8
  %424 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %423)
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i32 0, i32 24
  %427 = load %struct.TYPE_17__*, %struct.TYPE_17__** %426, align 8
  %428 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %427)
  %429 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %429, i32 0, i32 23
  %431 = load %struct.TYPE_17__*, %struct.TYPE_17__** %430, align 8
  %432 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %431)
  %433 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %433, i32 0, i32 22
  %435 = load %struct.TYPE_17__*, %struct.TYPE_17__** %434, align 8
  %436 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %435)
  %437 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %438 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %437, i32 0, i32 21
  %439 = load %struct.TYPE_17__*, %struct.TYPE_17__** %438, align 8
  %440 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %439)
  %441 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %442 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %441, i32 0, i32 20
  %443 = load %struct.TYPE_17__*, %struct.TYPE_17__** %442, align 8
  %444 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %443)
  %445 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %446 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %445, i32 0, i32 19
  %447 = load %struct.TYPE_17__*, %struct.TYPE_17__** %446, align 8
  %448 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %447)
  %449 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %449, i32 0, i32 18
  %451 = load %struct.TYPE_17__*, %struct.TYPE_17__** %450, align 8
  %452 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %451)
  %453 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %454 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %453, i32 0, i32 17
  %455 = load %struct.TYPE_17__*, %struct.TYPE_17__** %454, align 8
  %456 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %455)
  %457 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %458 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* @ZEND_ACC_ANON_CLASS, align 4
  %461 = and i32 %459, %460
  %462 = call i64 @UNEXPECTED(i32 %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %471

464:                                              ; preds = %404
  %465 = load i32, i32* @zend_class_serialize_deny, align 4
  %466 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %467 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %466, i32 0, i32 16
  store i32 %465, i32* %467, align 4
  %468 = load i32, i32* @zend_class_unserialize_deny, align 4
  %469 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %470 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %469, i32 0, i32 15
  store i32 %468, i32* %470, align 8
  br label %471

471:                                              ; preds = %464, %404
  %472 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %473 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %472, i32 0, i32 9
  %474 = load %struct.TYPE_17__*, %struct.TYPE_17__** %473, align 8
  %475 = icmp ne %struct.TYPE_17__* %474, null
  br i1 %475, label %476, label %517

476:                                              ; preds = %471
  %477 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %477, i32 0, i32 9
  %479 = load %struct.TYPE_17__*, %struct.TYPE_17__** %478, align 8
  %480 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %479)
  %481 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %482 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %481, i32 0, i32 9
  %483 = load %struct.TYPE_17__*, %struct.TYPE_17__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %483, i32 0, i32 14
  %485 = load %struct.TYPE_17__*, %struct.TYPE_17__** %484, align 8
  %486 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %485)
  %487 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %488 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %487, i32 0, i32 9
  %489 = load %struct.TYPE_17__*, %struct.TYPE_17__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %489, i32 0, i32 13
  %491 = load %struct.TYPE_17__*, %struct.TYPE_17__** %490, align 8
  %492 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %491)
  %493 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %494 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %493, i32 0, i32 9
  %495 = load %struct.TYPE_17__*, %struct.TYPE_17__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %495, i32 0, i32 12
  %497 = load %struct.TYPE_17__*, %struct.TYPE_17__** %496, align 8
  %498 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %497)
  %499 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %500 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %499, i32 0, i32 9
  %501 = load %struct.TYPE_17__*, %struct.TYPE_17__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %501, i32 0, i32 11
  %503 = load %struct.TYPE_17__*, %struct.TYPE_17__** %502, align 8
  %504 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %503)
  %505 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %506 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %505, i32 0, i32 9
  %507 = load %struct.TYPE_17__*, %struct.TYPE_17__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %507, i32 0, i32 10
  %509 = load %struct.TYPE_17__*, %struct.TYPE_17__** %508, align 8
  %510 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %509)
  %511 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %512 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %511, i32 0, i32 9
  %513 = load %struct.TYPE_17__*, %struct.TYPE_17__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %513, i32 0, i32 8
  %515 = load %struct.TYPE_17__*, %struct.TYPE_17__** %514, align 8
  %516 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_17__* %515)
  br label %517

517:                                              ; preds = %476, %471
  %518 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %519 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* @ZEND_ACC_IMMUTABLE, align 4
  %522 = and i32 %520, %521
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %534

524:                                              ; preds = %517
  %525 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %526 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %525, i32 0, i32 6
  %527 = load %struct.TYPE_17__*, %struct.TYPE_17__** %526, align 8
  %528 = icmp ne %struct.TYPE_17__* %527, null
  br i1 %528, label %529, label %534

529:                                              ; preds = %524
  %530 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %531 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %530, i32 0, i32 7
  %532 = load i32, i32* %531, align 8
  %533 = call i32 @ZEND_MAP_PTR_NEW(i32 %532)
  br label %541

534:                                              ; preds = %524, %517
  %535 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %536 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %535, i32 0, i32 7
  %537 = load i32, i32* %536, align 8
  %538 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %539 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %538, i32 0, i32 6
  %540 = call i32 @ZEND_MAP_PTR_INIT(i32 %537, %struct.TYPE_17__** %539)
  br label %541

541:                                              ; preds = %534, %529
  ret void
}

declare dso_local i32 @UNSERIALIZE_PTR(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @Z_PTR_P(%struct.TYPE_17__*) #1

declare dso_local i32 @UNSERIALIZE_STR(i64) #1

declare dso_local i32 @zend_file_cache_unserialize_hash(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @zend_file_cache_unserialize_zval(%struct.TYPE_17__*, i32*, i8*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i32 @ZEND_MAP_PTR_NEW(i32) #1

declare dso_local i32 @ZEND_MAP_PTR_INIT(i32, %struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
