; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/pgoutput/extr_pgoutput.c_init_rel_sync_cache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/pgoutput/extr_pgoutput.c_init_rel_sync_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@RelationSyncCache = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"logical replication output relation cache\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@rel_sync_cache_relation_cb = common dso_local global i32 0, align 4
@PUBLICATIONRELMAP = common dso_local global i32 0, align 4
@rel_sync_cache_publication_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_rel_sync_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rel_sync_cache(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32*, i32** @RelationSyncCache, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %33

8:                                                ; preds = %1
  %9 = call i32 @MemSet(%struct.TYPE_4__* %3, i32 0, i32 12)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 4, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 4, i32* %11, align 4
  %12 = load i32, i32* %2, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @MemoryContextSwitchTo(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @HASH_ELEM, align 4
  %17 = load i32, i32* @HASH_CONTEXT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @HASH_BLOBS, align 4
  %20 = or i32 %18, %19
  %21 = call i32* @hash_create(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 128, %struct.TYPE_4__* %3, i32 %20)
  store i32* %21, i32** @RelationSyncCache, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @MemoryContextSwitchTo(i32 %22)
  %24 = load i32*, i32** @RelationSyncCache, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* @rel_sync_cache_relation_cb, align 4
  %29 = call i32 @CacheRegisterRelcacheCallback(i32 %28, i32 0)
  %30 = load i32, i32* @PUBLICATIONRELMAP, align 4
  %31 = load i32, i32* @rel_sync_cache_publication_cb, align 4
  %32 = call i32 @CacheRegisterSyscacheCallback(i32 %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CacheRegisterRelcacheCallback(i32, i32) #1

declare dso_local i32 @CacheRegisterSyscacheCallback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
