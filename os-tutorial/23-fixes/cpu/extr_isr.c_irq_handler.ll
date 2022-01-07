; ModuleID = '/home/carl/AnghaBench/os-tutorial/23-fixes/cpu/extr_isr.c_irq_handler.c'
source_filename = "/home/carl/AnghaBench/os-tutorial/23-fixes/cpu/extr_isr.c_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@interrupt_handlers = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_handler(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32 (%struct.TYPE_4__*)*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 40
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @port_byte_out(i32 160, i32 32)
  br label %10

10:                                               ; preds = %8, %1
  %11 = call i32 @port_byte_out(i32 32, i32 32)
  %12 = load i64*, i64** @interrupt_handlers, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %12, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %10
  %21 = load i64*, i64** @interrupt_handlers, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %21, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32 (%struct.TYPE_4__*)*
  store i32 (%struct.TYPE_4__*)* %28, i32 (%struct.TYPE_4__*)** %3, align 8
  %29 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %3, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = call i32 %29(%struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %20, %10
  ret void
}

declare dso_local i32 @port_byte_out(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
