; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_heap_attisnull.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_heap_attisnull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid attnum: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_attisnull(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %11, %14
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i1 [ true, %3 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = call i64 @HeapTupleHeaderGetNatts(%struct.TYPE_12__* %23)
  %25 = trunc i64 %24 to i32
  %26 = icmp sgt i32 %20, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %16
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call %struct.TYPE_11__* @TupleDescAttr(%struct.TYPE_9__* %31, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %65

39:                                               ; preds = %30, %27
  store i32 1, i32* %4, align 4
  br label %65

40:                                               ; preds = %16
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = call i64 @HeapTupleNoNulls(%struct.TYPE_10__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %65

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @att_isnull(i32 %50, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %65

57:                                               ; preds = %40
  %58 = load i32, i32* %6, align 4
  switch i32 %58, label %60 [
    i32 128, label %59
    i32 129, label %59
    i32 130, label %59
    i32 131, label %59
    i32 132, label %59
    i32 133, label %59
  ]

59:                                               ; preds = %57, %57, %57, %57, %57, %57
  br label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @elog(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %59
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %48, %47, %39, %38
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @HeapTupleHeaderGetNatts(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @TupleDescAttr(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @HeapTupleNoNulls(%struct.TYPE_10__*) #1

declare dso_local i32 @att_isnull(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
