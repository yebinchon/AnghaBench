; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-debug.c_print_irq_state.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-debug.c_print_irq_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vgic_irq = type { i64, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_vcpu = type { i32 }

@VGIC_NR_SGIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"SGI\00", align 1
@VGIC_NR_PRIVATE_IRQS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"PPI\00", align 1
@VGIC_MAX_SPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"SPI\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"LPI\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"       %s %4d     %2d %d%d%d%d%d%d%d %8d %8x  %2x %3d      %2d \0A\00", align 1
@VGIC_CONFIG_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.vgic_irq*, %struct.kvm_vcpu*)* @print_irq_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_irq_state(%struct.seq_file* %0, %struct.vgic_irq* %1, %struct.kvm_vcpu* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.vgic_irq*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.vgic_irq* %1, %struct.vgic_irq** %5, align 8
  store %struct.kvm_vcpu* %2, %struct.kvm_vcpu** %6, align 8
  %8 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %9 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %8, i32 0, i32 13
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @VGIC_NR_SGIS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %31

14:                                               ; preds = %3
  %15 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %16 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VGIC_NR_PRIVATE_IRQS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %30

21:                                               ; preds = %14
  %22 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %23 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @VGIC_MAX_SPI, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %29

28:                                               ; preds = %21
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %20
  br label %31

31:                                               ; preds = %30, %13
  %32 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %33 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %38 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @VGIC_NR_PRIVATE_IRQS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36, %31
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %46 = call i32 @print_header(%struct.seq_file* %43, %struct.vgic_irq* %44, %struct.kvm_vcpu* %45)
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %51 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %54 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %53, i32 0, i32 12
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = icmp ne %struct.TYPE_3__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %59 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %58, i32 0, i32 12
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  br label %64

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %57
  %65 = phi i32 [ %62, %57 ], [ -1, %63 ]
  %66 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %67 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %70 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %73 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %76 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %79 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %82 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @VGIC_CONFIG_LEVEL, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %88 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %91 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %94 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %97 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %100 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %103 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = icmp ne %struct.TYPE_4__* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %64
  %107 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %108 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  br label %113

112:                                              ; preds = %64
  br label %113

113:                                              ; preds = %112, %106
  %114 = phi i32 [ %111, %106 ], [ -1, %112 ]
  %115 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* %49, i32 %52, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77, i32 %80, i32 %86, i32 %89, i32 %92, i32 %95, i32 %98, i32 %101, i32 %114)
  ret void
}

declare dso_local i32 @print_header(%struct.seq_file*, %struct.vgic_irq*, %struct.kvm_vcpu*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
