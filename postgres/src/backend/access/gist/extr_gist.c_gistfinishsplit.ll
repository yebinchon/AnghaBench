; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistfinishsplit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistfinishsplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@GIST_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, i32*, i32*, i32)* @gistfinishsplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistfinishsplit(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @list_length(i32* %15)
  %17 = icmp sge i32 %16, 2
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %26 = call i32 @LockBuffer(i32 %24, i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = call i32 @gistFindCorrectParent(i32 %29, %struct.TYPE_11__* %30)
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @list_length(i32* %32)
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %71, %5
  %36 = load i32, i32* %14, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %74

38:                                               ; preds = %35
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i64 @list_nth(i32* %39, i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %11, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i64 @list_nth(i32* %43, i32 %45)
  %47 = inttoptr i64 %46 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %12, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* @InvalidOffsetNumber, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @gistinserttuples(%struct.TYPE_10__* %48, %struct.TYPE_12__* %51, i32* %52, i32* %54, i32 1, i32 %55, i64 %58, i64 %61, i32 0, i32 0)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %38
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = call i32 @gistFindCorrectParent(i32 %67, %struct.TYPE_11__* %68)
  br label %70

70:                                               ; preds = %64, %38
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %14, align 4
  br label %35

74:                                               ; preds = %35
  %75 = load i32*, i32** %9, align 8
  %76 = call i64 @lsecond(i32* %75)
  %77 = inttoptr i64 %76 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %11, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i64 @linitial(i32* %78)
  %80 = inttoptr i64 %79 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %12, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %83, i32* %84, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %87, i32* %88, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i64 @gistinserttuples(%struct.TYPE_10__* %89, %struct.TYPE_12__* %92, i32* %93, i32* %94, i32 2, i32 %97, i64 %100, i64 %103, i32 1, i32 %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @Assert(i32 %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @gistFindCorrectParent(i32, %struct.TYPE_11__*) #1

declare dso_local i64 @list_nth(i32*, i32) #1

declare dso_local i64 @gistinserttuples(%struct.TYPE_10__*, %struct.TYPE_12__*, i32*, i32*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i64 @lsecond(i32*) #1

declare dso_local i64 @linitial(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
