; ModuleID = '/home/carl/AnghaBench/postgres/contrib/file_fdw/extr_file_fdw.c_fileIterateForeignScan.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/file_fdw/extr_file_fdw.c_fileIterateForeignScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_15__*, i8*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i64 }

@CopyFromErrorCallback = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_13__*)* @fileIterateForeignScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @fileIterateForeignScan(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %4, align 8
  %15 = load i32, i32* @CopyFromErrorCallback, align 4
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** @error_context_stack, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** @error_context_stack, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = call i32 @ExecClearTuple(%struct.TYPE_12__* %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @NextCopyFrom(i64 %28, i32* null, i32 %31, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = call i32 @ExecStoreVirtualTuple(%struct.TYPE_12__* %39)
  br label %41

41:                                               ; preds = %38, %1
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** @error_context_stack, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %44
}

declare dso_local i32 @ExecClearTuple(%struct.TYPE_12__*) #1

declare dso_local i32 @NextCopyFrom(i64, i32*, i32, i32) #1

declare dso_local i32 @ExecStoreVirtualTuple(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
