; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_meminit.c_MmFindAvailablePagesBeforePage.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_meminit.c_MmFindAvailablePagesBeforePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@LoaderFree = common dso_local global i64 0, align 8
@MmLowestPhysicalPage = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MmFindAvailablePagesBeforePage(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i64 @MmFindAvailablePages(i32 %20, i64 %21, i64 %22, i32 %23)
  store i64 %24, i64* %5, align 8
  br label %56

25:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sub nsw i64 %26, 1
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %52, %25
  %29 = load i64, i64* %12, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LoaderFree, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i64 0, i64* %11, align 8
  br label %52

40:                                               ; preds = %31
  %41 = load i64, i64* %11, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @MmLowestPhysicalPage, align 8
  %50 = add nsw i64 %48, %49
  store i64 %50, i64* %5, align 8
  br label %56

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i64, i64* %12, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %12, align 8
  br label %28

55:                                               ; preds = %28
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %55, %47, %19
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i64 @MmFindAvailablePages(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
