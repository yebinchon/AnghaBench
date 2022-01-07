; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_restore_extent_metadata.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_restore_extent_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.page_cache }
%struct.page_cache = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.pg_cache_page_index*, i32 }
%struct.pg_cache_page_index = type { i32, %struct.pg_cache_page_index* }
%struct.rrdengine_journalfile = type { i32 }
%struct.rrdeng_page_descr = type { %struct.extent_info*, i32*, i32, i32, i32 }
%struct.extent_info = type { i32, %struct.rrdeng_page_descr**, i32*, i32, i32, i32 }
%struct.rrdeng_jf_store_data = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Corrupted transaction payload.\00", align 1
@PAGE_METRICS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unknown page type encountered.\00", align 1
@PJE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rrdengine_instance*, %struct.rrdengine_journalfile*, i8*, i32)* @restore_extent_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_extent_metadata(%struct.rrdengine_instance* %0, %struct.rrdengine_journalfile* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.rrdengine_instance*, align 8
  %6 = alloca %struct.rrdengine_journalfile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page_cache*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rrdeng_page_descr*, align 8
  %16 = alloca %struct.extent_info*, align 8
  %17 = alloca %struct.rrdeng_jf_store_data*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.pg_cache_page_index**, align 8
  %20 = alloca %struct.pg_cache_page_index*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %5, align 8
  store %struct.rrdengine_journalfile* %1, %struct.rrdengine_journalfile** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %22 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %21, i32 0, i32 0
  store %struct.page_cache* %22, %struct.page_cache** %9, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.rrdeng_jf_store_data*
  store %struct.rrdeng_jf_store_data* %24, %struct.rrdeng_jf_store_data** %17, align 8
  %25 = load %struct.rrdeng_jf_store_data*, %struct.rrdeng_jf_store_data** %17, align 8
  %26 = getelementptr inbounds %struct.rrdeng_jf_store_data, %struct.rrdeng_jf_store_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 32, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = zext i32 %32 to i64
  %34 = add i64 24, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %217

41:                                               ; preds = %4
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = add i64 40, %44
  %46 = trunc i64 %45 to i32
  %47 = call %struct.extent_info* @mallocz(i32 %46)
  store %struct.extent_info* %47, %struct.extent_info** %16, align 8
  %48 = load %struct.rrdeng_jf_store_data*, %struct.rrdeng_jf_store_data** %17, align 8
  %49 = getelementptr inbounds %struct.rrdeng_jf_store_data, %struct.rrdeng_jf_store_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.extent_info*, %struct.extent_info** %16, align 8
  %52 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.rrdeng_jf_store_data*, %struct.rrdeng_jf_store_data** %17, align 8
  %54 = getelementptr inbounds %struct.rrdeng_jf_store_data, %struct.rrdeng_jf_store_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.extent_info*, %struct.extent_info** %16, align 8
  %57 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %6, align 8
  %59 = getelementptr inbounds %struct.rrdengine_journalfile, %struct.rrdengine_journalfile* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.extent_info*, %struct.extent_info** %16, align 8
  %62 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.extent_info*, %struct.extent_info** %16, align 8
  %64 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %201, %41
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %204

69:                                               ; preds = %65
  %70 = load i64, i64* @PAGE_METRICS, align 8
  %71 = load %struct.rrdeng_jf_store_data*, %struct.rrdeng_jf_store_data** %17, align 8
  %72 = getelementptr inbounds %struct.rrdeng_jf_store_data, %struct.rrdeng_jf_store_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %70, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %201

82:                                               ; preds = %69
  %83 = load %struct.rrdeng_jf_store_data*, %struct.rrdeng_jf_store_data** %17, align 8
  %84 = getelementptr inbounds %struct.rrdeng_jf_store_data, %struct.rrdeng_jf_store_data* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** %18, align 8
  %92 = load %struct.page_cache*, %struct.page_cache** %9, align 8
  %93 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = call i32 @uv_rwlock_rdlock(i32* %94)
  %96 = load %struct.page_cache*, %struct.page_cache** %9, align 8
  %97 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %18, align 8
  %101 = call %struct.pg_cache_page_index** @JudyHSGet(i32 %99, i32* %100, i32 4)
  store %struct.pg_cache_page_index** %101, %struct.pg_cache_page_index*** %19, align 8
  %102 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %19, align 8
  %103 = icmp ne %struct.pg_cache_page_index** null, %102
  %104 = zext i1 %103 to i32
  %105 = call i64 @likely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %82
  %108 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %19, align 8
  %109 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %108, align 8
  store %struct.pg_cache_page_index* %109, %struct.pg_cache_page_index** %20, align 8
  br label %110

110:                                              ; preds = %107, %82
  %111 = load %struct.page_cache*, %struct.page_cache** %9, align 8
  %112 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = call i32 @uv_rwlock_rdunlock(i32* %113)
  %115 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %19, align 8
  %116 = icmp eq %struct.pg_cache_page_index** null, %115
  br i1 %116, label %117, label %150

117:                                              ; preds = %110
  %118 = load %struct.page_cache*, %struct.page_cache** %9, align 8
  %119 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = call i32 @uv_rwlock_wrlock(i32* %120)
  %122 = load %struct.page_cache*, %struct.page_cache** %9, align 8
  %123 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32*, i32** %18, align 8
  %126 = load i32, i32* @PJE0, align 4
  %127 = call %struct.pg_cache_page_index** @JudyHSIns(i32* %124, i32* %125, i32 4, i32 %126)
  store %struct.pg_cache_page_index** %127, %struct.pg_cache_page_index*** %19, align 8
  %128 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %19, align 8
  %129 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %128, align 8
  %130 = icmp eq %struct.pg_cache_page_index* null, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i32*, i32** %18, align 8
  %134 = call %struct.pg_cache_page_index* @create_page_index(i32* %133)
  store %struct.pg_cache_page_index* %134, %struct.pg_cache_page_index** %20, align 8
  %135 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %19, align 8
  store %struct.pg_cache_page_index* %134, %struct.pg_cache_page_index** %135, align 8
  %136 = load %struct.page_cache*, %struct.page_cache** %9, align 8
  %137 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %138, align 8
  %140 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %20, align 8
  %141 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %140, i32 0, i32 1
  store %struct.pg_cache_page_index* %139, %struct.pg_cache_page_index** %141, align 8
  %142 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %20, align 8
  %143 = load %struct.page_cache*, %struct.page_cache** %9, align 8
  %144 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  store %struct.pg_cache_page_index* %142, %struct.pg_cache_page_index** %145, align 8
  %146 = load %struct.page_cache*, %struct.page_cache** %9, align 8
  %147 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = call i32 @uv_rwlock_wrunlock(i32* %148)
  br label %150

150:                                              ; preds = %117, %110
  %151 = call %struct.rrdeng_page_descr* (...) @pg_cache_create_descr()
  store %struct.rrdeng_page_descr* %151, %struct.rrdeng_page_descr** %15, align 8
  %152 = load %struct.rrdeng_jf_store_data*, %struct.rrdeng_jf_store_data** %17, align 8
  %153 = getelementptr inbounds %struct.rrdeng_jf_store_data, %struct.rrdeng_jf_store_data* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %15, align 8
  %161 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  %162 = load %struct.rrdeng_jf_store_data*, %struct.rrdeng_jf_store_data** %17, align 8
  %163 = getelementptr inbounds %struct.rrdeng_jf_store_data, %struct.rrdeng_jf_store_data* %162, i32 0, i32 1
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %15, align 8
  %171 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load %struct.rrdeng_jf_store_data*, %struct.rrdeng_jf_store_data** %17, align 8
  %173 = getelementptr inbounds %struct.rrdeng_jf_store_data, %struct.rrdeng_jf_store_data* %172, i32 0, i32 1
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %15, align 8
  %181 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %20, align 8
  %183 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %182, i32 0, i32 0
  %184 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %15, align 8
  %185 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %184, i32 0, i32 1
  store i32* %183, i32** %185, align 8
  %186 = load %struct.extent_info*, %struct.extent_info** %16, align 8
  %187 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %15, align 8
  %188 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %187, i32 0, i32 0
  store %struct.extent_info* %186, %struct.extent_info** %188, align 8
  %189 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %15, align 8
  %190 = load %struct.extent_info*, %struct.extent_info** %16, align 8
  %191 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %190, i32 0, i32 1
  %192 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %14, align 4
  %195 = zext i32 %193 to i64
  %196 = getelementptr inbounds %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %192, i64 %195
  store %struct.rrdeng_page_descr* %189, %struct.rrdeng_page_descr** %196, align 8
  %197 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %198 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %20, align 8
  %199 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %15, align 8
  %200 = call i32 @pg_cache_insert(%struct.rrdengine_instance* %197, %struct.pg_cache_page_index* %198, %struct.rrdeng_page_descr* %199)
  br label %201

201:                                              ; preds = %150, %80
  %202 = load i32, i32* %10, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %65

204:                                              ; preds = %65
  %205 = load i32, i32* %14, align 4
  %206 = load %struct.extent_info*, %struct.extent_info** %16, align 8
  %207 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* %14, align 4
  %209 = call i64 @likely(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load %struct.extent_info*, %struct.extent_info** %16, align 8
  %213 = call i32 @df_extent_insert(%struct.extent_info* %212)
  br label %217

214:                                              ; preds = %204
  %215 = load %struct.extent_info*, %struct.extent_info** %16, align 8
  %216 = call i32 @freez(%struct.extent_info* %215)
  br label %217

217:                                              ; preds = %39, %214, %211
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.extent_info* @mallocz(i32) #1

declare dso_local i32 @uv_rwlock_rdlock(i32*) #1

declare dso_local %struct.pg_cache_page_index** @JudyHSGet(i32, i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @uv_rwlock_rdunlock(i32*) #1

declare dso_local i32 @uv_rwlock_wrlock(i32*) #1

declare dso_local %struct.pg_cache_page_index** @JudyHSIns(i32*, i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.pg_cache_page_index* @create_page_index(i32*) #1

declare dso_local i32 @uv_rwlock_wrunlock(i32*) #1

declare dso_local %struct.rrdeng_page_descr* @pg_cache_create_descr(...) #1

declare dso_local i32 @pg_cache_insert(%struct.rrdengine_instance*, %struct.pg_cache_page_index*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @df_extent_insert(%struct.extent_info*) #1

declare dso_local i32 @freez(%struct.extent_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
