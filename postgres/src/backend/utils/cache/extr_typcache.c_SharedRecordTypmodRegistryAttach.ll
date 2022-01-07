; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_SharedRecordTypmodRegistryAttach.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_SharedRecordTypmodRegistryAttach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, %struct.TYPE_5__*, i32*, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@CurrentSession = common dso_local global %struct.TYPE_6__* null, align 8
@NextRecordTypmod = common dso_local global i64 0, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@srtr_record_table_params = common dso_local global i32 0, align 4
@srtr_typmod_table_params = common dso_local global i32 0, align 4
@shared_record_typmod_registry_detach = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SharedRecordTypmodRegistryAttach(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = call i32 (...) @IsParallelWorker()
  %7 = call i32 @Assert(i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp eq %struct.TYPE_5__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @Assert(i32 %40)
  %42 = load i64, i64* @NextRecordTypmod, align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load i32, i32* @TopMemoryContext, align 4
  %47 = call i32 @MemoryContextSwitchTo(i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = call i32* @dshash_attach(i32* %50, i32* @srtr_record_table_params, i32 %53, i32* %56)
  store i32* %57, i32** %4, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32* @dshash_attach(i32* %60, i32* @srtr_typmod_table_params, i32 %63, i32* null)
  store i32* %64, i32** %5, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @MemoryContextSwitchTo(i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @shared_record_typmod_registry_detach, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = call i32 @PointerGetDatum(%struct.TYPE_5__* %71)
  %73 = call i32 @on_dsm_detach(i32* %69, i32 %70, i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %76, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CurrentSession, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsParallelWorker(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @dshash_attach(i32*, i32*, i32, i32*) #1

declare dso_local i32 @on_dsm_detach(i32*, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
