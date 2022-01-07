; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c___kvm_io_bus_read.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c___kvm_io_bus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_io_bus = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_io_range = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_io_bus*, %struct.kvm_io_range*, i8*)* @__kvm_io_bus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kvm_io_bus_read(%struct.kvm_vcpu* %0, %struct.kvm_io_bus* %1, %struct.kvm_io_range* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_io_bus*, align 8
  %8 = alloca %struct.kvm_io_range*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_io_bus* %1, %struct.kvm_io_bus** %7, align 8
  store %struct.kvm_io_range* %2, %struct.kvm_io_range** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %7, align 8
  %12 = load %struct.kvm_io_range*, %struct.kvm_io_range** %8, align 8
  %13 = getelementptr inbounds %struct.kvm_io_range, %struct.kvm_io_range* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kvm_io_range*, %struct.kvm_io_range** %8, align 8
  %16 = getelementptr inbounds %struct.kvm_io_range, %struct.kvm_io_range* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @kvm_io_bus_get_first_dev(%struct.kvm_io_bus* %11, i32 %14, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %70

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %64, %24
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %7, align 8
  %28 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.kvm_io_range*, %struct.kvm_io_range** %8, align 8
  %33 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %7, align 8
  %34 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = call i64 @kvm_io_bus_cmp(%struct.kvm_io_range* %32, %struct.TYPE_2__* %38)
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %31, %25
  %42 = phi i1 [ false, %25 ], [ %40, %31 ]
  br i1 %42, label %43, label %67

43:                                               ; preds = %41
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %45 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %7, align 8
  %46 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.kvm_io_range*, %struct.kvm_io_range** %8, align 8
  %54 = getelementptr inbounds %struct.kvm_io_range, %struct.kvm_io_range* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.kvm_io_range*, %struct.kvm_io_range** %8, align 8
  %57 = getelementptr inbounds %struct.kvm_io_range, %struct.kvm_io_range* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @kvm_iodevice_read(%struct.kvm_vcpu* %44, i32 %52, i32 %55, i32 %58, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %70

64:                                               ; preds = %43
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %25

67:                                               ; preds = %41
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %62, %21
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @kvm_io_bus_get_first_dev(%struct.kvm_io_bus*, i32, i32) #1

declare dso_local i64 @kvm_io_bus_cmp(%struct.kvm_io_range*, %struct.TYPE_2__*) #1

declare dso_local i32 @kvm_iodevice_read(%struct.kvm_vcpu*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
