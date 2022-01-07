; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeGatherMerge.c_gather_merge_getnext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeGatherMerge.c_gather_merge_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32**, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @gather_merge_getnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gather_merge_getnext(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = call i32 @gather_merge_init(%struct.TYPE_6__* %10)
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @binaryheap_first(i32 %15)
  %17 = call i32 @DatumGetInt32(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @gather_merge_readnext(%struct.TYPE_6__* %18, i32 %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @Int32GetDatum(i32 %26)
  %28 = call i32 @binaryheap_replace_first(i32 %25, i32 %27)
  br label %34

29:                                               ; preds = %12
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @binaryheap_remove_first(i32 %32)
  br label %34

34:                                               ; preds = %29, %22
  br label %35

35:                                               ; preds = %34, %9
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @binaryheap_empty(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = call i32 @gather_merge_clear_tuples(%struct.TYPE_6__* %42)
  store i32* null, i32** %2, align 8
  br label %57

44:                                               ; preds = %35
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @binaryheap_first(i32 %47)
  %49 = call i32 @DatumGetInt32(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %2, align 8
  br label %57

57:                                               ; preds = %44, %41
  %58 = load i32*, i32** %2, align 8
  ret i32* %58
}

declare dso_local i32 @gather_merge_init(%struct.TYPE_6__*) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @binaryheap_first(i32) #1

declare dso_local i64 @gather_merge_readnext(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @binaryheap_replace_first(i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @binaryheap_remove_first(i32) #1

declare dso_local i64 @binaryheap_empty(i32) #1

declare dso_local i32 @gather_merge_clear_tuples(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
