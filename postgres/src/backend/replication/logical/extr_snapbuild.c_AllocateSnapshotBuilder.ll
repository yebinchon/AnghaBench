; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_AllocateSnapshotBuilder.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_AllocateSnapshotBuilder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i64 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"snapshot builder context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@SNAPBUILD_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @AllocateSnapshotBuilder(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @CurrentMemoryContext, align 4
  %13 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %14 = call i32 @AllocSetContextCreate(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @MemoryContextSwitchTo(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = call i8* @palloc0(i32 56)
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %11, align 8
  %19 = load i32, i32* @SNAPBUILD_START, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 128, i32* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i8* @palloc0(i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @MemoryContextSwitchTo(i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  ret %struct.TYPE_5__* %59
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i8* @palloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
