; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_lazy_space_alloc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_lazy_space_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@autovacuum_work_mem = common dso_local global i32 0, align 4
@maintenance_work_mem = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@MaxAllocSize = common dso_local global i32 0, align 4
@LAZY_ALLOC_TUPLES = common dso_local global i64 0, align 8
@MaxHeapTuplesPerPage = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64)* @lazy_space_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lazy_space_alloc(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i64 (...) @IsAutoVacuumWorkerProcess()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @autovacuum_work_mem, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @autovacuum_work_mem, align 4
  br label %16

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @maintenance_work_mem, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %24, 1024
  %26 = udiv i64 %25, 4
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @INT_MAX, align 4
  %29 = call i64 @Min(i64 %27, i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* @MaxAllocSize, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i64 @Min(i64 %30, i32 %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @LAZY_ALLOC_TUPLES, align 8
  %38 = sdiv i64 %36, %37
  %39 = load i64, i64* %4, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %22
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @LAZY_ALLOC_TUPLES, align 8
  %44 = mul nsw i64 %42, %43
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %41, %22
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @MaxHeapTuplesPerPage, align 8
  %48 = call i64 @Max(i64 %46, i64 %47)
  store i64 %48, i64* %5, align 8
  br label %51

49:                                               ; preds = %16
  %50 = load i64, i64* @MaxHeapTuplesPerPage, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %49, %45
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* %5, align 8
  %59 = mul i64 %58, 4
  %60 = call i64 @palloc(i64 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  ret void
}

declare dso_local i64 @IsAutoVacuumWorkerProcess(...) #1

declare dso_local i64 @Min(i64, i32) #1

declare dso_local i64 @Max(i64, i64) #1

declare dso_local i64 @palloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
