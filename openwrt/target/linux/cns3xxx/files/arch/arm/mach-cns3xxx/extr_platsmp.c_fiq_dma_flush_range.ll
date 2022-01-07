; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/arch/arm/mach-cns3xxx/extr_platsmp.c_fiq_dma_flush_range.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/arch/arm/mach-cns3xxx/extr_platsmp.c_fiq_dma_flush_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fiq_req = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@fiq_data = common dso_local global i32 0, align 4
@CNS3XXX_FLUSH_RANGE = common dso_local global i64 0, align 8
@FIQ_GENERATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiq_dma_flush_range(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fiq_req*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @raw_local_irq_save(i64 %7)
  %9 = call i32 @cpu_online(i32 1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @raw_local_irq_restore(i64 %12)
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @v6_dma_flush_range(i8* %14, i8* %15)
  br label %49

17:                                               ; preds = %2
  %18 = call %struct.fiq_req* @this_cpu_ptr(i32* @fiq_data)
  store %struct.fiq_req* %18, %struct.fiq_req** %6, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.fiq_req*, %struct.fiq_req** %6, align 8
  %21 = getelementptr inbounds %struct.fiq_req, %struct.fiq_req* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.fiq_req*, %struct.fiq_req** %6, align 8
  %25 = getelementptr inbounds %struct.fiq_req, %struct.fiq_req* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load i64, i64* @CNS3XXX_FLUSH_RANGE, align 8
  %28 = load %struct.fiq_req*, %struct.fiq_req** %6, align 8
  %29 = getelementptr inbounds %struct.fiq_req, %struct.fiq_req* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = call i32 (...) @smp_mb()
  %31 = load i32, i32* @FIQ_GENERATE, align 4
  %32 = load %struct.fiq_req*, %struct.fiq_req** %6, align 8
  %33 = getelementptr inbounds %struct.fiq_req, %struct.fiq_req* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @writel_relaxed(i32 %31, i32 %34)
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @v6_dma_flush_range(i8* %36, i8* %37)
  br label %39

39:                                               ; preds = %44, %17
  %40 = load %struct.fiq_req*, %struct.fiq_req** %6, align 8
  %41 = getelementptr inbounds %struct.fiq_req, %struct.fiq_req* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (...) @barrier()
  br label %39

46:                                               ; preds = %39
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @raw_local_irq_restore(i64 %47)
  br label %49

49:                                               ; preds = %46, %11
  ret void
}

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

declare dso_local i32 @v6_dma_flush_range(i8*, i8*) #1

declare dso_local %struct.fiq_req* @this_cpu_ptr(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
