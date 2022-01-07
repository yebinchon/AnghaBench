; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_InvalidateSystemCaches.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_InvalidateSystemCaches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYSCACHECALLBACK = type { i32, i32, i32 (i32, i32, i32)* }
%struct.RELCACHECALLBACK = type { i32, i32 (i32, i32)* }

@syscache_callback_count = common dso_local global i32 0, align 4
@syscache_callback_list = common dso_local global %struct.SYSCACHECALLBACK* null, align 8
@relcache_callback_count = common dso_local global i32 0, align 4
@relcache_callback_list = common dso_local global %struct.RELCACHECALLBACK* null, align 8
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InvalidateSystemCaches() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.SYSCACHECALLBACK*, align 8
  %3 = alloca %struct.RELCACHECALLBACK*, align 8
  %4 = call i32 (...) @InvalidateCatalogSnapshot()
  %5 = call i32 (...) @ResetCatalogCaches()
  %6 = call i32 (...) @RelationCacheInvalidate()
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %26, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @syscache_callback_count, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.SYSCACHECALLBACK*, %struct.SYSCACHECALLBACK** @syscache_callback_list, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.SYSCACHECALLBACK, %struct.SYSCACHECALLBACK* %12, i64 %14
  store %struct.SYSCACHECALLBACK* %15, %struct.SYSCACHECALLBACK** %2, align 8
  %16 = load %struct.SYSCACHECALLBACK*, %struct.SYSCACHECALLBACK** %2, align 8
  %17 = getelementptr inbounds %struct.SYSCACHECALLBACK, %struct.SYSCACHECALLBACK* %16, i32 0, i32 2
  %18 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %17, align 8
  %19 = load %struct.SYSCACHECALLBACK*, %struct.SYSCACHECALLBACK** %2, align 8
  %20 = getelementptr inbounds %struct.SYSCACHECALLBACK, %struct.SYSCACHECALLBACK* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.SYSCACHECALLBACK*, %struct.SYSCACHECALLBACK** %2, align 8
  %23 = getelementptr inbounds %struct.SYSCACHECALLBACK, %struct.SYSCACHECALLBACK* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %18(i32 %21, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %7

29:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @relcache_callback_count, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load %struct.RELCACHECALLBACK*, %struct.RELCACHECALLBACK** @relcache_callback_list, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.RELCACHECALLBACK, %struct.RELCACHECALLBACK* %35, i64 %37
  store %struct.RELCACHECALLBACK* %38, %struct.RELCACHECALLBACK** %3, align 8
  %39 = load %struct.RELCACHECALLBACK*, %struct.RELCACHECALLBACK** %3, align 8
  %40 = getelementptr inbounds %struct.RELCACHECALLBACK, %struct.RELCACHECALLBACK* %39, i32 0, i32 1
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load %struct.RELCACHECALLBACK*, %struct.RELCACHECALLBACK** %3, align 8
  %43 = getelementptr inbounds %struct.RELCACHECALLBACK, %struct.RELCACHECALLBACK* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @InvalidOid, align 4
  %46 = call i32 %41(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %30

50:                                               ; preds = %30
  ret void
}

declare dso_local i32 @InvalidateCatalogSnapshot(...) #1

declare dso_local i32 @ResetCatalogCaches(...) #1

declare dso_local i32 @RelationCacheInvalidate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
