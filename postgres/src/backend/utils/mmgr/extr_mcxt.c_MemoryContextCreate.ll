; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_mcxt.c_MemoryContextCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_mcxt.c_MemoryContextCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32*, i32*, i64, %struct.TYPE_5__*, i32*, i32 }

@CritSectionCount = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MemoryContextCreate(%struct.TYPE_5__* %0, i32 %1, i32* %2, %struct.TYPE_5__* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i64, i64* @CritSectionCount, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 10
  store i32* %20, i32** %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 9
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 8
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 7
  store i32* null, i32** %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %5
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = icmp ne %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %56, align 8
  br label %57

57:                                               ; preds = %51, %41
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %71

66:                                               ; preds = %5
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %66, %57
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = call i32 @VALGRIND_CREATE_MEMPOOL(%struct.TYPE_5__* %72, i32 0, i32 0)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @VALGRIND_CREATE_MEMPOOL(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
