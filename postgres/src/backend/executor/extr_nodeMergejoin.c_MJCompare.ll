; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeMergejoin.c_MJCompare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeMergejoin.c_MJCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i64, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @MJCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MJCompare(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %5, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = call i32 @ResetExprContext(%struct.TYPE_12__* %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MemoryContextSwitchTo(i32 %18)
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %63, %1
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %31
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %8, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %63

43:                                               ; preds = %37, %26
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = call i32 @ApplySortComparator(i32 %46, i64 %49, i32 %52, i64 %55, i32* %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %66

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %42
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %20

66:                                               ; preds = %61, %20
  %67 = load i32, i32* %3, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %69
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %72, %66
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @MemoryContextSwitchTo(i32 %79)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @ResetExprContext(%struct.TYPE_12__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @ApplySortComparator(i32, i64, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
