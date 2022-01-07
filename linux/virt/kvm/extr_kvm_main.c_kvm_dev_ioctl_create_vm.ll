; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_dev_ioctl_create_vm.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_dev_ioctl_create_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.file = type opaque

@O_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kvm-vm\00", align 1
@kvm_vm_fops = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KVM_EVENT_CREATE_VM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @kvm_dev_ioctl_create_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_dev_ioctl_create_vm(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.file*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call %struct.kvm* @kvm_create_vm(i64 %7)
  store %struct.kvm* %8, %struct.kvm** %5, align 8
  %9 = load %struct.kvm*, %struct.kvm** %5, align 8
  %10 = call i64 @IS_ERR(%struct.kvm* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.kvm*, %struct.kvm** %5, align 8
  %14 = call i32 @PTR_ERR(%struct.kvm* %13)
  store i32 %14, i32* %2, align 4
  br label %62

15:                                               ; preds = %1
  %16 = load i32, i32* @O_CLOEXEC, align 4
  %17 = call i32 @get_unused_fd_flags(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %58

21:                                               ; preds = %15
  %22 = load %struct.kvm*, %struct.kvm** %5, align 8
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = call %struct.kvm* @anon_inode_getfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @kvm_vm_fops, %struct.kvm* %22, i32 %23)
  %25 = bitcast %struct.kvm* %24 to %struct.file*
  store %struct.file* %25, %struct.file** %6, align 8
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = bitcast %struct.file* %26 to %struct.kvm*
  %28 = call i64 @IS_ERR(%struct.kvm* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @put_unused_fd(i32 %31)
  %33 = load %struct.file*, %struct.file** %6, align 8
  %34 = bitcast %struct.file* %33 to %struct.kvm*
  %35 = call i32 @PTR_ERR(%struct.kvm* %34)
  store i32 %35, i32* %4, align 4
  br label %58

36:                                               ; preds = %21
  %37 = load %struct.kvm*, %struct.kvm** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @kvm_create_vm_debugfs(%struct.kvm* %37, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @put_unused_fd(i32 %42)
  %44 = load %struct.file*, %struct.file** %6, align 8
  %45 = bitcast %struct.file* %44 to %struct.kvm*
  %46 = call i32 @fput(%struct.kvm* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %36
  %50 = load i32, i32* @KVM_EVENT_CREATE_VM, align 4
  %51 = load %struct.kvm*, %struct.kvm** %5, align 8
  %52 = call i32 @kvm_uevent_notify_change(i32 %50, %struct.kvm* %51)
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.file*, %struct.file** %6, align 8
  %55 = bitcast %struct.file* %54 to %struct.kvm*
  %56 = call i32 @fd_install(i32 %53, %struct.kvm* %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %30, %20
  %59 = load %struct.kvm*, %struct.kvm** %5, align 8
  %60 = call i32 @kvm_put_kvm(%struct.kvm* %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %49, %41, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.kvm* @kvm_create_vm(i64) #1

declare dso_local i64 @IS_ERR(%struct.kvm*) #1

declare dso_local i32 @PTR_ERR(%struct.kvm*) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.kvm* @anon_inode_getfile(i8*, i32*, %struct.kvm*, i32) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i64 @kvm_create_vm_debugfs(%struct.kvm*, i32) #1

declare dso_local i32 @fput(%struct.kvm*) #1

declare dso_local i32 @kvm_uevent_notify_change(i32, %struct.kvm*) #1

declare dso_local i32 @fd_install(i32, %struct.kvm*) #1

declare dso_local i32 @kvm_put_kvm(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
