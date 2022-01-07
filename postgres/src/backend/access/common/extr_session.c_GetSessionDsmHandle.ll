; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_session.c_GetSessionDsmHandle.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_session.c_GetSessionDsmHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@CurrentSession = common dso_local global %struct.TYPE_2__* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@SESSION_DSA_SIZE = common dso_local global i64 0, align 8
@DSM_CREATE_NULL_IF_MAXSEGMENTS = common dso_local global i32 0, align 4
@DSM_HANDLE_INVALID = common dso_local global i32 0, align 4
@SESSION_MAGIC = common dso_local global i32 0, align 4
@LWTRANCHE_SESSION_DSA = common dso_local global i32 0, align 4
@SESSION_KEY_DSA = common dso_local global i32 0, align 4
@SESSION_KEY_RECORD_TYPMOD_REGISTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetSessionDsmHandle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurrentSession, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurrentSession, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @dsm_segment_handle(i32* %18)
  store i32 %19, i32* %1, align 4
  br label %85

20:                                               ; preds = %0
  %21 = load i32, i32* @TopMemoryContext, align 4
  %22 = call i32 @MemoryContextSwitchTo(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = call i32 @shm_toc_initialize_estimator(i32* %2)
  %24 = call i32 @shm_toc_estimate_keys(i32* %2, i32 1)
  %25 = load i64, i64* @SESSION_DSA_SIZE, align 8
  %26 = call i32 @shm_toc_estimate_chunk(i32* %2, i64 %25)
  %27 = call i64 (...) @SharedRecordTypmodRegistryEstimate()
  store i64 %27, i64* %5, align 8
  %28 = call i32 @shm_toc_estimate_keys(i32* %2, i32 1)
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @shm_toc_estimate_chunk(i32* %2, i64 %29)
  %31 = call i64 @shm_toc_estimate(i32* %2)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @DSM_CREATE_NULL_IF_MAXSEGMENTS, align 4
  %34 = call i32* @dsm_create(i64 %32, i32 %33)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %20
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @MemoryContextSwitchTo(i32 %38)
  %40 = load i32, i32* @DSM_HANDLE_INVALID, align 4
  store i32 %40, i32* %1, align 4
  br label %85

41:                                               ; preds = %20
  %42 = load i32, i32* @SESSION_MAGIC, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @dsm_segment_address(i32* %43)
  %45 = load i64, i64* %6, align 8
  %46 = call i32* @shm_toc_create(i32 %42, i32 %44, i64 %45)
  store i32* %46, i32** %3, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = load i64, i64* @SESSION_DSA_SIZE, align 8
  %49 = call i8* @shm_toc_allocate(i32* %47, i64 %48)
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* @SESSION_DSA_SIZE, align 8
  %52 = load i32, i32* @LWTRANCHE_SESSION_DSA, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = call i32* @dsa_create_in_place(i8* %50, i64 %51, i32 %52, i32* %53)
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @SESSION_KEY_DSA, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @shm_toc_insert(i32* %55, i32 %56, i8* %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i8* @shm_toc_allocate(i32* %59, i64 %60)
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @SharedRecordTypmodRegistryInit(i32* %63, i32* %64, i32* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @SESSION_KEY_RECORD_TYPMOD_REGISTRY, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @shm_toc_insert(i32* %67, i32 %68, i8* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @dsm_pin_mapping(i32* %71)
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @dsa_pin_mapping(i32* %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurrentSession, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurrentSession, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32* %78, i32** %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @MemoryContextSwitchTo(i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @dsm_segment_handle(i32* %83)
  store i32 %84, i32* %1, align 4
  br label %85

85:                                               ; preds = %41, %37, %15
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

declare dso_local i32 @dsm_segment_handle(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @shm_toc_initialize_estimator(i32*) #1

declare dso_local i32 @shm_toc_estimate_keys(i32*, i32) #1

declare dso_local i32 @shm_toc_estimate_chunk(i32*, i64) #1

declare dso_local i64 @SharedRecordTypmodRegistryEstimate(...) #1

declare dso_local i64 @shm_toc_estimate(i32*) #1

declare dso_local i32* @dsm_create(i64, i32) #1

declare dso_local i32* @shm_toc_create(i32, i32, i64) #1

declare dso_local i32 @dsm_segment_address(i32*) #1

declare dso_local i8* @shm_toc_allocate(i32*, i64) #1

declare dso_local i32* @dsa_create_in_place(i8*, i64, i32, i32*) #1

declare dso_local i32 @shm_toc_insert(i32*, i32, i8*) #1

declare dso_local i32 @SharedRecordTypmodRegistryInit(i32*, i32*, i32*) #1

declare dso_local i32 @dsm_pin_mapping(i32*) #1

declare dso_local i32 @dsa_pin_mapping(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
