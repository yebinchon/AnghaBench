; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinrels.c_mark_dummy_rel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinrels.c_mark_dummy_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, i64 }

@NIL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_dummy_rel(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = call i64 @is_dummy_rel(%struct.TYPE_8__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %36

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = call i32 @GetMemoryChunkContext(%struct.TYPE_8__* %9)
  %11 = call i32 @MemoryContextSwitchTo(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load i8*, i8** @NIL, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @NIL, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = load i8*, i8** @NIL, align 8
  %23 = load i8*, i8** @NIL, align 8
  %24 = load i8*, i8** @NIL, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** @NIL, align 8
  %29 = call i64 @create_append_path(i32* null, %struct.TYPE_8__* %21, i8* %22, i8* %23, i8* %24, i32 %27, i32 0, i32 0, i8* %28, i32 -1)
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @add_path(%struct.TYPE_8__* %20, i32* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = call i32 @set_cheapest(%struct.TYPE_8__* %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @MemoryContextSwitchTo(i32 %34)
  br label %36

36:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @is_dummy_rel(%struct.TYPE_8__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @GetMemoryChunkContext(%struct.TYPE_8__*) #1

declare dso_local i32 @add_path(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @create_append_path(i32*, %struct.TYPE_8__*, i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @set_cheapest(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
