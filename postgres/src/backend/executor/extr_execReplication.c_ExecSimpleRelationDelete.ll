; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execReplication.c_ExecSimpleRelationDelete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execReplication.c_ExecSimpleRelationDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@CMD_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecSimpleRelationDelete(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %8, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i32* %18, i32** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @CMD_DELETE, align 4
  %21 = call i32 @CheckCmdReplicaIdentity(i32 %19, i32 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @ExecBRDeleteTriggers(%struct.TYPE_14__* %34, i32* %35, %struct.TYPE_13__* %36, i32* %37, i32* null, i32* null)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %33, %26, %3
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @simple_table_tuple_delete(i32 %46, i32* %47, i32 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @ExecARDeleteTriggers(%struct.TYPE_14__* %52, %struct.TYPE_13__* %53, i32* %54, i32* null, i32* null)
  br label %56

56:                                               ; preds = %45, %42
  ret void
}

declare dso_local i32 @CheckCmdReplicaIdentity(i32, i32) #1

declare dso_local i32 @ExecBRDeleteTriggers(%struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32 @simple_table_tuple_delete(i32, i32*, i32) #1

declare dso_local i32 @ExecARDeleteTriggers(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
