; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_meminit.c_MmAreMemoryPagesAvailable.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_meminit.c_MmAreMemoryPagesAvailable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MmLowestPhysicalPage = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@LoaderFree = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MmAreMemoryPagesAvailable(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @MmGetPageNumberFromAddress(i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @MmLowestPhysicalPage, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %5, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load i64, i64* @MmLowestPhysicalPage, align 8
  %25 = load i64, i64* %11, align 8
  %26 = sub nsw i64 %25, %24
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* %7, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %5, align 4
  br label %58

34:                                               ; preds = %23
  %35 = load i64, i64* %11, align 8
  store i64 %35, i64* %12, align 8
  br label %36

36:                                               ; preds = %53, %34
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LoaderFree, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %5, align 4
  br label %58

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %12, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %12, align 8
  br label %36

56:                                               ; preds = %36
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %50, %32, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @MmGetPageNumberFromAddress(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
