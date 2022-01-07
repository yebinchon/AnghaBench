; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmio.c_io_mem_abort.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmio.c_io_mem_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.kvm_run = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"load/store instruction decoding not implemented\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@KVM_TRACE_MMIO_WRITE = common dso_local global i32 0, align 4
@KVM_MMIO_BUS = common dso_local global i32 0, align 4
@KVM_TRACE_MMIO_READ_UNSATISFIED = common dso_local global i32 0, align 4
@KVM_EXIT_MMIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_mem_abort(%struct.kvm_vcpu* %0, %struct.kvm_run* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_run*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32], align 16
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %15 = call i64 @kvm_vcpu_dabt_isvalid(%struct.kvm_vcpu* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %19 = call i32 @decode_hsr(%struct.kvm_vcpu* %18, i32* %11, i32* %12)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %126

24:                                               ; preds = %17
  br label %29

25:                                               ; preds = %3
  %26 = call i32 @kvm_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %126

29:                                               ; preds = %24
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %29
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @vcpu_get_reg(%struct.kvm_vcpu* %39, i64 %40)
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @vcpu_data_guest_to_host(%struct.kvm_vcpu* %38, i32 %41, i32 %42)
  store i64 %43, i64* %8, align 8
  %44 = load i32, i32* @KVM_TRACE_MMIO_WRITE, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @trace_kvm_mmio(i32 %44, i32 %45, i32 %46, i64* %8)
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %49 = load i32, i32* %12, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @kvm_mmio_write_buf(i32* %48, i32 %49, i64 %50)
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %53 = load i32, i32* @KVM_MMIO_BUS, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %12, align 4
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %57 = call i32 @kvm_io_bus_write(%struct.kvm_vcpu* %52, i32 %53, i32 %54, i32 %55, i32* %56)
  store i32 %57, i32* %10, align 4
  br label %69

58:                                               ; preds = %29
  %59 = load i32, i32* @KVM_TRACE_MMIO_READ_UNSATISFIED, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @trace_kvm_mmio(i32 %59, i32 %60, i32 %61, i64* null)
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %64 = load i32, i32* @KVM_MMIO_BUS, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %12, align 4
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %68 = call i32 @kvm_io_bus_read(%struct.kvm_vcpu* %63, i32 %64, i32 %65, i32 %66, i32* %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %58, %37
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %72 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %76 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %80 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %69
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %86
  %90 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %91 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @memcpy(i32 %93, i32* %94, i32 %95)
  br label %97

97:                                               ; preds = %89, %86
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %104 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %105 = call i32 @kvm_handle_mmio_return(%struct.kvm_vcpu* %103, %struct.kvm_run* %104)
  store i32 1, i32* %4, align 4
  br label %126

106:                                              ; preds = %69
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %111 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @memcpy(i32 %113, i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %109, %106
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %119 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* @KVM_EXIT_MMIO, align 4
  %124 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %125 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %117, %97, %25, %22
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i64 @kvm_vcpu_dabt_isvalid(%struct.kvm_vcpu*) #1

declare dso_local i32 @decode_hsr(%struct.kvm_vcpu*, i32*, i32*) #1

declare dso_local i32 @kvm_err(i8*) #1

declare dso_local i64 @vcpu_data_guest_to_host(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @vcpu_get_reg(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @trace_kvm_mmio(i32, i32, i32, i64*) #1

declare dso_local i32 @kvm_mmio_write_buf(i32*, i32, i64) #1

declare dso_local i32 @kvm_io_bus_write(%struct.kvm_vcpu*, i32, i32, i32, i32*) #1

declare dso_local i32 @kvm_io_bus_read(%struct.kvm_vcpu*, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @kvm_handle_mmio_return(%struct.kvm_vcpu*, %struct.kvm_run*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
