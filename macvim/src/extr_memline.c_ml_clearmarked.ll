; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_memline.c_ml_clearmarked.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_memline.c_ml_clearmarked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32* }

@curbuf = common dso_local global %struct.TYPE_10__* null, align 8
@lowest_marked = common dso_local global i64 0, align 8
@ML_FIND = common dso_local global i32 0, align 4
@DB_MARKED = common dso_local global i32 0, align 4
@DB_INDEX_MASK = common dso_local global i32 0, align 4
@ML_LOCKED_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ml_clearmarked() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %81

11:                                               ; preds = %0
  %12 = load i64, i64* @lowest_marked, align 8
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %79, %11
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %14, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %13
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* @ML_FIND, align 4
  %24 = call %struct.TYPE_8__* @ml_find_line(%struct.TYPE_10__* %21, i64 %22, i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %1, align 8
  %25 = icmp eq %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %81

27:                                               ; preds = %20
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %32, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %74, %27
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %40, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DB_MARKED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %46
  %58 = load i32, i32* @DB_INDEX_MASK, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %58
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @ML_LOCKED_DIRTY, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %57, %46
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  %77 = load i64, i64* %3, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %3, align 8
  br label %39

79:                                               ; preds = %39
  br label %13

80:                                               ; preds = %13
  store i64 0, i64* @lowest_marked, align 8
  br label %81

81:                                               ; preds = %80, %26, %10
  ret void
}

declare dso_local %struct.TYPE_8__* @ml_find_line(%struct.TYPE_10__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
