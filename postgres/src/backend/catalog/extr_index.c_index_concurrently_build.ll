; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_index_concurrently_build.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_index_concurrently_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@INDEX_CREATE_SET_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @index_concurrently_build(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @ActiveSnapshotSet()
  %9 = call i32 @Assert(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  %12 = call i32 @table_open(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @RowExclusiveLock, align 4
  %15 = call i32 @index_open(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_4__* @BuildIndexInfo(i32 %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %7, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = call i32 @index_build(i32 %29, i32 %30, %struct.TYPE_4__* %31, i32 0, i32 1)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @NoLock, align 4
  %35 = call i32 @table_close(i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @NoLock, align 4
  %38 = call i32 @index_close(i32 %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @INDEX_CREATE_SET_READY, align 4
  %41 = call i32 @index_set_state_flags(i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ActiveSnapshotSet(...) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @index_open(i32, i32) #1

declare dso_local %struct.TYPE_4__* @BuildIndexInfo(i32) #1

declare dso_local i32 @index_build(i32, i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @index_close(i32, i32) #1

declare dso_local i32 @index_set_state_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
