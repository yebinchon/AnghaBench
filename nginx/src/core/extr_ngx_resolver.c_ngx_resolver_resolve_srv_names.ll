; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolver_resolve_srv_names.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolver_resolve_srv_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32 (%struct.TYPE_28__*)*, i64, i64, i32, %struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_22__, %struct.TYPE_20__*, i32*, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { %struct.TYPE_28__*, i32, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_27__*)* @ngx_resolver_resolve_srv_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_resolver_resolve_srv_names(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %4, align 8
  %9 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 11
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_25__* %11, %struct.TYPE_25__** %6, align 8
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 10
  store i32* null, i32** %13, align 8
  %14 = load i64, i64* @NGX_OK, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 4
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 40
  %33 = trunc i64 %32 to i32
  %34 = call %struct.TYPE_26__* @ngx_resolver_calloc(%struct.TYPE_25__* %27, i32 %33)
  store %struct.TYPE_26__* %34, %struct.TYPE_26__** %8, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %36 = icmp eq %struct.TYPE_26__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %217

38:                                               ; preds = %2
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 6
  store %struct.TYPE_26__* %39, %struct.TYPE_26__** %41, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 9
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = icmp ne %struct.TYPE_20__* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %38
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 9
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 9
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = call i32 @ngx_del_timer(%struct.TYPE_20__* %61)
  br label %63

63:                                               ; preds = %58, %51, %38
  store i64 0, i64* %5, align 8
  br label %64

64:                                               ; preds = %213, %63
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = icmp ult i64 %65, %69
  br i1 %70, label %71, label %216

71:                                               ; preds = %64
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32* @ngx_resolver_alloc(%struct.TYPE_25__* %72, i32 %81)
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  store i32* %82, i32** %87, align 8
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %71
  br label %217

96:                                               ; preds = %71
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %99, align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %107 = load i64, i64* %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %119, align 8
  %121 = load i64, i64* %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %127 = load i64, i64* %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ngx_memcpy(i32* %116, i32 %125, i32 %131)
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %134 = call %struct.TYPE_28__* @ngx_resolve_start(%struct.TYPE_25__* %133, i32* null)
  store %struct.TYPE_28__* %134, %struct.TYPE_28__** %7, align 8
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %136 = icmp eq %struct.TYPE_28__* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %96
  br label %217

138:                                              ; preds = %96
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 4
  %145 = bitcast %struct.TYPE_22__* %140 to i8*
  %146 = bitcast %struct.TYPE_22__* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 %146, i64 16, i1 false)
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 2
  store i32 (%struct.TYPE_28__*)* @ngx_resolver_srv_names_handler, i32 (%struct.TYPE_28__*)** %148, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 7
  store %struct.TYPE_28__* %149, %struct.TYPE_28__** %151, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %153 = load i64, i64* %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i64 %153
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 6
  store %struct.TYPE_26__* %154, %struct.TYPE_26__** %156, align 8
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %164, align 8
  %166 = load i64, i64* %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %171 = load i64, i64* %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 3
  store i32 %169, i32* %173, align 8
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %176, align 8
  %178 = load i64, i64* %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %183 = load i64, i64* %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 2
  store i32 %181, i32* %185, align 4
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %188, align 8
  %190 = load i64, i64* %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %195 = load i64, i64* %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 1
  store i32 %193, i32* %197, align 8
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %200 = load i64, i64* %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 0
  store %struct.TYPE_28__* %198, %struct.TYPE_28__** %202, align 8
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %204 = call i64 @ngx_resolve_name(%struct.TYPE_28__* %203)
  %205 = load i64, i64* @NGX_ERROR, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %138
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %209 = load i64, i64* %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 0
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %211, align 8
  br label %217

212:                                              ; preds = %138
  br label %213

213:                                              ; preds = %212
  %214 = load i64, i64* %5, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %5, align 8
  br label %64

216:                                              ; preds = %64
  br label %242

217:                                              ; preds = %207, %137, %95, %37
  %218 = load i64, i64* @NGX_ERROR, align 8
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 4
  store i64 %218, i64* %220, align 8
  %221 = call i64 (...) @ngx_time()
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %217
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  br label %231

230:                                              ; preds = %217
  br label %231

231:                                              ; preds = %230, %226
  %232 = phi i32 [ %229, %226 ], [ 10, %230 ]
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %221, %233
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 3
  store i64 %234, i64* %236, align 8
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 2
  %239 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %238, align 8
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %241 = call i32 %239(%struct.TYPE_28__* %240)
  br label %242

242:                                              ; preds = %231, %216
  ret void
}

declare dso_local %struct.TYPE_26__* @ngx_resolver_calloc(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_20__*) #1

declare dso_local i32* @ngx_resolver_alloc(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_resolve_start(%struct.TYPE_25__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_resolver_srv_names_handler(%struct.TYPE_28__*) #1

declare dso_local i64 @ngx_resolve_name(%struct.TYPE_28__*) #1

declare dso_local i64 @ngx_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
