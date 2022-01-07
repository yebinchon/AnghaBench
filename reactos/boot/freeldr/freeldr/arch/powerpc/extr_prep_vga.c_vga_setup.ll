; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep_vga.c_vga_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep_vga.c_vga_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._pci_desc = type { i32 }
%struct._vga_desc = type { i8* }
%struct._pci_bar = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vga_setup(i32 %0, %struct._pci_desc* %1, %struct._vga_desc* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct._pci_desc*, align 8
  %9 = alloca %struct._vga_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._pci_bar, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._pci_desc* %1, %struct._pci_desc** %8, align 8
  store %struct._vga_desc* %2, %struct._vga_desc** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %44, %6
  %16 = load i32, i32* %14, align 4
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load %struct._pci_desc*, %struct._pci_desc** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @pci_read_bar(%struct._pci_desc* %19, i32 %20, i32 %21, i32 %22, i32 %23, %struct._pci_bar* %13)
  %25 = call i32 @print_bar(%struct._pci_bar* %13)
  %26 = getelementptr inbounds %struct._pci_bar, %struct._pci_bar* %13, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 65536
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct._pci_bar, %struct._pci_bar* %13, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %43

34:                                               ; preds = %29, %18
  %35 = getelementptr inbounds %struct._pci_bar, %struct._pci_bar* %13, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, -2048
  %38 = add i32 -1073741824, %37
  %39 = zext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct._vga_desc*, %struct._vga_desc** %9, align 8
  %42 = getelementptr inbounds %struct._vga_desc, %struct._vga_desc* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %47

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %15

47:                                               ; preds = %34, %15
  ret void
}

declare dso_local i32 @pci_read_bar(%struct._pci_desc*, i32, i32, i32, i32, %struct._pci_bar*) #1

declare dso_local i32 @print_bar(%struct._pci_bar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
