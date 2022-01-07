; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_kick_many_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_kick_many_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@cpu_online_mask = common dso_local global %struct.cpumask* null, align 8
@ack_flush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpumask*, i32)* @kvm_kick_many_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_kick_many_cpus(%struct.cpumask* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca i32, align 4
  store %struct.cpumask* %0, %struct.cpumask** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %7 = icmp ne %struct.cpumask* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  store %struct.cpumask* %13, %struct.cpumask** %4, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %16 = call i64 @cpumask_empty(%struct.cpumask* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %24

19:                                               ; preds = %14
  %20 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %21 = load i32, i32* @ack_flush, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @smp_call_function_many(%struct.cpumask* %20, i32 %21, i32* null, i32 %22)
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @cpumask_empty(%struct.cpumask*) #1

declare dso_local i32 @smp_call_function_many(%struct.cpumask*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
