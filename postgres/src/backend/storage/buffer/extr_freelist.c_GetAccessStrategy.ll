; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_freelist.c_GetAccessStrategy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_freelist.c_GetAccessStrategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@BLCKSZ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unrecognized buffer access strategy: %d\00", align 1
@NBuffers = common dso_local global i32 0, align 4
@BufferAccessStrategyData = common dso_local global i32 0, align 4
@buffers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @GetAccessStrategy(i32 %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %17 [
    i32 129, label %7
    i32 131, label %8
    i32 130, label %11
    i32 128, label %14
  ]

7:                                                ; preds = %1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %42

8:                                                ; preds = %1
  %9 = load i32, i32* @BLCKSZ, align 4
  %10 = sdiv i32 262144, %9
  store i32 %10, i32* %5, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @BLCKSZ, align 4
  %13 = sdiv i32 16777216, %12
  store i32 %13, i32* %5, align 4
  br label %21

14:                                               ; preds = %1
  %15 = load i32, i32* @BLCKSZ, align 4
  %16 = sdiv i32 262144, %15
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @elog(i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %42

21:                                               ; preds = %14, %11, %8
  %22 = load i32, i32* @NBuffers, align 4
  %23 = sdiv i32 %22, 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @Min(i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @BufferAccessStrategyData, align 4
  %27 = load i32, i32* @buffers, align 4
  %28 = call i64 @offsetof(i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = add i64 %28, %31
  %33 = call i64 @palloc0(i64 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %4, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %2, align 8
  br label %42

42:                                               ; preds = %21, %17, %7
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %43
}

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i64 @palloc0(i64) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
