; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep_pci.c_pci_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep_pci.c_pci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@pci1_desc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"PCI Bus:\0A\00", align 1
@PCI_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_VENDORID = common dso_local global i32 0, align 4
@PCI_DEVICEID = common dso_local global i32 0, align 4
@PCI_BASECLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c" %d:%d -> vendor:device:class %x:%x:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Setting up vga...\0A\00", align 1
@vga1_desc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Done with vga\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"^-- end PCI\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_setup(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32* inttoptr (i64 2147486968 to i32*), i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pci1_desc, i32 0, i32 0), align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %98, %2
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %101

17:                                               ; preds = %14
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %94, %17
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %21, label %97

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %26 = call i8* @pci_read(i32* %22, i32 %23, i32 %24, i32 0, i32 %25, i32 1)
  %27 = ptrtoint i8* %26 to i8
  store i8 %27, i8* %5, align 1
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @PCI_VENDORID, align 4
  %32 = call i8* @pci_read(i32* %28, i32 %29, i32 %30, i32 0, i32 %31, i32 2)
  %33 = ptrtoint i8* %32 to i16
  store i16 %33, i16* %6, align 2
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @PCI_DEVICEID, align 4
  %38 = call i8* @pci_read(i32* %34, i32 %35, i32 %36, i32 0, i32 %37, i32 2)
  %39 = ptrtoint i8* %38 to i16
  store i16 %39, i16* %7, align 2
  %40 = load i16, i16* %6, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %21
  %44 = load i16, i16* %6, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %45, 65535
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %21
  br label %94

48:                                               ; preds = %43
  %49 = load i8, i8* %5, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 128
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 8, i32* %9, align 4
  br label %55

54:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %53
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %90, %55
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @PCI_BASECLASS, align 4
  %66 = call i8* @pci_read(i32* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 1)
  %67 = ptrtoint i8* %66 to i16
  store i16 %67, i16* %8, align 2
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i16, i16* %6, align 2
  %71 = zext i16 %70 to i32
  %72 = load i16, i16* %7, align 2
  %73 = zext i16 %72 to i32
  %74 = load i16, i16* %8, align 2
  %75 = zext i16 %74 to i32
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69, i32 %71, i32 %73, i32 %75)
  %77 = load i16, i16* %8, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %89

80:                                               ; preds = %60
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* %3, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @vga_setup(i32 %82, i32* %83, i32* @vga1_desc, i32 %84, i32 %85, i32 %86)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %80, %60
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %56

93:                                               ; preds = %56
  br label %94

94:                                               ; preds = %93, %47
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %18

97:                                               ; preds = %18
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %14

101:                                              ; preds = %14
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @pci_read(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vga_setup(i32, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
