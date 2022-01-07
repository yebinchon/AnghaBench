; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ReorderBufferIterTXNFinish.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ReorderBufferIterTXNFinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ReorderBufferChange = common dso_local global i32 0, align 4
@change = common dso_local global i32 0, align 4
@node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @ReorderBufferIterTXNFinish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReorderBufferIterTXNFinish(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %31, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CloseTransientFile(i32 %28)
  br label %30

30:                                               ; preds = %21, %12
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %6

34:                                               ; preds = %6
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = call i32 @dlist_is_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ReorderBufferChange, align 4
  %41 = load i32, i32* @change, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* @ReorderBufferChange, align 4
  %44 = load i32, i32* @node, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = call i32 @dlist_pop_head_node(i32* %46)
  %48 = call i32 @dlist_container(i32 %43, i32 %44, i32 %47)
  store i32 %48, i32* @change, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @change, align 4
  %51 = call i32 @ReorderBufferReturnChange(i32* %49, i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = call i32 @dlist_is_empty(i32* %53)
  %55 = call i32 @Assert(i32 %54)
  br label %56

56:                                               ; preds = %39, %34
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @binaryheap_free(i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = call i32 @pfree(%struct.TYPE_6__* %61)
  ret void
}

declare dso_local i32 @CloseTransientFile(i32) #1

declare dso_local i32 @dlist_is_empty(i32*) #1

declare dso_local i32 @dlist_container(i32, i32, i32) #1

declare dso_local i32 @dlist_pop_head_node(i32*) #1

declare dso_local i32 @ReorderBufferReturnChange(i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @binaryheap_free(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
