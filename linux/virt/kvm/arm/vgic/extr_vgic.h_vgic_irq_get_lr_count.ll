; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.h_vgic_irq_get_lr_count.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.h_vgic_irq_get_lr_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_irq = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_irq*)* @vgic_irq_get_lr_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_irq_get_lr_count(%struct.vgic_irq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vgic_irq*, align 8
  store %struct.vgic_irq* %0, %struct.vgic_irq** %3, align 8
  %4 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %5 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @vgic_irq_is_sgi(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %11 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %16 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @hweight8(i64 %17)
  %19 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %20 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %9, %1
  %24 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %25 = call i64 @irq_is_pending(%struct.vgic_irq* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %29 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ true, %23 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %14
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @vgic_irq_is_sgi(i32) #1

declare dso_local i32 @hweight8(i64) #1

declare dso_local i64 @irq_is_pending(%struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
