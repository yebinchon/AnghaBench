; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_hash.c_ngx_hash_wildcard_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_hash.c_ngx_hash_wildcard_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, %struct.TYPE_14__*, i64 (i8*, i64)*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_19__, i64 }
%struct.TYPE_19__ = type { i64, i8* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_15__ = type { i8* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_hash_wildcard_init(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_17__, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @ngx_array_init(%struct.TYPE_18__* %13, i32 %21, i64 %22, i32 32)
  %24 = load i64, i64* @NGX_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* @NGX_ERROR, align 8
  store i64 %27, i64* %4, align 8
  br label %337

28:                                               ; preds = %3
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @ngx_array_init(%struct.TYPE_18__* %14, i32 %31, i64 %32, i32 32)
  %34 = load i64, i64* @NGX_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* @NGX_ERROR, align 8
  store i64 %37, i64* %4, align 8
  br label %337

38:                                               ; preds = %28
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %321, %38
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %323

43:                                               ; preds = %39
  store i64 0, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %45, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %44
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 46
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  store i64 1, i64* %12, align 8
  br label %70

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %44

70:                                               ; preds = %65, %44
  %71 = call %struct.TYPE_16__* @ngx_array_push(%struct.TYPE_18__* %13)
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %15, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %73 = icmp eq %struct.TYPE_16__* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* @NGX_ERROR, align 8
  store i64 %75, i64* %4, align 8
  br label %337

76:                                               ; preds = %70
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  store i8* %86, i8** %89, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = load i64 (i8*, i64)*, i64 (i8*, i64)** %91, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 %92(i8* %96, i64 %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load i64, i64* %8, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %9, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %76
  %116 = load i64, i64* %8, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %8, align 8
  br label %118

118:                                              ; preds = %115, %76
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %8, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %166

128:                                              ; preds = %118
  %129 = call %struct.TYPE_16__* @ngx_array_push(%struct.TYPE_18__* %14)
  store %struct.TYPE_16__* %129, %struct.TYPE_16__** %16, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %131 = icmp eq %struct.TYPE_16__* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i64, i64* @NGX_ERROR, align 8
  store i64 %133, i64* %4, align 8
  br label %337

134:                                              ; preds = %128
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = load i64, i64* %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %8, align 8
  %142 = sub i64 %140, %141
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  store i64 %142, i64* %145, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = load i64, i64* %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load i64, i64* %8, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 1
  store i8* %153, i8** %156, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %160 = load i64, i64* %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %134, %118
  %167 = load i64, i64* %11, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %10, align 8
  br label %169

169:                                              ; preds = %253, %166
  %170 = load i64, i64* %10, align 8
  %171 = load i64, i64* %7, align 8
  %172 = icmp ult i64 %170, %171
  br i1 %172, label %173, label %256

173:                                              ; preds = %169
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %175 = load i64, i64* %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %181 = load i64, i64* %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = load i64, i64* %8, align 8
  %187 = call i64 @ngx_strncmp(i8* %179, i8* %185, i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %173
  br label %256

190:                                              ; preds = %173
  %191 = load i64, i64* %12, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %215, label %193

193:                                              ; preds = %190
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %195 = load i64, i64* %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %8, align 8
  %201 = icmp ugt i64 %199, %200
  br i1 %201, label %202, label %215

202:                                              ; preds = %193
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %204 = load i64, i64* %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = load i64, i64* %8, align 8
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp ne i32 %212, 46
  br i1 %213, label %214, label %215

214:                                              ; preds = %202
  br label %256

215:                                              ; preds = %202, %193, %190
  %216 = call %struct.TYPE_16__* @ngx_array_push(%struct.TYPE_18__* %14)
  store %struct.TYPE_16__* %216, %struct.TYPE_16__** %16, align 8
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %218 = icmp eq %struct.TYPE_16__* %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load i64, i64* @NGX_ERROR, align 8
  store i64 %220, i64* %4, align 8
  br label %337

221:                                              ; preds = %215
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %223 = load i64, i64* %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %9, align 8
  %229 = sub i64 %227, %228
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  store i64 %229, i64* %232, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %234 = load i64, i64* %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = load i64, i64* %9, align 8
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 1
  store i8* %240, i8** %243, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 2
  store i64 0, i64* %245, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %247 = load i64, i64* %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  store i8* %250, i8** %252, align 8
  br label %253

253:                                              ; preds = %221
  %254 = load i64, i64* %10, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %10, align 8
  br label %169

256:                                              ; preds = %214, %189, %169
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %307

260:                                              ; preds = %256
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %262 = bitcast %struct.TYPE_17__* %17 to i8*
  %263 = bitcast %struct.TYPE_17__* %261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %262, i8* align 8 %263, i64 32, i1 false)
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store i32* null, i32** %264, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = inttoptr i64 %266 to %struct.TYPE_16__*
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = call i64 @ngx_hash_wildcard_init(%struct.TYPE_17__* %17, %struct.TYPE_16__* %267, i64 %269)
  %271 = load i64, i64* @NGX_OK, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %260
  %274 = load i64, i64* @NGX_ERROR, align 8
  store i64 %274, i64* %4, align 8
  br label %337

275:                                              ; preds = %260
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = bitcast i32* %277 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %278, %struct.TYPE_15__** %18, align 8
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %280 = load i64, i64* %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* %8, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %295

287:                                              ; preds = %275
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %289 = load i64, i64* %11, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  store i8* %292, i8** %294, align 8
  br label %295

295:                                              ; preds = %287, %275
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %297 = ptrtoint %struct.TYPE_15__* %296 to i64
  %298 = load i64, i64* %12, align 8
  %299 = icmp ne i64 %298, 0
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i32 3, i32 2
  %302 = sext i32 %301 to i64
  %303 = or i64 %297, %302
  %304 = inttoptr i64 %303 to i8*
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  store i8* %304, i8** %306, align 8
  br label %320

307:                                              ; preds = %256
  %308 = load i64, i64* %12, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %319

310:                                              ; preds = %307
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = ptrtoint i8* %313 to i64
  %315 = or i64 %314, 1
  %316 = inttoptr i64 %315 to i8*
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 0
  store i8* %316, i8** %318, align 8
  br label %319

319:                                              ; preds = %310, %307
  br label %320

320:                                              ; preds = %319, %295
  br label %321

321:                                              ; preds = %320
  %322 = load i64, i64* %10, align 8
  store i64 %322, i64* %11, align 8
  br label %39

323:                                              ; preds = %39
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = inttoptr i64 %326 to %struct.TYPE_16__*
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = call i64 @ngx_hash_init(%struct.TYPE_17__* %324, %struct.TYPE_16__* %327, i64 %329)
  %331 = load i64, i64* @NGX_OK, align 8
  %332 = icmp ne i64 %330, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %323
  %334 = load i64, i64* @NGX_ERROR, align 8
  store i64 %334, i64* %4, align 8
  br label %337

335:                                              ; preds = %323
  %336 = load i64, i64* @NGX_OK, align 8
  store i64 %336, i64* %4, align 8
  br label %337

337:                                              ; preds = %335, %333, %273, %219, %132, %74, %36, %26
  %338 = load i64, i64* %4, align 8
  ret i64 %338
}

declare dso_local i64 @ngx_array_init(%struct.TYPE_18__*, i32, i64, i32) #1

declare dso_local %struct.TYPE_16__* @ngx_array_push(%struct.TYPE_18__*) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_hash_init(%struct.TYPE_17__*, %struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
