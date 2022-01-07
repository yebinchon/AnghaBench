; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistinsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gistinsert(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, %struct.TYPE_11__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %14, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %15, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %23 = icmp eq %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %7
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @MemoryContextSwitchTo(i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.TYPE_12__* @initGISTstate(i32 %29)
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %15, align 8
  %31 = call i32 (...) @createTempGistContext()
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %35 = bitcast %struct.TYPE_12__* %34 to i8*
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @MemoryContextSwitchTo(i32 %38)
  br label %40

40:                                               ; preds = %24, %7
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @MemoryContextSwitchTo(i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call %struct.TYPE_10__* @gistFormTuple(%struct.TYPE_12__* %45, i32 %46, i32* %47, i32* %48, i32 1)
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %16, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @gistdoinsert(i32 %54, %struct.TYPE_10__* %55, i32 0, %struct.TYPE_12__* %56, i32 %57, i32 0)
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @MemoryContextSwitchTo(i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @MemoryContextReset(i32 %63)
  ret i32 0
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_12__* @initGISTstate(i32) #1

declare dso_local i32 @createTempGistContext(...) #1

declare dso_local %struct.TYPE_10__* @gistFormTuple(%struct.TYPE_12__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @gistdoinsert(i32, %struct.TYPE_10__*, i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
