; ModuleID = '/home/carl/AnghaBench/linux/virt/lib/extr_irqbypass.c___disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/virt/lib/extr_irqbypass.c___disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_bypass_producer = type { i32 (%struct.irq_bypass_producer*)*, i32 (%struct.irq_bypass_producer*, %struct.irq_bypass_consumer*)*, i32 (%struct.irq_bypass_producer*)* }
%struct.irq_bypass_consumer = type opaque
%struct.irq_bypass_consumer.0 = type { i32 (%struct.irq_bypass_consumer.0*)*, i32 (%struct.irq_bypass_consumer.0*, %struct.irq_bypass_producer*)*, i32 (%struct.irq_bypass_consumer.0*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_bypass_producer*, %struct.irq_bypass_consumer.0*)* @__disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__disconnect(%struct.irq_bypass_producer* %0, %struct.irq_bypass_consumer.0* %1) #0 {
  %3 = alloca %struct.irq_bypass_producer*, align 8
  %4 = alloca %struct.irq_bypass_consumer.0*, align 8
  store %struct.irq_bypass_producer* %0, %struct.irq_bypass_producer** %3, align 8
  store %struct.irq_bypass_consumer.0* %1, %struct.irq_bypass_consumer.0** %4, align 8
  %5 = load %struct.irq_bypass_producer*, %struct.irq_bypass_producer** %3, align 8
  %6 = getelementptr inbounds %struct.irq_bypass_producer, %struct.irq_bypass_producer* %5, i32 0, i32 2
  %7 = load i32 (%struct.irq_bypass_producer*)*, i32 (%struct.irq_bypass_producer*)** %6, align 8
  %8 = icmp ne i32 (%struct.irq_bypass_producer*)* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.irq_bypass_producer*, %struct.irq_bypass_producer** %3, align 8
  %11 = getelementptr inbounds %struct.irq_bypass_producer, %struct.irq_bypass_producer* %10, i32 0, i32 2
  %12 = load i32 (%struct.irq_bypass_producer*)*, i32 (%struct.irq_bypass_producer*)** %11, align 8
  %13 = load %struct.irq_bypass_producer*, %struct.irq_bypass_producer** %3, align 8
  %14 = call i32 %12(%struct.irq_bypass_producer* %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.irq_bypass_consumer.0*, %struct.irq_bypass_consumer.0** %4, align 8
  %17 = getelementptr inbounds %struct.irq_bypass_consumer.0, %struct.irq_bypass_consumer.0* %16, i32 0, i32 2
  %18 = load i32 (%struct.irq_bypass_consumer.0*)*, i32 (%struct.irq_bypass_consumer.0*)** %17, align 8
  %19 = icmp ne i32 (%struct.irq_bypass_consumer.0*)* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.irq_bypass_consumer.0*, %struct.irq_bypass_consumer.0** %4, align 8
  %22 = getelementptr inbounds %struct.irq_bypass_consumer.0, %struct.irq_bypass_consumer.0* %21, i32 0, i32 2
  %23 = load i32 (%struct.irq_bypass_consumer.0*)*, i32 (%struct.irq_bypass_consumer.0*)** %22, align 8
  %24 = load %struct.irq_bypass_consumer.0*, %struct.irq_bypass_consumer.0** %4, align 8
  %25 = call i32 %23(%struct.irq_bypass_consumer.0* %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.irq_bypass_consumer.0*, %struct.irq_bypass_consumer.0** %4, align 8
  %28 = getelementptr inbounds %struct.irq_bypass_consumer.0, %struct.irq_bypass_consumer.0* %27, i32 0, i32 1
  %29 = load i32 (%struct.irq_bypass_consumer.0*, %struct.irq_bypass_producer*)*, i32 (%struct.irq_bypass_consumer.0*, %struct.irq_bypass_producer*)** %28, align 8
  %30 = load %struct.irq_bypass_consumer.0*, %struct.irq_bypass_consumer.0** %4, align 8
  %31 = load %struct.irq_bypass_producer*, %struct.irq_bypass_producer** %3, align 8
  %32 = call i32 %29(%struct.irq_bypass_consumer.0* %30, %struct.irq_bypass_producer* %31)
  %33 = load %struct.irq_bypass_producer*, %struct.irq_bypass_producer** %3, align 8
  %34 = getelementptr inbounds %struct.irq_bypass_producer, %struct.irq_bypass_producer* %33, i32 0, i32 1
  %35 = load i32 (%struct.irq_bypass_producer*, %struct.irq_bypass_consumer*)*, i32 (%struct.irq_bypass_producer*, %struct.irq_bypass_consumer*)** %34, align 8
  %36 = icmp ne i32 (%struct.irq_bypass_producer*, %struct.irq_bypass_consumer*)* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = load %struct.irq_bypass_producer*, %struct.irq_bypass_producer** %3, align 8
  %39 = getelementptr inbounds %struct.irq_bypass_producer, %struct.irq_bypass_producer* %38, i32 0, i32 1
  %40 = load i32 (%struct.irq_bypass_producer*, %struct.irq_bypass_consumer*)*, i32 (%struct.irq_bypass_producer*, %struct.irq_bypass_consumer*)** %39, align 8
  %41 = load %struct.irq_bypass_producer*, %struct.irq_bypass_producer** %3, align 8
  %42 = load %struct.irq_bypass_consumer.0*, %struct.irq_bypass_consumer.0** %4, align 8
  %43 = bitcast %struct.irq_bypass_consumer.0* %42 to %struct.irq_bypass_consumer*
  %44 = call i32 %40(%struct.irq_bypass_producer* %41, %struct.irq_bypass_consumer* %43)
  br label %45

45:                                               ; preds = %37, %26
  %46 = load %struct.irq_bypass_consumer.0*, %struct.irq_bypass_consumer.0** %4, align 8
  %47 = getelementptr inbounds %struct.irq_bypass_consumer.0, %struct.irq_bypass_consumer.0* %46, i32 0, i32 0
  %48 = load i32 (%struct.irq_bypass_consumer.0*)*, i32 (%struct.irq_bypass_consumer.0*)** %47, align 8
  %49 = icmp ne i32 (%struct.irq_bypass_consumer.0*)* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.irq_bypass_consumer.0*, %struct.irq_bypass_consumer.0** %4, align 8
  %52 = getelementptr inbounds %struct.irq_bypass_consumer.0, %struct.irq_bypass_consumer.0* %51, i32 0, i32 0
  %53 = load i32 (%struct.irq_bypass_consumer.0*)*, i32 (%struct.irq_bypass_consumer.0*)** %52, align 8
  %54 = load %struct.irq_bypass_consumer.0*, %struct.irq_bypass_consumer.0** %4, align 8
  %55 = call i32 %53(%struct.irq_bypass_consumer.0* %54)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.irq_bypass_producer*, %struct.irq_bypass_producer** %3, align 8
  %58 = getelementptr inbounds %struct.irq_bypass_producer, %struct.irq_bypass_producer* %57, i32 0, i32 0
  %59 = load i32 (%struct.irq_bypass_producer*)*, i32 (%struct.irq_bypass_producer*)** %58, align 8
  %60 = icmp ne i32 (%struct.irq_bypass_producer*)* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.irq_bypass_producer*, %struct.irq_bypass_producer** %3, align 8
  %63 = getelementptr inbounds %struct.irq_bypass_producer, %struct.irq_bypass_producer* %62, i32 0, i32 0
  %64 = load i32 (%struct.irq_bypass_producer*)*, i32 (%struct.irq_bypass_producer*)** %63, align 8
  %65 = load %struct.irq_bypass_producer*, %struct.irq_bypass_producer** %3, align 8
  %66 = call i32 %64(%struct.irq_bypass_producer* %65)
  br label %67

67:                                               ; preds = %61, %56
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
