; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_dev_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_dev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@KVM_API_VERSION = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @kvm_dev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_dev_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* @EINVAL, align 8
  %10 = sub nsw i64 0, %9
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %33 [
    i32 132, label %12
    i32 133, label %18
    i32 134, label %21
    i32 131, label %24
    i32 129, label %30
    i32 128, label %30
    i32 130, label %30
  ]

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %39

16:                                               ; preds = %12
  %17 = load i64, i64* @KVM_API_VERSION, align 8
  store i64 %17, i64* %8, align 8
  br label %38

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @kvm_dev_ioctl_create_vm(i64 %19)
  store i64 %20, i64* %8, align 8
  br label %38

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @kvm_vm_ioctl_check_extension_generic(i32* null, i64 %22)
  store i64 %23, i64* %8, align 8
  br label %38

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %39

28:                                               ; preds = %24
  %29 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %29, i64* %8, align 8
  br label %38

30:                                               ; preds = %3, %3, %3
  %31 = load i64, i64* @EOPNOTSUPP, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %8, align 8
  br label %38

33:                                               ; preds = %3
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @kvm_arch_dev_ioctl(%struct.file* %34, i32 %35, i64 %36)
  store i64 %37, i64* %4, align 8
  br label %41

38:                                               ; preds = %30, %28, %21, %18, %16
  br label %39

39:                                               ; preds = %38, %27, %15
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %39, %33
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i64 @kvm_dev_ioctl_create_vm(i64) #1

declare dso_local i64 @kvm_vm_ioctl_check_extension_generic(i32*, i64) #1

declare dso_local i64 @kvm_arch_dev_ioctl(%struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
