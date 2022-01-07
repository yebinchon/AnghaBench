; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_ProcArrayGroupClearXid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_ProcArrayGroupClearXid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32 }

@ProcGlobal = common dso_local global %struct.TYPE_11__* null, align 8
@allPgXact = common dso_local global %struct.TYPE_12__* null, align 8
@INVALID_PGPROCNO = common dso_local global i64 0, align 8
@WAIT_EVENT_PROCARRAY_GROUP_UPDATE = common dso_local global i32 0, align 4
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@allProcs = common dso_local global %struct.TYPE_13__* null, align 8
@MyProc = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32)* @ProcArrayGroupClearXid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcArrayGroupClearXid(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ProcGlobal, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** @allPgXact, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TransactionIdIsValid(i32 %19)
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = call i64 @pg_atomic_read_u32(i32* %28)
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %2, %43
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @pg_atomic_write_u32(i32* %32, i64 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @pg_atomic_compare_exchange_u32(i32* %36, i64* %6, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %44

43:                                               ; preds = %30
  br label %30

44:                                               ; preds = %42
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @INVALID_PGPROCNO, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  %49 = load i32, i32* @WAIT_EVENT_PROCARRAY_GROUP_UPDATE, align 4
  %50 = call i32 @pgstat_report_wait_start(i32 %49)
  br label %51

51:                                               ; preds = %61, %48
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PGSemaphoreLock(i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %64

61:                                               ; preds = %51
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %51

64:                                               ; preds = %60
  %65 = call i32 (...) @pgstat_report_wait_end()
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = call i64 @pg_atomic_read_u32(i32* %67)
  %69 = load i64, i64* @INVALID_PGPROCNO, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @Assert(i32 %71)
  br label %73

73:                                               ; preds = %77, %64
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %8, align 4
  %76 = icmp sgt i32 %74, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PGSemaphoreUnlock(i32 %80)
  br label %73

82:                                               ; preds = %73
  br label %142

83:                                               ; preds = %44
  %84 = load i32, i32* @ProcArrayLock, align 4
  %85 = load i32, i32* @LW_EXCLUSIVE, align 4
  %86 = call i32 @LWLockAcquire(i32 %84, i32 %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* @INVALID_PGPROCNO, align 8
  %90 = call i64 @pg_atomic_exchange_u32(i32* %88, i64 %89)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %96, %83
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @INVALID_PGPROCNO, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** @allProcs, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 %98
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %9, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** @allPgXact, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %101
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %10, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ProcArrayEndTransactionInternal(%struct.TYPE_13__* %103, %struct.TYPE_12__* %104, i32 %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 3
  %111 = call i64 @pg_atomic_read_u32(i32* %110)
  store i64 %111, i64* %6, align 8
  br label %92

112:                                              ; preds = %92
  %113 = load i32, i32* @ProcArrayLock, align 4
  %114 = call i32 @LWLockRelease(i32 %113)
  br label %115

115:                                              ; preds = %141, %112
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @INVALID_PGPROCNO, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %142

119:                                              ; preds = %115
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** @allProcs, align 8
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 %121
  store %struct.TYPE_13__* %122, %struct.TYPE_13__** %11, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 3
  %125 = call i64 @pg_atomic_read_u32(i32* %124)
  store i64 %125, i64* %7, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 3
  %128 = load i64, i64* @INVALID_PGPROCNO, align 8
  %129 = call i32 @pg_atomic_write_u32(i32* %127, i64 %128)
  %130 = call i32 (...) @pg_write_barrier()
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  store i32 0, i32* %132, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyProc, align 8
  %135 = icmp ne %struct.TYPE_13__* %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %119
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @PGSemaphoreUnlock(i32 %139)
  br label %141

141:                                              ; preds = %136, %119
  br label %115

142:                                              ; preds = %82, %115
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @pg_atomic_read_u32(i32*) #1

declare dso_local i32 @pg_atomic_write_u32(i32*, i64) #1

declare dso_local i64 @pg_atomic_compare_exchange_u32(i32*, i64*, i64) #1

declare dso_local i32 @pgstat_report_wait_start(i32) #1

declare dso_local i32 @PGSemaphoreLock(i32) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

declare dso_local i32 @PGSemaphoreUnlock(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @pg_atomic_exchange_u32(i32*, i64) #1

declare dso_local i32 @ProcArrayEndTransactionInternal(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @pg_write_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
