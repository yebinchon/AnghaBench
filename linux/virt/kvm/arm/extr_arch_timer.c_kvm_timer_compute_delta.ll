; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_compute_delta.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_compute_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.arch_timer_context = type { i64, i64 }

@timecounter = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.arch_timer_context*)* @kvm_timer_compute_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_timer_compute_delta(%struct.arch_timer_context* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.arch_timer_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.arch_timer_context* %0, %struct.arch_timer_context** %3, align 8
  %7 = load %struct.arch_timer_context*, %struct.arch_timer_context** %3, align 8
  %8 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = call i64 (...) @kvm_phys_timer_read()
  %11 = load %struct.arch_timer_context*, %struct.arch_timer_context** %3, align 8
  %12 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timecounter, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timecounter, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timecounter, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i64 @cyclecounter_cyc2ns(i32 %21, i64 %24, i32 %27, i32* %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %2, align 8
  br label %33

32:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %33

33:                                               ; preds = %32, %18
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i64 @kvm_phys_timer_read(...) #1

declare dso_local i64 @cyclecounter_cyc2ns(i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
