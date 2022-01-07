; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dnsrslvr/extr_cache.c_DnsIntCacheRemoveEntryByName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dnsrslvr/extr_cache.c_DnsIntCacheRemoveEntryByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"DnsIntCacheRemoveEntryByName %ws\0A\00", align 1
@DnsCache = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@RESOLVER_CACHE_ENTRY = common dso_local global i32 0, align 4
@CacheLink = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DnsIntCacheRemoveEntryByName(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @DPRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 (...) @DnsCacheLock()
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @DnsCache, i32 0, i32 0, i32 0), align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %5, align 8
  br label %11

11:                                               ; preds = %31, %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @DnsCache, i32 0, i32 0)
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = load i32, i32* @RESOLVER_CACHE_ENTRY, align 4
  %17 = load i32, i32* @CacheLink, align 4
  %18 = call %struct.TYPE_9__* @CONTAINING_RECORD(%struct.TYPE_10__* %15, i32 %16, i32 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @_wcsicmp(i32 %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = call i32 @DnsIntCacheRemoveEntryItem(%struct.TYPE_9__* %28)
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %14
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %5, align 8
  br label %11

35:                                               ; preds = %27, %11
  %36 = call i32 (...) @DnsCacheUnlock()
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @DnsCacheLock(...) #1

declare dso_local %struct.TYPE_9__* @CONTAINING_RECORD(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @_wcsicmp(i32, i32) #1

declare dso_local i32 @DnsIntCacheRemoveEntryItem(%struct.TYPE_9__*) #1

declare dso_local i32 @DnsCacheUnlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
