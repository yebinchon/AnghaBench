; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_collect_oids.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_collect_oids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Temporary table of OIDs\00", align 1
@PGSTAT_TAB_HASH_SIZE = common dso_local global i32 0, align 4
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @pgstat_collect_oids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pgstat_collect_oids(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = call i32 @memset(%struct.TYPE_4__* %6, i32 0, i32 12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 4, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 4, i32* %15, align 4
  %16 = load i32, i32* @CurrentMemoryContext, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @PGSTAT_TAB_HASH_SIZE, align 4
  %19 = load i32, i32* @HASH_ELEM, align 4
  %20 = load i32, i32* @HASH_BLOBS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @HASH_CONTEXT, align 4
  %23 = or i32 %21, %22
  %24 = call i32* @hash_create(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18, %struct.TYPE_4__* %6, i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @AccessShareLock, align 4
  %27 = call i32 @table_open(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = call i32 (...) @GetLatestSnapshot()
  %29 = call i32 @RegisterSnapshot(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @table_beginscan(i32 %30, i32 %31, i32 0, i32* null)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %38, %2
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ForwardScanDirection, align 4
  %36 = call i32* @heap_getnext(i32 %34, i32 %35)
  store i32* %36, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @RelationGetDescr(i32 %41)
  %43 = call i32 @heap_getattr(i32* %39, i32 %40, i32 %42, i32* %12)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %50 = load i32*, i32** %5, align 8
  %51 = bitcast i32* %11 to i8*
  %52 = load i32, i32* @HASH_ENTER, align 4
  %53 = call i32 @hash_search(i32* %50, i8* %51, i32 %52, i32* null)
  br label %33

54:                                               ; preds = %33
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @table_endscan(i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @UnregisterSnapshot(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @AccessShareLock, align 4
  %61 = call i32 @table_close(i32 %59, i32 %60)
  %62 = load i32*, i32** %5, align 8
  ret i32* %62
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @RegisterSnapshot(i32) #1

declare dso_local i32 @GetLatestSnapshot(...) #1

declare dso_local i32 @table_beginscan(i32, i32, i32, i32*) #1

declare dso_local i32* @heap_getnext(i32, i32) #1

declare dso_local i32 @heap_getattr(i32*, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @UnregisterSnapshot(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
