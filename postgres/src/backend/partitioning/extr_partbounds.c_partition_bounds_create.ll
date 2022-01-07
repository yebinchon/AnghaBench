; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partbounds.c_partition_bounds_create.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partbounds.c_partition_bounds_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unexpected partition strategy: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @partition_bounds_create(i32** %0, i32 %1, %struct.TYPE_6__* %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32** %3, i32*** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = call i64 @palloc(i32 %18)
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32**, i32*** %9, align 8
  store i32* %20, i32** %21, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %32, %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32**, i32*** %9, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 -1, i32* %31, align 4
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %57 [
    i32 130, label %39
    i32 129, label %45
    i32 128, label %51
  ]

39:                                               ; preds = %35
  %40 = load i32**, i32*** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = load i32**, i32*** %9, align 8
  %44 = call i32* @create_hash_bounds(i32** %40, i32 %41, %struct.TYPE_6__* %42, i32** %43)
  store i32* %44, i32** %5, align 8
  br label %65

45:                                               ; preds = %35
  %46 = load i32**, i32*** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = load i32**, i32*** %9, align 8
  %50 = call i32* @create_list_bounds(i32** %46, i32 %47, %struct.TYPE_6__* %48, i32** %49)
  store i32* %50, i32** %5, align 8
  br label %65

51:                                               ; preds = %35
  %52 = load i32**, i32*** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = load i32**, i32*** %9, align 8
  %56 = call i32* @create_range_bounds(i32** %52, i32 %53, %struct.TYPE_6__* %54, i32** %55)
  store i32* %56, i32** %5, align 8
  br label %65

57:                                               ; preds = %35
  %58 = load i32, i32* @ERROR, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @elog(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57
  %64 = call i32 @Assert(i32 0)
  store i32* null, i32** %5, align 8
  br label %65

65:                                               ; preds = %63, %51, %45, %39
  %66 = load i32*, i32** %5, align 8
  ret i32* %66
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32* @create_hash_bounds(i32**, i32, %struct.TYPE_6__*, i32**) #1

declare dso_local i32* @create_list_bounds(i32**, i32, %struct.TYPE_6__*, i32**) #1

declare dso_local i32* @create_range_bounds(i32**, i32, %struct.TYPE_6__*, i32**) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
