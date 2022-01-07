; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_range_filter_module.c_ngx_http_range_singlepart_body.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_range_filter_module.c_ngx_http_range_singlepart_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_23__*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64, i32, i32, i32, i32, i64, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"http range body buf: %O-%O\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"http range body skip\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_23__*)* @ngx_http_range_singlepart_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_range_singlepart_body(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_23__**, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__** %12, %struct.TYPE_23__*** %15, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %16, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %13, align 8
  br label %22

22:                                               ; preds = %241, %3
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %24 = icmp ne %struct.TYPE_23__* %23, null
  br i1 %24, label %25, label %245

25:                                               ; preds = %22
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %11, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %36 = call i64 @ngx_buf_size(%struct.TYPE_24__* %35)
  %37 = add nsw i64 %34, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @ngx_log_debug2(i32 %41, i32 %46, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %48)
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %51 = call i64 @ngx_buf_special(%struct.TYPE_24__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %25
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %241

60:                                               ; preds = %53
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.TYPE_23__* @ngx_alloc_chain_link(i32 %63)
  store %struct.TYPE_23__* %64, %struct.TYPE_23__** %14, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %66 = icmp eq %struct.TYPE_23__* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @NGX_ERROR, align 4
  store i32 %68, i32* %4, align 4
  br label %264

69:                                               ; preds = %60
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  store %struct.TYPE_24__* %70, %struct.TYPE_24__** %72, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %74, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %76 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %15, align 8
  store %struct.TYPE_23__* %75, %struct.TYPE_23__** %76, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  store %struct.TYPE_23__** %78, %struct.TYPE_23__*** %15, align 8
  br label %241

79:                                               ; preds = %25
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %85, %79
  %92 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ngx_log_debug0(i32 %92, i32 %97, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %91
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %103, %91
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 2
  store i32 1, i32* %116, align 8
  br label %241

117:                                              ; preds = %85
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %117
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = sub nsw i64 %131, %132
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %133
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %135, align 8
  br label %140

140:                                              ; preds = %128, %123
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %142 = call i64 @ngx_buf_in_memory(%struct.TYPE_24__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %8, align 8
  %149 = sub nsw i64 %147, %148
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, %149
  store i64 %153, i64* %151, align 8
  br label %154

154:                                              ; preds = %144, %140
  br label %155

155:                                              ; preds = %154, %117
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %9, align 8
  %160 = icmp sle i64 %158, %159
  br i1 %160, label %161, label %222

161:                                              ; preds = %155
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 6
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %161
  %167 = load i64, i64* %9, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = sub nsw i64 %167, %170
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = sub nsw i64 %175, %171
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 4
  br label %178

178:                                              ; preds = %166, %161
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %180 = call i64 @ngx_buf_in_memory(%struct.TYPE_24__* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %178
  %183 = load i64, i64* %9, align 8
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %183, %186
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = sub i64 %190, %187
  store i64 %191, i64* %189, align 8
  br label %192

192:                                              ; preds = %182, %178
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = icmp eq %struct.TYPE_20__* %193, %196
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 1, i32 0
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 4
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 4
  store i32 1, i32* %203, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call %struct.TYPE_23__* @ngx_alloc_chain_link(i32 %206)
  store %struct.TYPE_23__* %207, %struct.TYPE_23__** %14, align 8
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %209 = icmp eq %struct.TYPE_23__* %208, null
  br i1 %209, label %210, label %212

210:                                              ; preds = %192
  %211 = load i32, i32* @NGX_ERROR, align 4
  store i32 %211, i32* %4, align 4
  br label %264

212:                                              ; preds = %192
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 1
  store %struct.TYPE_24__* %213, %struct.TYPE_24__** %215, align 8
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %217, align 8
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %219 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %15, align 8
  store %struct.TYPE_23__* %218, %struct.TYPE_23__** %219, align 8
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  store %struct.TYPE_23__** %221, %struct.TYPE_23__*** %15, align 8
  br label %241

222:                                              ; preds = %155
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call %struct.TYPE_23__* @ngx_alloc_chain_link(i32 %225)
  store %struct.TYPE_23__* %226, %struct.TYPE_23__** %14, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %228 = icmp eq %struct.TYPE_23__* %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %222
  %230 = load i32, i32* @NGX_ERROR, align 4
  store i32 %230, i32* %4, align 4
  br label %264

231:                                              ; preds = %222
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 1
  store %struct.TYPE_24__* %232, %struct.TYPE_24__** %234, align 8
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %236, align 8
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %238 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %15, align 8
  store %struct.TYPE_23__* %237, %struct.TYPE_23__** %238, align 8
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 0
  store %struct.TYPE_23__** %240, %struct.TYPE_23__*** %15, align 8
  br label %241

241:                                              ; preds = %231, %212, %109, %69, %59
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %243, align 8
  store %struct.TYPE_23__* %244, %struct.TYPE_23__** %13, align 8
  br label %22

245:                                              ; preds = %22
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %248 = call i32 @ngx_http_next_body_filter(%struct.TYPE_20__* %246, %struct.TYPE_23__* %247)
  store i32 %248, i32* %10, align 4
  br label %249

249:                                              ; preds = %252, %245
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %251 = icmp ne %struct.TYPE_23__* %250, null
  br i1 %251, label %252, label %262

252:                                              ; preds = %249
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %253, %struct.TYPE_23__** %13, align 8
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %255, align 8
  store %struct.TYPE_23__* %256, %struct.TYPE_23__** %12, align 8
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %261 = call i32 @ngx_free_chain(i32 %259, %struct.TYPE_23__* %260)
  br label %249

262:                                              ; preds = %249
  %263 = load i32, i32* %10, align 4
  store i32 %263, i32* %4, align 4
  br label %264

264:                                              ; preds = %262, %229, %210, %67
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local i64 @ngx_buf_size(%struct.TYPE_24__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i64) #1

declare dso_local i64 @ngx_buf_special(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @ngx_alloc_chain_link(i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_buf_in_memory(%struct.TYPE_24__*) #1

declare dso_local i32 @ngx_http_next_body_filter(%struct.TYPE_20__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ngx_free_chain(i32, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
