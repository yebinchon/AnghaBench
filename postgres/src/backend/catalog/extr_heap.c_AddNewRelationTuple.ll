; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_AddNewRelationTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_AddNewRelationTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*, i8*, i8*, i8*, i8*, i8, i8*, i8*, i32, i32)* @AddNewRelationTuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AddNewRelationTuple(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8 signext %6, i8* %7, i8* %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8 %6, i8* %18, align 1
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %23, align 8
  %27 = load i8, i8* %18, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %43 [
    i32 130, label %29
    i32 131, label %29
    i32 132, label %29
    i32 128, label %29
    i32 129, label %36
  ]

29:                                               ; preds = %11, %11, %11, %11
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 8
  store i32 0, i32* %35, align 8
  br label %50

36:                                               ; preds = %11
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 8
  store i32 0, i32* %42, align 8
  br label %50

43:                                               ; preds = %11
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 8
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %43, %36, %29
  %51 = load i8*, i8** %19, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %20, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i8* %68, i8** %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %22, align 4
  %78 = call i32 @InsertPgClassTuple(%struct.TYPE_9__* %73, %struct.TYPE_9__* %74, i8* %75, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @InsertPgClassTuple(%struct.TYPE_9__*, %struct.TYPE_9__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
