; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_spccache.c_InitializeTableSpaceCache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_spccache.c_InitializeTableSpaceCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"TableSpace cache\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@TableSpaceCacheHash = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4
@TABLESPACEOID = common dso_local global i32 0, align 4
@InvalidateTableSpaceCacheCallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitializeTableSpaceCache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitializeTableSpaceCache() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = call i32 @MemSet(%struct.TYPE_4__* %1, i32 0, i32 8)
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 4, i32* %3, align 4
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 4, i32* %4, align 4
  %5 = load i32, i32* @HASH_ELEM, align 4
  %6 = load i32, i32* @HASH_BLOBS, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @hash_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16, %struct.TYPE_4__* %1, i32 %7)
  store i32 %8, i32* @TableSpaceCacheHash, align 4
  %9 = load i32, i32* @CacheMemoryContext, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 (...) @CreateCacheMemoryContext()
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* @TABLESPACEOID, align 4
  %15 = load i32, i32* @InvalidateTableSpaceCacheCallback, align 4
  %16 = call i32 @CacheRegisterSyscacheCallback(i32 %14, i32 %15, i32 0)
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @hash_create(i8*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @CreateCacheMemoryContext(...) #1

declare dso_local i32 @CacheRegisterSyscacheCallback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
