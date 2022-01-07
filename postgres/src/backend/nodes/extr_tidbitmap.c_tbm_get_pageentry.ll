; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_tidbitmap.c_tbm_get_pageentry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_tidbitmap.c_tbm_get_pageentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, %struct.TYPE_9__ }

@TBM_EMPTY = common dso_local global i64 0, align 8
@TBM_ONE_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_8__*, i64)* @tbm_get_pageentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @tbm_get_pageentry(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TBM_EMPTY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load i64, i64* @TBM_ONE_PAGE, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TBM_ONE_PAGE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %6, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %3, align 8
  br label %70

36:                                               ; preds = %26
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = call i32 @tbm_create_pagetable(%struct.TYPE_8__* %37)
  br label %39

39:                                               ; preds = %36, %20
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call %struct.TYPE_9__* @pagetable_insert(i32 %42, i64 %43, i32* %7)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %6, align 8
  br label %45

45:                                               ; preds = %39, %14
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i8, i8* %50, align 8
  store i8 %51, i8* %8, align 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = call i32 @MemSet(%struct.TYPE_9__* %52, i32 0, i32 16)
  %54 = load i8, i8* %8, align 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i8 %54, i8* %56, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %48, %45
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %3, align 8
  br label %70

70:                                               ; preds = %68, %34
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %71
}

declare dso_local i32 @tbm_create_pagetable(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @pagetable_insert(i32, i64, i32*) #1

declare dso_local i32 @MemSet(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
