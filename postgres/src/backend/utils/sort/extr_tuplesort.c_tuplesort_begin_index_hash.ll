; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_begin_index_hash.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_begin_index_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@comparetup_index_hash = common dso_local global i32 0, align 4
@copytup_index = common dso_local global i32 0, align 4
@writetup_index = common dso_local global i32 0, align 4
@readtup_index = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@trace_sort = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @tuplesort_begin_index_hash(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %16, align 4
  %22 = call %struct.TYPE_4__* @tuplesort_begin_common(i32 %19, i32 %20, i32 %21)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %17, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @MemoryContextSwitchTo(i32 %25)
  store i32 %26, i32* %18, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @comparetup_index_hash, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @copytup_index, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @writetup_index, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @readtup_index, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @MemoryContextSwitchTo(i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  ret %struct.TYPE_4__* %58
}

declare dso_local %struct.TYPE_4__* @tuplesort_begin_common(i32, i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
