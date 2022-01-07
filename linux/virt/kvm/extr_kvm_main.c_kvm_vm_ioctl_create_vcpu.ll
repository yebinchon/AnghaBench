; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vm_ioctl_create_vcpu.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vm_ioctl_create_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i64, i32, i32, %struct.kvm_vcpu** }
%struct.kvm_vcpu = type { i32, i32 }

@KVM_MAX_VCPU_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KVM_MAX_VCPUS = common dso_local global i64 0, align 8
@kvm_preempt_ops = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i32)* @kvm_vm_ioctl_create_vcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vm_ioctl_create_vcpu(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @KVM_MAX_VCPU_ID, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %129

14:                                               ; preds = %2
  %15 = load %struct.kvm*, %struct.kvm** %4, align 8
  %16 = getelementptr inbounds %struct.kvm, %struct.kvm* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.kvm*, %struct.kvm** %4, align 8
  %19 = getelementptr inbounds %struct.kvm, %struct.kvm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KVM_MAX_VCPUS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.kvm*, %struct.kvm** %4, align 8
  %25 = getelementptr inbounds %struct.kvm, %struct.kvm* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %129

29:                                               ; preds = %14
  %30 = load %struct.kvm*, %struct.kvm** %4, align 8
  %31 = getelementptr inbounds %struct.kvm, %struct.kvm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.kvm*, %struct.kvm** %4, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.kvm*, %struct.kvm** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.kvm_vcpu* @kvm_arch_vcpu_create(%struct.kvm* %37, i32 %38)
  store %struct.kvm_vcpu* %39, %struct.kvm_vcpu** %7, align 8
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %41 = call i64 @IS_ERR(%struct.kvm_vcpu* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %45 = call i32 @PTR_ERR(%struct.kvm_vcpu* %44)
  store i32 %45, i32* %6, align 4
  br label %117

46:                                               ; preds = %29
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 1
  %49 = call i32 @preempt_notifier_init(i32* %48, i32* @kvm_preempt_ops)
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %51 = call i32 @kvm_arch_vcpu_setup(%struct.kvm_vcpu* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %114

55:                                               ; preds = %46
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %57 = call i32 @kvm_create_vcpu_debugfs(%struct.kvm_vcpu* %56)
  %58 = load %struct.kvm*, %struct.kvm** %4, align 8
  %59 = getelementptr inbounds %struct.kvm, %struct.kvm* %58, i32 0, i32 1
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.kvm*, %struct.kvm** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @kvm_get_vcpu_by_id(%struct.kvm* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @EEXIST, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %106

68:                                               ; preds = %55
  %69 = load %struct.kvm*, %struct.kvm** %4, align 8
  %70 = getelementptr inbounds %struct.kvm, %struct.kvm* %69, i32 0, i32 3
  %71 = load %struct.kvm_vcpu**, %struct.kvm_vcpu*** %70, align 8
  %72 = load %struct.kvm*, %struct.kvm** %4, align 8
  %73 = getelementptr inbounds %struct.kvm, %struct.kvm* %72, i32 0, i32 2
  %74 = call i64 @atomic_read(i32* %73)
  %75 = getelementptr inbounds %struct.kvm_vcpu*, %struct.kvm_vcpu** %71, i64 %74
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %75, align 8
  %77 = call i32 @BUG_ON(%struct.kvm_vcpu* %76)
  %78 = load %struct.kvm*, %struct.kvm** %4, align 8
  %79 = call i32 @kvm_get_kvm(%struct.kvm* %78)
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %81 = call i32 @create_vcpu_fd(%struct.kvm_vcpu* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %68
  %85 = load %struct.kvm*, %struct.kvm** %4, align 8
  %86 = call i32 @kvm_put_kvm(%struct.kvm* %85)
  br label %106

87:                                               ; preds = %68
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %89 = load %struct.kvm*, %struct.kvm** %4, align 8
  %90 = getelementptr inbounds %struct.kvm, %struct.kvm* %89, i32 0, i32 3
  %91 = load %struct.kvm_vcpu**, %struct.kvm_vcpu*** %90, align 8
  %92 = load %struct.kvm*, %struct.kvm** %4, align 8
  %93 = getelementptr inbounds %struct.kvm, %struct.kvm* %92, i32 0, i32 2
  %94 = call i64 @atomic_read(i32* %93)
  %95 = getelementptr inbounds %struct.kvm_vcpu*, %struct.kvm_vcpu** %91, i64 %94
  store %struct.kvm_vcpu* %88, %struct.kvm_vcpu** %95, align 8
  %96 = call i32 (...) @smp_wmb()
  %97 = load %struct.kvm*, %struct.kvm** %4, align 8
  %98 = getelementptr inbounds %struct.kvm, %struct.kvm* %97, i32 0, i32 2
  %99 = call i32 @atomic_inc(i32* %98)
  %100 = load %struct.kvm*, %struct.kvm** %4, align 8
  %101 = getelementptr inbounds %struct.kvm, %struct.kvm* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %104 = call i32 @kvm_arch_vcpu_postcreate(%struct.kvm_vcpu* %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %129

106:                                              ; preds = %84, %65
  %107 = load %struct.kvm*, %struct.kvm** %4, align 8
  %108 = getelementptr inbounds %struct.kvm, %struct.kvm* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %111 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @debugfs_remove_recursive(i32 %112)
  br label %114

114:                                              ; preds = %106, %54
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %116 = call i32 @kvm_arch_vcpu_destroy(%struct.kvm_vcpu* %115)
  br label %117

117:                                              ; preds = %114, %43
  %118 = load %struct.kvm*, %struct.kvm** %4, align 8
  %119 = getelementptr inbounds %struct.kvm, %struct.kvm* %118, i32 0, i32 1
  %120 = call i32 @mutex_lock(i32* %119)
  %121 = load %struct.kvm*, %struct.kvm** %4, align 8
  %122 = getelementptr inbounds %struct.kvm, %struct.kvm* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, -1
  store i64 %124, i64* %122, align 8
  %125 = load %struct.kvm*, %struct.kvm** %4, align 8
  %126 = getelementptr inbounds %struct.kvm, %struct.kvm* %125, i32 0, i32 1
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %117, %87, %23, %11
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.kvm_vcpu* @kvm_arch_vcpu_create(%struct.kvm*, i32) #1

declare dso_local i64 @IS_ERR(%struct.kvm_vcpu*) #1

declare dso_local i32 @PTR_ERR(%struct.kvm_vcpu*) #1

declare dso_local i32 @preempt_notifier_init(i32*, i32*) #1

declare dso_local i32 @kvm_arch_vcpu_setup(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_create_vcpu_debugfs(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_get_vcpu_by_id(%struct.kvm*, i32) #1

declare dso_local i32 @BUG_ON(%struct.kvm_vcpu*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @kvm_get_kvm(%struct.kvm*) #1

declare dso_local i32 @create_vcpu_fd(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_put_kvm(%struct.kvm*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kvm_arch_vcpu_postcreate(%struct.kvm_vcpu*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @kvm_arch_vcpu_destroy(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
