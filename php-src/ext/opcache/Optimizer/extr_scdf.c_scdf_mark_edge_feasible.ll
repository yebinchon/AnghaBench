; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_scdf.c_scdf_mark_edge_feasible.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_scdf.c_scdf_mark_edge_feasible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__, i32, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_13__*, %struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }

@.str = private unnamed_addr constant [30 x i8] c"Marking edge %d->%d feasible\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Adding block %d to worklist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scdf_mark_edge_feasible(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @scdf_edge(i32* %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @zend_bitset_in(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %90

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i8*, i32, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @zend_bitset_incl(i32 %30, i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @zend_bitset_in(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %24
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @zend_bitset_in(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i8*, i32, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @zend_bitset_incl(i32 %52, i32 %53)
  br label %90

55:                                               ; preds = %24
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i64 %62
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %8, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %9, align 8
  br label %67

67:                                               ; preds = %85, %55
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @zend_bitset_excl(i32 %73, i32 %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_13__*, %struct.TYPE_11__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_11__*)** %80, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = call i32 %81(%struct.TYPE_13__* %82, %struct.TYPE_11__* %83)
  br label %85

85:                                               ; preds = %70
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %9, align 8
  br label %67

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %23, %89, %49
  ret void
}

declare dso_local i32 @scdf_edge(i32*, i32, i32) #1

declare dso_local i64 @zend_bitset_in(i32, i32) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i32, ...) #1

declare dso_local i32 @zend_bitset_incl(i32, i32) #1

declare dso_local i32 @zend_bitset_excl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
