; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shm_mq.c_shm_mq_receive_bytes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shm_mq.c_shm_mq_receive_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32, i64, i32*, i32 }

@SHM_MQ_SUCCESS = common dso_local global i32 0, align 4
@SHM_MQ_DETACHED = common dso_local global i32 0, align 4
@SHM_MQ_WOULD_BLOCK = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_MQ_RECEIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32, i64*, i8**)* @shm_mq_receive_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shm_mq_receive_bytes(%struct.TYPE_5__* %0, i64 %1, i32 %2, i64* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %12, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  br label %24

24:                                               ; preds = %108, %87, %5
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = call i64 @pg_atomic_read_u64(i32* %26)
  store i64 %27, i64* %15, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  %30 = call i64 @pg_atomic_read_u64(i32* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* %17, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp sle i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* %13, align 8
  %45 = srem i64 %43, %44
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %24
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* %14, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64, i64* %13, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %49, %24
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %16, align 8
  %59 = sub nsw i64 %57, %58
  %60 = call i64 @Min(i64 %56, i64 %59)
  %61 = load i64*, i64** %10, align 8
  store i64 %60, i64* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %16, align 8
  %69 = add nsw i64 %67, %68
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  %71 = bitcast i32* %70 to i8*
  %72 = load i8**, i8*** %11, align 8
  store i8* %71, i8** %72, align 8
  %73 = call i32 (...) @pg_read_barrier()
  %74 = load i32, i32* @SHM_MQ_SUCCESS, align 4
  store i32 %74, i32* %6, align 4
  br label %118

75:                                               ; preds = %49
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = call i32 (...) @pg_read_barrier()
  %82 = load i64, i64* %15, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = call i64 @pg_atomic_read_u64(i32* %84)
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %24

88:                                               ; preds = %80
  %89 = load i32, i32* @SHM_MQ_DETACHED, align 4
  store i32 %89, i32* %6, align 4
  br label %118

90:                                               ; preds = %75
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @shm_mq_inc_bytes_read(%struct.TYPE_6__* %96, i64 %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %95, %90
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @SHM_MQ_WOULD_BLOCK, align 4
  store i32 %107, i32* %6, align 4
  br label %118

108:                                              ; preds = %103
  %109 = load i32, i32* @MyLatch, align 4
  %110 = load i32, i32* @WL_LATCH_SET, align 4
  %111 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @WAIT_EVENT_MQ_RECEIVE, align 4
  %114 = call i32 @WaitLatch(i32 %109, i32 %112, i32 0, i32 %113)
  %115 = load i32, i32* @MyLatch, align 4
  %116 = call i32 @ResetLatch(i32 %115)
  %117 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %24

118:                                              ; preds = %106, %88, %55
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i64 @pg_atomic_read_u64(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @Min(i64, i64) #1

declare dso_local i32 @pg_read_barrier(...) #1

declare dso_local i32 @shm_mq_inc_bytes_read(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @WaitLatch(i32, i32, i32, i32) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
