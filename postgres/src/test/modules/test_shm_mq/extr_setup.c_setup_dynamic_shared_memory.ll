; ModuleID = '/home/carl/AnghaBench/postgres/src/test/modules/test_shm_mq/extr_setup.c_setup_dynamic_shared_memory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/modules/test_shm_mq/extr_setup.c_setup_dynamic_shared_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i32 }

@shm_mq_minimum_size = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"queue size must be at least %zu bytes\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"queue size overflows size_t\00", align 1
@PG_TEST_SHM_MQ_MAGIC = common dso_local global i32 0, align 4
@MyProc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**)* @setup_dynamic_shared_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_dynamic_shared_memory(i64 %0, i32 %1, i32** %2, %struct.TYPE_12__** %3, %struct.TYPE_12__** %4, %struct.TYPE_12__** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_12__**, align 8
  %11 = alloca %struct.TYPE_12__**, align 8
  %12 = alloca %struct.TYPE_12__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store %struct.TYPE_12__** %3, %struct.TYPE_12__*** %10, align 8
  store %struct.TYPE_12__** %4, %struct.TYPE_12__*** %11, align 8
  store %struct.TYPE_12__** %5, %struct.TYPE_12__*** %12, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @shm_mq_minimum_size, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22, %6
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = load i64, i64* @shm_mq_minimum_size, align 8
  %31 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = call i32 @ereport(i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @ereport(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %33
  %44 = call i32 @shm_toc_initialize_estimator(i32* %13)
  %45 = call i32 @shm_toc_estimate_chunk(i32* %13, i64 32)
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %53, %43
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @shm_toc_estimate_chunk(i32* %13, i64 %51)
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %46

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 2, %57
  %59 = call i32 @shm_toc_estimate_keys(i32* %13, i32 %58)
  %60 = call i64 @shm_toc_estimate(i32* %13)
  store i64 %60, i64* %15, align 8
  %61 = call i64 @shm_toc_estimate(i32* %13)
  %62 = call i32* @dsm_create(i64 %61, i32 0)
  store i32* %62, i32** %16, align 8
  %63 = load i32, i32* @PG_TEST_SHM_MQ_MAGIC, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @dsm_segment_address(i32* %64)
  %66 = load i64, i64* %15, align 8
  %67 = call i32* @shm_toc_create(i32 %63, i32 %65, i64 %66)
  store i32* %67, i32** %17, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = call %struct.TYPE_12__* @shm_toc_allocate(i32* %68, i64 32)
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %18, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = call i32 @SpinLockInit(i32* %71)
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %82 = call i32 @shm_toc_insert(i32* %80, i32 0, %struct.TYPE_12__* %81)
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %117, %56
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %120

87:                                               ; preds = %83
  %88 = load i32*, i32** %17, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call %struct.TYPE_12__* @shm_toc_allocate(i32* %88, i64 %89)
  %91 = load i64, i64* %7, align 8
  %92 = call %struct.TYPE_12__* @shm_mq_create(%struct.TYPE_12__* %90, i64 %91)
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %19, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %97 = call i32 @shm_toc_insert(i32* %93, i32 %95, %struct.TYPE_12__* %96)
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %87
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %102 = load i32, i32* @MyProc, align 4
  %103 = call i32 @shm_mq_set_sender(%struct.TYPE_12__* %101, i32 %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %105 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %105, align 8
  br label %106

106:                                              ; preds = %100, %87
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %112 = load i32, i32* @MyProc, align 4
  %113 = call i32 @shm_mq_set_receiver(%struct.TYPE_12__* %111, i32 %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %115 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %115, align 8
  br label %116

116:                                              ; preds = %110, %106
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %83

120:                                              ; preds = %83
  %121 = load i32*, i32** %16, align 8
  %122 = load i32**, i32*** %9, align 8
  store i32* %121, i32** %122, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %124 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %124, align 8
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @shm_toc_initialize_estimator(i32*) #1

declare dso_local i32 @shm_toc_estimate_chunk(i32*, i64) #1

declare dso_local i32 @shm_toc_estimate_keys(i32*, i32) #1

declare dso_local i64 @shm_toc_estimate(i32*) #1

declare dso_local i32* @dsm_create(i64, i32) #1

declare dso_local i32* @shm_toc_create(i32, i32, i64) #1

declare dso_local i32 @dsm_segment_address(i32*) #1

declare dso_local %struct.TYPE_12__* @shm_toc_allocate(i32*, i64) #1

declare dso_local i32 @SpinLockInit(i32*) #1

declare dso_local i32 @shm_toc_insert(i32*, i32, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @shm_mq_create(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @shm_mq_set_sender(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @shm_mq_set_receiver(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
