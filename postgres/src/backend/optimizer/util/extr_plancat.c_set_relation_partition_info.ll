; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_plancat.c_set_relation_partition_info.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_plancat.c_set_relation_partition_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i32, i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, i32)* @set_relation_partition_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_relation_partition_info(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* @CurrentMemoryContext, align 4
  %16 = call i32* @CreatePartitionDirectory(i32 %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i32* %16, i32** %20, align 8
  br label %21

21:                                               ; preds = %14, %3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.TYPE_14__* @PartitionDirectoryLookup(i32* %26, i32 %27)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %7, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32* @find_partition_scheme(%struct.TYPE_13__* %29, i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br label %41

41:                                               ; preds = %36, %21
  %42 = phi i1 [ false, %21 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = call i32 @set_baserel_partition_key_exprs(i32 %55, %struct.TYPE_12__* %56)
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = call i32 @set_baserel_partition_constraint(i32 %58, %struct.TYPE_12__* %59)
  ret void
}

declare dso_local i32* @CreatePartitionDirectory(i32) #1

declare dso_local %struct.TYPE_14__* @PartitionDirectoryLookup(i32*, i32) #1

declare dso_local i32* @find_partition_scheme(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @set_baserel_partition_key_exprs(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @set_baserel_partition_constraint(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
