; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_hio.c_ReadBufferBI.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_hio.c_ReadBufferBI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@MAIN_FORKNUM = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i64 0, align 8
@RBM_ZERO_AND_LOCK = common dso_local global i64 0, align 8
@RBM_ZERO_AND_CLEANUP_LOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, %struct.TYPE_3__*)* @ReadBufferBI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ReadBufferBI(i32 %0, i64 %1, i64 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MAIN_FORKNUM, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @ReadBufferExtended(i32 %14, i32 %15, i64 %16, i64 %17, i32* null)
  store i64 %18, i64* %5, align 8
  br label %74

19:                                               ; preds = %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @InvalidBuffer, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @BufferGetBlockNumber(i64 %28)
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @RBM_ZERO_AND_LOCK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @RBM_ZERO_AND_CLEANUP_LOCK, align 8
  %39 = icmp ne i64 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @IncrBufferRefCount(i64 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %5, align 8
  br label %74

51:                                               ; preds = %25
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ReleaseBuffer(i64 %54)
  %56 = load i64, i64* @InvalidBuffer, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %51, %19
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MAIN_FORKNUM, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @ReadBufferExtended(i32 %60, i32 %61, i64 %62, i64 %63, i32* %66)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @IncrBufferRefCount(i64 %68)
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %59, %40, %13
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local i64 @ReadBufferExtended(i32, i32, i64, i64, i32*) #1

declare dso_local i64 @BufferGetBlockNumber(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IncrBufferRefCount(i64) #1

declare dso_local i32 @ReleaseBuffer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
