; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstattuple.c_pgstat_index.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstattuple.c_pgstat_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@BAS_BULKREAD = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32 (%struct.TYPE_5__*, i32, i64, i32)*, i32)* @pgstat_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgstat_index(i32 %0, i64 %1, i32 (%struct.TYPE_5__*, i32, i64, i32)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32 (%struct.TYPE_5__*, i32, i64, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 (%struct.TYPE_5__*, i32, i64, i32)* %2, i32 (%struct.TYPE_5__*, i32, i64, i32)** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = bitcast %struct.TYPE_5__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i32, i32* @BAS_BULKREAD, align 4
  %15 = call i32 @GetAccessStrategy(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %10, align 8
  br label %17

17:                                               ; preds = %50, %4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ExclusiveLock, align 4
  %20 = call i32 @LockRelationForExtension(i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @RelationGetNumberOfBlocks(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ExclusiveLock, align 4
  %25 = call i32 @UnlockRelationForExtension(i32 %23, i32 %24)
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @BLCKSZ, align 4
  %33 = mul nsw i32 %31, %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  br label %51

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %42 = load i32 (%struct.TYPE_5__*, i32, i64, i32)*, i32 (%struct.TYPE_5__*, i32, i64, i32)** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 %42(%struct.TYPE_5__* %12, i32 %43, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %36

50:                                               ; preds = %36
  br label %17

51:                                               ; preds = %29
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @AccessShareLock, align 4
  %54 = call i32 @relation_close(i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @build_pgstattuple_type(%struct.TYPE_5__* %12, i32 %55)
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetAccessStrategy(i32) #2

declare dso_local i32 @LockRelationForExtension(i32, i32) #2

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #2

declare dso_local i32 @UnlockRelationForExtension(i32, i32) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i32 @relation_close(i32, i32) #2

declare dso_local i32 @build_pgstattuple_type(%struct.TYPE_5__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
