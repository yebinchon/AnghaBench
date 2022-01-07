; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_freelist.c_StrategyInitialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_freelist.c_StrategyInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i64, i64, i32 }

@NBuffers = common dso_local global i64 0, align 8
@NUM_BUFFER_PARTITIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Buffer Strategy Status\00", align 1
@StrategyControl = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StrategyInitialize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @NBuffers, align 8
  %5 = load i64, i64* @NUM_BUFFER_PARTITIONS, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @InitBufTable(i64 %6)
  %8 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 48, i32* %3)
  %9 = inttoptr i64 %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** @StrategyControl, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @Assert(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrategyControl, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 6
  %17 = call i32 @SpinLockInit(i32* %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrategyControl, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* @NBuffers, align 8
  %21 = sub nsw i64 %20, 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrategyControl, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrategyControl, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = call i32 @pg_atomic_init_u32(i32* %25, i32 0)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrategyControl, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrategyControl, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = call i32 @pg_atomic_init_u32(i32* %30, i32 0)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrategyControl, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  br label %40

34:                                               ; preds = %1
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  br label %40

40:                                               ; preds = %34, %12
  ret void
}

declare dso_local i32 @InitBufTable(i64) #1

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SpinLockInit(i32*) #1

declare dso_local i32 @pg_atomic_init_u32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
