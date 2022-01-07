; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_filters.c_kkll_m_filters_list.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_filters.c_kkll_m_filters_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@STATUS_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@NonPagedPool = common dso_local global i32 0, align 4
@POOL_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 91, i32 37, i32 46, i32 50, i32 117, i32 93, i32 32, i32 37, i32 119, i32 90, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kkll_m_filters_list(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_5__** null, %struct.TYPE_5__*** %6, align 8
  %8 = call i64 @IoEnumerateRegisteredFiltersList(%struct.TYPE_5__** null, i32 0, i32* %4)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @STATUS_BUFFER_TOO_SMALL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 8, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @NonPagedPool, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @POOL_TAG, align 4
  %23 = call i64 @ExAllocatePoolWithTag(i32 %20, i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_5__**
  store %struct.TYPE_5__** %24, %struct.TYPE_5__*** %6, align 8
  %25 = icmp ne %struct.TYPE_5__** %24, null
  br i1 %25, label %26, label %63

26:                                               ; preds = %15
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @IoEnumerateRegisteredFiltersList(%struct.TYPE_5__** %27, i32 %28, i32* %4)
  store i64 %29, i64* %3, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %56, %26
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @NT_SUCCESS(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %59

40:                                               ; preds = %38
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i64 @kprintf(i32 %41, i8* bitcast ([12 x i32]* @.str to i8*), i32 %42, i32* %48)
  store i64 %49, i64* %3, align 8
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %50, i64 %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = call i32 @ObDereferenceObject(%struct.TYPE_5__* %54)
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %30

59:                                               ; preds = %38
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %61 = load i32, i32* @POOL_TAG, align 4
  %62 = call i32 @ExFreePoolWithTag(%struct.TYPE_5__** %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %15
  br label %64

64:                                               ; preds = %63, %12, %1
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local i64 @IoEnumerateRegisteredFiltersList(%struct.TYPE_5__**, i32, i32*) #1

declare dso_local i64 @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i64 @kprintf(i32, i8*, i32, i32*) #1

declare dso_local i32 @ObDereferenceObject(%struct.TYPE_5__*) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_5__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
