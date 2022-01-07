; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_store_metric_next.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_store_metric_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.rrdeng_collect_handle }
%struct.rrdeng_collect_handle = type { i32, %struct.TYPE_12__*, i64, %struct.rrdeng_page_descr*, %struct.rrdengine_instance* }
%struct.TYPE_12__ = type { i32 }
%struct.rrdeng_page_descr = type { i32, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32* }
%struct.rrdengine_instance = type { %struct.TYPE_18__, %struct.page_cache }
%struct.TYPE_18__ = type { i32 }
%struct.page_cache = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }

@D_RRDENGINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Metric page is not aligned with chart:\00", align 1
@debug_flags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Flushing unaligned metric page.\00", align 1
@RRDENG_BLOCK_SIZE = common dso_local global i32 0, align 4
@INVALID_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdeng_store_metric_next(%struct.TYPE_19__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rrdeng_collect_handle*, align 8
  %8 = alloca %struct.rrdengine_instance*, align 8
  %9 = alloca %struct.page_cache*, align 8
  %10 = alloca %struct.rrdeng_page_descr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store %struct.rrdeng_collect_handle* %18, %struct.rrdeng_collect_handle** %7, align 8
  %19 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %7, align 8
  %20 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %19, i32 0, i32 4
  %21 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %20, align 8
  store %struct.rrdengine_instance* %21, %struct.rrdengine_instance** %8, align 8
  %22 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %8, align 8
  %23 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %22, i32 0, i32 1
  store %struct.page_cache* %23, %struct.page_cache** %9, align 8
  %24 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %7, align 8
  %25 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %24, i32 0, i32 3
  %26 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %25, align 8
  store %struct.rrdeng_page_descr* %26, %struct.rrdeng_page_descr** %10, align 8
  %27 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %28 = icmp ne %struct.rrdeng_page_descr* %27, null
  br i1 %28, label %29, label %94

29:                                               ; preds = %3
  %30 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %31 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %13, align 4
  br label %40

40:                                               ; preds = %39, %29
  %41 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %42 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %45, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %40
  %57 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %7, align 8
  %58 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* @D_RRDENGINE, align 4
  %60 = call i32 @debug(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @debug_flags, align 4
  %62 = load i32, i32* @D_RRDENGINE, align 4
  %63 = and i32 %61, %62
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %68 = call i32 @print_page_cache_descr(%struct.rrdeng_page_descr* %67)
  br label %69

69:                                               ; preds = %66, %56
  br label %70

70:                                               ; preds = %69, %40
  %71 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %7, align 8
  %72 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ule i64 %81, 4
  br label %83

83:                                               ; preds = %75, %70
  %84 = phi i1 [ false, %70 ], [ %82, %75 ]
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @D_RRDENGINE, align 4
  %90 = call i32 @debug(i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  %91 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %7, align 8
  %92 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %83
  br label %94

94:                                               ; preds = %93, %3
  %95 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %96 = icmp eq %struct.rrdeng_page_descr* null, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %94
  %98 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %99 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = add i64 %101, 4
  %103 = load i32, i32* @RRDENG_BLOCK_SIZE, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ugt i64 %102, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %97
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %106, %97, %94
  %110 = phi i1 [ true, %97 ], [ true, %94 ], [ %108, %106 ]
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %152

114:                                              ; preds = %109
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = call i32 @rrdeng_store_metric_flush_current_page(%struct.TYPE_19__* %115)
  %117 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %8, align 8
  %118 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %7, align 8
  %119 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %118, i32 0, i32 1
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = call i32* @rrdeng_create_page(%struct.rrdengine_instance* %117, i32* %121, %struct.rrdeng_page_descr** %10)
  store i32* %122, i32** %11, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @assert(i32* %123)
  %125 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %126 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %7, align 8
  %127 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %126, i32 0, i32 3
  store %struct.rrdeng_page_descr* %125, %struct.rrdeng_page_descr** %127, align 8
  %128 = load %struct.page_cache*, %struct.page_cache** %9, align 8
  %129 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = call i32 @uv_rwlock_wrlock(i32* %130)
  %132 = load %struct.page_cache*, %struct.page_cache** %9, align 8
  %133 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = sext i32 %135 to i64
  %138 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %7, align 8
  %139 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  %140 = load %struct.page_cache*, %struct.page_cache** %9, align 8
  %141 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = call i32 @uv_rwlock_wrunlock(i32* %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 0, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %114
  store i32 1, i32* %13, align 4
  br label %151

151:                                              ; preds = %150, %114
  br label %152

152:                                              ; preds = %151, %109
  %153 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %154 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %153, i32 0, i32 2
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %11, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32*, i32** %11, align 8
  %160 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %161 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = udiv i64 %163, 4
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  store i32 %158, i32* %165, align 4
  %166 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %167 = load i64, i64* %5, align 8
  %168 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %169 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = add i64 %171, 4
  %173 = trunc i64 %172 to i32
  %174 = call i32 @pg_cache_atomic_set_pg_info(%struct.rrdeng_page_descr* %166, i64 %167, i32 %173)
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %152
  %178 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %179 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  store i32 %180, i32* %184, align 4
  br label %185

185:                                              ; preds = %177, %152
  %186 = load i64, i64* @INVALID_TIME, align 8
  %187 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %188 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %186, %189
  %191 = zext i1 %190 to i32
  %192 = call i64 @unlikely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %185
  %195 = load i64, i64* %5, align 8
  %196 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %197 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %196, i32 0, i32 1
  store i64 %195, i64* %197, align 8
  %198 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %8, align 8
  %199 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  %201 = call i32 @rrd_stat_atomic_add(i32* %200, i32 1)
  %202 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %8, align 8
  %203 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %7, align 8
  %204 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %203, i32 0, i32 1
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  %206 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %207 = call i32 @pg_cache_insert(%struct.rrdengine_instance* %202, %struct.TYPE_12__* %205, %struct.rrdeng_page_descr* %206)
  br label %214

208:                                              ; preds = %185
  %209 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %7, align 8
  %210 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %209, i32 0, i32 1
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %213 = call i32 @pg_cache_add_new_metric_time(%struct.TYPE_12__* %211, %struct.rrdeng_page_descr* %212)
  br label %214

214:                                              ; preds = %208, %194
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i32 @print_page_cache_descr(%struct.rrdeng_page_descr*) #1

declare dso_local i32 @rrdeng_store_metric_flush_current_page(%struct.TYPE_19__*) #1

declare dso_local i32* @rrdeng_create_page(%struct.rrdengine_instance*, i32*, %struct.rrdeng_page_descr**) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @uv_rwlock_wrlock(i32*) #1

declare dso_local i32 @uv_rwlock_wrunlock(i32*) #1

declare dso_local i32 @pg_cache_atomic_set_pg_info(%struct.rrdeng_page_descr*, i64, i32) #1

declare dso_local i32 @rrd_stat_atomic_add(i32*, i32) #1

declare dso_local i32 @pg_cache_insert(%struct.rrdengine_instance*, %struct.TYPE_12__*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @pg_cache_add_new_metric_time(%struct.TYPE_12__*, %struct.rrdeng_page_descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
