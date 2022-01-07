; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_create_page.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_create_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { i32 }
%struct.rrdeng_page_descr = type { %struct.page_cache_descr*, i32* }
%struct.page_cache_descr = type { i32, i32, i8* }

@RRDENG_BLOCK_SIZE = common dso_local global i32 0, align 4
@RRD_PAGE_DIRTY = common dso_local global i32 0, align 4
@RRD_PAGE_POPULATED = common dso_local global i32 0, align 4
@D_RRDENGINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Created new page:\00", align 1
@debug_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rrdeng_create_page(%struct.rrdengine_instance* %0, i32* %1, %struct.rrdeng_page_descr** %2) #0 {
  %4 = alloca %struct.rrdengine_instance*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rrdeng_page_descr**, align 8
  %7 = alloca %struct.rrdeng_page_descr*, align 8
  %8 = alloca %struct.page_cache_descr*, align 8
  %9 = alloca i8*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.rrdeng_page_descr** %2, %struct.rrdeng_page_descr*** %6, align 8
  %10 = call %struct.rrdeng_page_descr* (...) @pg_cache_create_descr()
  store %struct.rrdeng_page_descr* %10, %struct.rrdeng_page_descr** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %7, align 8
  %13 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load i32, i32* @RRDENG_BLOCK_SIZE, align 4
  %15 = call i8* @mallocz(i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %17 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %7, align 8
  %18 = call i32 @rrdeng_page_descr_mutex_lock(%struct.rrdengine_instance* %16, %struct.rrdeng_page_descr* %17)
  %19 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %7, align 8
  %20 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %19, i32 0, i32 0
  %21 = load %struct.page_cache_descr*, %struct.page_cache_descr** %20, align 8
  store %struct.page_cache_descr* %21, %struct.page_cache_descr** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.page_cache_descr*, %struct.page_cache_descr** %8, align 8
  %24 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @RRD_PAGE_DIRTY, align 4
  %26 = load i32, i32* @RRD_PAGE_POPULATED, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.page_cache_descr*, %struct.page_cache_descr** %8, align 8
  %29 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.page_cache_descr*, %struct.page_cache_descr** %8, align 8
  %31 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @D_RRDENGINE, align 4
  %33 = call i32 @debug(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @debug_flags, align 4
  %35 = load i32, i32* @D_RRDENGINE, align 4
  %36 = and i32 %34, %35
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %7, align 8
  %41 = call i32 @print_page_cache_descr(%struct.rrdeng_page_descr* %40)
  br label %42

42:                                               ; preds = %39, %3
  %43 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %44 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %7, align 8
  %45 = call i32 @rrdeng_page_descr_mutex_unlock(%struct.rrdengine_instance* %43, %struct.rrdeng_page_descr* %44)
  %46 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %7, align 8
  %47 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %6, align 8
  store %struct.rrdeng_page_descr* %46, %struct.rrdeng_page_descr** %47, align 8
  %48 = load i8*, i8** %9, align 8
  ret i8* %48
}

declare dso_local %struct.rrdeng_page_descr* @pg_cache_create_descr(...) #1

declare dso_local i8* @mallocz(i32) #1

declare dso_local i32 @rrdeng_page_descr_mutex_lock(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @print_page_cache_descr(%struct.rrdeng_page_descr*) #1

declare dso_local i32 @rrdeng_page_descr_mutex_unlock(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
