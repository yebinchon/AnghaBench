; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_store_metric_init.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_store_metric_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.rrdeng_collect_handle }
%struct.rrdeng_collect_handle = type { %struct.pg_cache_page_index*, i64, i32*, i32*, %struct.rrdengine_instance* }
%struct.pg_cache_page_index = type { i32, %struct.pg_cache_page_index* }
%struct.rrdengine_instance = type { %struct.page_cache }
%struct.page_cache = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.pg_cache_page_index*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.rrdengine_instance* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@PJE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdeng_store_metric_init(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.rrdeng_collect_handle*, align 8
  %4 = alloca %struct.page_cache*, align 8
  %5 = alloca %struct.rrdengine_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pg_cache_page_index**, align 8
  %8 = alloca %struct.pg_cache_page_index*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %13 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %22, align 8
  store %struct.rrdengine_instance* %23, %struct.rrdengine_instance** %5, align 8
  %24 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %25 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %24, i32 0, i32 0
  store %struct.page_cache* %25, %struct.page_cache** %4, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store %struct.rrdeng_collect_handle* %30, %struct.rrdeng_collect_handle** %3, align 8
  %31 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %32 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %33 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %32, i32 0, i32 4
  store %struct.rrdengine_instance* %31, %struct.rrdengine_instance** %33, align 8
  %34 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 (...) @EVP_sha256()
  %37 = call i32 @EVP_DigestInit_ex(i32* %35, i32 %36, i32* null)
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strlen(i32 %44)
  %46 = call i32 @EVP_DigestUpdate(i32* %38, i32 %41, i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @strlen(i32 %57)
  %59 = call i32 @EVP_DigestUpdate(i32* %47, i32 %52, i32 %58)
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @EVP_DigestFinal_ex(i32* %60, i8* %16, i32* %12)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @EVP_MD_CTX_destroy(i32* %62)
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = icmp ugt i64 %65, 4
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = call i32 @memcpy(i32* %6, i8* %16, i32 4)
  %70 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %71 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %70, i32 0, i32 3
  store i32* null, i32** %71, align 8
  %72 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %73 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  %74 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %75 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.page_cache*, %struct.page_cache** %4, align 8
  %77 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = call i32 @uv_rwlock_rdlock(i32* %78)
  %80 = load %struct.page_cache*, %struct.page_cache** %4, align 8
  %81 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.pg_cache_page_index** @JudyHSGet(i32 %83, i32* %6, i32 4)
  store %struct.pg_cache_page_index** %84, %struct.pg_cache_page_index*** %7, align 8
  %85 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %7, align 8
  %86 = icmp ne %struct.pg_cache_page_index** null, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @likely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %1
  %91 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %7, align 8
  %92 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %91, align 8
  store %struct.pg_cache_page_index* %92, %struct.pg_cache_page_index** %8, align 8
  br label %93

93:                                               ; preds = %90, %1
  %94 = load %struct.page_cache*, %struct.page_cache** %4, align 8
  %95 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = call i32 @uv_rwlock_rdunlock(i32* %96)
  %98 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %7, align 8
  %99 = icmp eq %struct.pg_cache_page_index** null, %98
  br i1 %99, label %100, label %131

100:                                              ; preds = %93
  %101 = load %struct.page_cache*, %struct.page_cache** %4, align 8
  %102 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = call i32 @uv_rwlock_wrlock(i32* %103)
  %105 = load %struct.page_cache*, %struct.page_cache** %4, align 8
  %106 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i32, i32* @PJE0, align 4
  %109 = call %struct.pg_cache_page_index** @JudyHSIns(i32* %107, i32* %6, i32 4, i32 %108)
  store %struct.pg_cache_page_index** %109, %struct.pg_cache_page_index*** %7, align 8
  %110 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %7, align 8
  %111 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %110, align 8
  %112 = icmp eq %struct.pg_cache_page_index* null, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = call %struct.pg_cache_page_index* @create_page_index(i32* %6)
  store %struct.pg_cache_page_index* %115, %struct.pg_cache_page_index** %8, align 8
  %116 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %7, align 8
  store %struct.pg_cache_page_index* %115, %struct.pg_cache_page_index** %116, align 8
  %117 = load %struct.page_cache*, %struct.page_cache** %4, align 8
  %118 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %119, align 8
  %121 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %8, align 8
  %122 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %121, i32 0, i32 1
  store %struct.pg_cache_page_index* %120, %struct.pg_cache_page_index** %122, align 8
  %123 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %8, align 8
  %124 = load %struct.page_cache*, %struct.page_cache** %4, align 8
  %125 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store %struct.pg_cache_page_index* %123, %struct.pg_cache_page_index** %126, align 8
  %127 = load %struct.page_cache*, %struct.page_cache** %4, align 8
  %128 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = call i32 @uv_rwlock_wrunlock(i32* %129)
  br label %131

131:                                              ; preds = %100, %93
  %132 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %8, align 8
  %133 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %132, i32 0, i32 0
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  store i32* %133, i32** %137, align 8
  %138 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %8, align 8
  %139 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %140 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %139, i32 0, i32 0
  store %struct.pg_cache_page_index* %138, %struct.pg_cache_page_index** %140, align 8
  %141 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %141)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_create(...) #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #2

declare dso_local i32 @EVP_sha256(...) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @uv_rwlock_rdlock(i32*) #2

declare dso_local %struct.pg_cache_page_index** @JudyHSGet(i32, i32*, i32) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i32 @uv_rwlock_rdunlock(i32*) #2

declare dso_local i32 @uv_rwlock_wrlock(i32*) #2

declare dso_local %struct.pg_cache_page_index** @JudyHSIns(i32*, i32*, i32, i32) #2

declare dso_local %struct.pg_cache_page_index* @create_page_index(i32*) #2

declare dso_local i32 @uv_rwlock_wrunlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
