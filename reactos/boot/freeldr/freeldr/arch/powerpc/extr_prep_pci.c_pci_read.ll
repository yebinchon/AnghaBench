; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep_pci.c_pci_read.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep_pci.c_pci_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pci_read(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = call i32 (...) @sync()
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @pci_cfg_addr(i32 %23, i32 %24, i32 %25, i32 %26)
  store i64 %27, i64* %15, align 8
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, 3
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %15, align 8
  %32 = call i64 @rev32(i64 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %32, i64* %36, align 8
  %37 = call i32 (...) @sync()
  %38 = load i32, i32* %12, align 4
  switch i32 %38, label %67 [
    i32 4, label %39
    i32 2, label %45
    i32 1, label %56
  ]

39:                                               ; preds = %6
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %14, align 8
  br label %67

45:                                               ; preds = %6
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %16, align 8
  %53 = shl i64 %52, 3
  %54 = lshr i64 %51, %53
  %55 = and i64 %54, 65535
  store i64 %55, i64* %14, align 8
  br label %67

56:                                               ; preds = %6
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %16, align 8
  %64 = shl i64 %63, 3
  %65 = lshr i64 %62, %64
  %66 = and i64 %65, 255
  store i64 %66, i64* %14, align 8
  br label %67

67:                                               ; preds = %6, %56, %45, %39
  %68 = load i64, i64* %13, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i64 %68, i64* %72, align 8
  %73 = call i32 (...) @sync()
  %74 = load i64, i64* %14, align 8
  ret i64 %74
}

declare dso_local i32 @sync(...) #1

declare dso_local i64 @pci_cfg_addr(i32, i32, i32, i32) #1

declare dso_local i64 @rev32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
