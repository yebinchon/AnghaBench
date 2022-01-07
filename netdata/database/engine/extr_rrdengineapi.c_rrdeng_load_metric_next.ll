; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_load_metric_next.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_load_metric_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrddim_query_handle = type { i32, %struct.rrdeng_query_handle }
%struct.rrdeng_query_handle = type { i32, i32, i32, %struct.rrdeng_page_descr*, %struct.TYPE_6__*, %struct.rrdengine_instance* }
%struct.rrdeng_page_descr = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.rrdengine_instance = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INVALID_TIME = common dso_local global i32 0, align 4
@SN_EMPTY_SLOT = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrdeng_load_metric_next(%struct.rrddim_query_handle* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rrddim_query_handle*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rrdeng_query_handle*, align 8
  %7 = alloca %struct.rrdengine_instance*, align 8
  %8 = alloca %struct.rrdeng_page_descr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rrddim_query_handle* %0, %struct.rrddim_query_handle** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load %struct.rrddim_query_handle*, %struct.rrddim_query_handle** %4, align 8
  %19 = getelementptr inbounds %struct.rrddim_query_handle, %struct.rrddim_query_handle* %18, i32 0, i32 1
  store %struct.rrdeng_query_handle* %19, %struct.rrdeng_query_handle** %6, align 8
  %20 = load i32, i32* @INVALID_TIME, align 4
  %21 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %22 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @SN_EMPTY_SLOT, align 4
  store i32 %29, i32* %3, align 4
  br label %250

30:                                               ; preds = %2
  %31 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %32 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %31, i32 0, i32 5
  %33 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %32, align 8
  store %struct.rrdengine_instance* %33, %struct.rrdengine_instance** %7, align 8
  %34 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %35 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %34, i32 0, i32 3
  %36 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %35, align 8
  store %struct.rrdeng_page_descr* %36, %struct.rrdeng_page_descr** %8, align 8
  %37 = icmp eq %struct.rrdeng_page_descr* null, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %43 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @USEC_PER_SEC, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  br label %50

47:                                               ; preds = %30
  %48 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %49 = call i32 @pg_cache_atomic_get_pg_info(%struct.rrdeng_page_descr* %48, i32* %15, i32* %16)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %52 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %56 = icmp eq %struct.rrdeng_page_descr* null, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %61, 4
  %63 = icmp uge i64 %59, %62
  br label %64

64:                                               ; preds = %57, %50
  %65 = phi i1 [ true, %50 ], [ %63, %57 ]
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %179

69:                                               ; preds = %64
  %70 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %71 = icmp ne %struct.rrdeng_page_descr* %70, null
  br i1 %71, label %72, label %101

72:                                               ; preds = %69
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @USEC_PER_SEC, align 4
  %75 = sdiv i32 %73, %74
  %76 = add nsw i32 %75, 1
  %77 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %78 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %80 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.rrddim_query_handle*, %struct.rrddim_query_handle** %4, align 8
  %83 = getelementptr inbounds %struct.rrddim_query_handle, %struct.rrddim_query_handle* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  br label %245

90:                                               ; preds = %72
  %91 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %92 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @USEC_PER_SEC, align 4
  %95 = mul nsw i32 %93, %94
  store i32 %95, i32* %13, align 4
  %96 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %7, align 8
  %97 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %98 = call i32 @pg_cache_put(%struct.rrdengine_instance* %96, %struct.rrdeng_page_descr* %97)
  %99 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %100 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %99, i32 0, i32 3
  store %struct.rrdeng_page_descr* null, %struct.rrdeng_page_descr** %100, align 8
  br label %101

101:                                              ; preds = %90, %69
  %102 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %7, align 8
  %103 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %104 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %103, i32 0, i32 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %107 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %106, i32 0, i32 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.rrddim_query_handle*, %struct.rrddim_query_handle** %4, align 8
  %112 = getelementptr inbounds %struct.rrddim_query_handle, %struct.rrddim_query_handle* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @USEC_PER_SEC, align 4
  %115 = mul nsw i32 %113, %114
  %116 = call %struct.rrdeng_page_descr* @pg_cache_lookup_next(%struct.rrdengine_instance* %102, %struct.TYPE_6__* %105, i32* %109, i32 %110, i32 %115)
  store %struct.rrdeng_page_descr* %116, %struct.rrdeng_page_descr** %8, align 8
  %117 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %118 = icmp eq %struct.rrdeng_page_descr* null, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %101
  br label %245

120:                                              ; preds = %101
  %121 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %122 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %123 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %122, i32 0, i32 3
  store %struct.rrdeng_page_descr* %121, %struct.rrdeng_page_descr** %123, align 8
  %124 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %125 = call i32 @pg_cache_atomic_get_pg_info(%struct.rrdeng_page_descr* %124, i32* %15, i32* %16)
  %126 = load i32, i32* @INVALID_TIME, align 4
  %127 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %128 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %120
  %132 = load i32, i32* @INVALID_TIME, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp eq i32 %132, %133
  br label %135

135:                                              ; preds = %131, %120
  %136 = phi i1 [ true, %120 ], [ %134, %131 ]
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %245

141:                                              ; preds = %135
  %142 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %143 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %150 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sgt i32 %148, %151
  br label %153

153:                                              ; preds = %147, %141
  %154 = phi i1 [ false, %141 ], [ %152, %147 ]
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %153
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = udiv i64 %160, 4
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %165 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %163, %166
  %168 = load i32, i32* %12, align 4
  %169 = sub i32 %168, 1
  %170 = mul i32 %167, %169
  %171 = load i32, i32* %15, align 4
  %172 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %173 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %171, %174
  %176 = udiv i32 %170, %175
  store i32 %176, i32* %11, align 4
  br label %178

177:                                              ; preds = %153
  store i32 0, i32* %11, align 4
  br label %178

178:                                              ; preds = %177, %158
  br label %179

179:                                              ; preds = %178, %64
  %180 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %181 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %180, i32 0, i32 1
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  store i32* %184, i32** %9, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %11, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = udiv i64 %191, 4
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp ugt i32 %194, 1
  br i1 %195, label %196, label %212

196:                                              ; preds = %179
  %197 = load i32, i32* %15, align 4
  %198 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %199 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sub nsw i32 %197, %200
  %202 = load i32, i32* %12, align 4
  %203 = sub i32 %202, 1
  %204 = udiv i32 %201, %203
  store i32 %204, i32* %17, align 4
  %205 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %206 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %17, align 4
  %210 = mul i32 %208, %209
  %211 = add i32 %207, %210
  store i32 %211, i32* %14, align 4
  br label %216

212:                                              ; preds = %179
  %213 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %8, align 8
  %214 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  store i32 %215, i32* %14, align 4
  br label %216

216:                                              ; preds = %212, %196
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %219 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* @USEC_PER_SEC, align 4
  %222 = sdiv i32 %220, %221
  %223 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %224 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %226 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.rrddim_query_handle*, %struct.rrddim_query_handle** %4, align 8
  %229 = getelementptr inbounds %struct.rrddim_query_handle, %struct.rrddim_query_handle* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp sge i32 %227, %230
  %232 = zext i1 %231 to i32
  %233 = call i64 @unlikely(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %216
  %236 = load i32, i32* @INVALID_TIME, align 4
  %237 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %238 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  br label %239

239:                                              ; preds = %235, %216
  %240 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %241 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32*, i32** %5, align 8
  store i32 %242, i32* %243, align 4
  %244 = load i32, i32* %10, align 4
  store i32 %244, i32* %3, align 4
  br label %250

245:                                              ; preds = %140, %119, %89
  %246 = load i32, i32* @INVALID_TIME, align 4
  %247 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %6, align 8
  %248 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  %249 = load i32, i32* @SN_EMPTY_SLOT, align 4
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %245, %239, %28
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pg_cache_atomic_get_pg_info(%struct.rrdeng_page_descr*, i32*, i32*) #1

declare dso_local i32 @pg_cache_put(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local %struct.rrdeng_page_descr* @pg_cache_lookup_next(%struct.rrdengine_instance*, %struct.TYPE_6__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
