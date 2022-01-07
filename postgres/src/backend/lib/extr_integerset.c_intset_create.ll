; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_integerset.c_intset_create.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_integerset.c_intset_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i64, i64, i64, i32*, i64, i32*, i32, i32*, i64, i64, i64, i32, i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @intset_create() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = call i64 @palloc(i32 112)
  %3 = inttoptr i64 %2 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %1, align 8
  %4 = load i32, i32* @CurrentMemoryContext, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 14
  store i32 %4, i32* %6, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %8 = call i32 @GetMemoryChunkSpace(%struct.TYPE_4__* %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 13
  store i32 %8, i32* %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 12
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 11
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 10
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 9
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @memset(i32 %21, i32 0, i32 4)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 7
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %39
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @GetMemoryChunkSpace(%struct.TYPE_4__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
