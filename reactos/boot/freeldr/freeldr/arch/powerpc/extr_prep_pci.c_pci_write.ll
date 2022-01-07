; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep_pci.c_pci_write.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep_pci.c_pci_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_write(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %15, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @pci_cfg_addr(i32 %25, i32 %26, i32 %27, i32 %28)
  store i64 %29, i64* %16, align 8
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, 3
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %17, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, -4
  %39 = call i64 @pci_read(%struct.TYPE_6__* %33, i32 %34, i32 %35, i32 %36, i32 %38, i32 4)
  store i64 %39, i64* %18, align 8
  %40 = load i32, i32* %13, align 4
  %41 = mul nsw i32 %40, 8
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  %44 = load i64, i64* %17, align 8
  %45 = shl i64 %44, 3
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %43, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %19, align 8
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* %19, align 8
  %51 = xor i64 %50, -1
  %52 = and i64 %49, %51
  %53 = load i32, i32* %14, align 4
  %54 = load i64, i64* %17, align 8
  %55 = shl i64 %54, 3
  %56 = trunc i64 %55 to i32
  %57 = shl i32 %53, %56
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %19, align 8
  %60 = and i64 %58, %59
  %61 = or i64 %52, %60
  store i64 %61, i64* %18, align 8
  %62 = load i64, i64* %16, align 8
  %63 = call i8* @rev32(i64 %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i64 %64, i64* %68, align 8
  %69 = call i32 (...) @sync()
  %70 = load i64, i64* %18, align 8
  %71 = call i8* @rev32(i64 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i8* %71, i8** %75, align 8
  %76 = call i32 (...) @sync()
  %77 = load i64, i64* %15, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i64 %77, i64* %81, align 8
  %82 = call i32 (...) @sync()
  ret void
}

declare dso_local i64 @pci_cfg_addr(i32, i32, i32, i32) #1

declare dso_local i64 @pci_read(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @rev32(i64) #1

declare dso_local i32 @sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
