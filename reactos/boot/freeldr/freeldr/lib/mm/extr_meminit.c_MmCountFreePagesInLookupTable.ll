; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_meminit.c_MmCountFreePagesInLookupTable.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_meminit.c_MmCountFreePagesInLookupTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@LoaderFree = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MmCountFreePagesInLookupTable(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LoaderFree, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %23, %15
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %11

30:                                               ; preds = %11
  %31 = load i64, i64* %7, align 8
  ret i64 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
