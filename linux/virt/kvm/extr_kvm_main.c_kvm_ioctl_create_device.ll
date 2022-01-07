; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_ioctl_create_device.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_ioctl_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device_ops = type { i32 (%struct.kvm_device*, i32)*, i32 (%struct.kvm_device.0*)*, i32, i32 (%struct.kvm_device.1*)* }
%struct.kvm_device = type opaque
%struct.kvm_device.0 = type opaque
%struct.kvm_device.1 = type opaque
%struct.kvm = type { i32, i32 }
%struct.kvm_create_device = type { i32, i32, i32 }
%struct.kvm_device.2 = type { i32, %struct.kvm*, %struct.kvm_device_ops* }

@KVM_CREATE_DEVICE_TEST = common dso_local global i32 0, align 4
@kvm_device_ops_table = common dso_local global %struct.kvm_device_ops** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kvm_device_fops = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_create_device*)* @kvm_ioctl_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_ioctl_create_device(%struct.kvm* %0, %struct.kvm_create_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_create_device*, align 8
  %6 = alloca %struct.kvm_device_ops*, align 8
  %7 = alloca %struct.kvm_device.2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_create_device* %1, %struct.kvm_create_device** %5, align 8
  store %struct.kvm_device_ops* null, %struct.kvm_device_ops** %6, align 8
  %11 = load %struct.kvm_create_device*, %struct.kvm_create_device** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_create_device, %struct.kvm_create_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @KVM_CREATE_DEVICE_TEST, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.kvm_create_device*, %struct.kvm_create_device** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_create_device, %struct.kvm_create_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kvm_device_ops**, %struct.kvm_device_ops*** @kvm_device_ops_table, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.kvm_device_ops** %19)
  %21 = icmp sge i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %136

25:                                               ; preds = %2
  %26 = load %struct.kvm_create_device*, %struct.kvm_create_device** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_create_device, %struct.kvm_create_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kvm_device_ops**, %struct.kvm_device_ops*** @kvm_device_ops_table, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.kvm_device_ops** %29)
  %31 = call i32 @array_index_nospec(i32 %28, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.kvm_device_ops**, %struct.kvm_device_ops*** @kvm_device_ops_table, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.kvm_device_ops*, %struct.kvm_device_ops** %32, i64 %34
  %36 = load %struct.kvm_device_ops*, %struct.kvm_device_ops** %35, align 8
  store %struct.kvm_device_ops* %36, %struct.kvm_device_ops** %6, align 8
  %37 = load %struct.kvm_device_ops*, %struct.kvm_device_ops** %6, align 8
  %38 = icmp eq %struct.kvm_device_ops* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %136

42:                                               ; preds = %25
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %136

46:                                               ; preds = %42
  %47 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %48 = call %struct.kvm_device.2* @kzalloc(i32 24, i32 %47)
  store %struct.kvm_device.2* %48, %struct.kvm_device.2** %7, align 8
  %49 = load %struct.kvm_device.2*, %struct.kvm_device.2** %7, align 8
  %50 = icmp ne %struct.kvm_device.2* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %136

54:                                               ; preds = %46
  %55 = load %struct.kvm_device_ops*, %struct.kvm_device_ops** %6, align 8
  %56 = load %struct.kvm_device.2*, %struct.kvm_device.2** %7, align 8
  %57 = getelementptr inbounds %struct.kvm_device.2, %struct.kvm_device.2* %56, i32 0, i32 2
  store %struct.kvm_device_ops* %55, %struct.kvm_device_ops** %57, align 8
  %58 = load %struct.kvm*, %struct.kvm** %4, align 8
  %59 = load %struct.kvm_device.2*, %struct.kvm_device.2** %7, align 8
  %60 = getelementptr inbounds %struct.kvm_device.2, %struct.kvm_device.2* %59, i32 0, i32 1
  store %struct.kvm* %58, %struct.kvm** %60, align 8
  %61 = load %struct.kvm*, %struct.kvm** %4, align 8
  %62 = getelementptr inbounds %struct.kvm, %struct.kvm* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.kvm_device_ops*, %struct.kvm_device_ops** %6, align 8
  %65 = getelementptr inbounds %struct.kvm_device_ops, %struct.kvm_device_ops* %64, i32 0, i32 0
  %66 = load i32 (%struct.kvm_device*, i32)*, i32 (%struct.kvm_device*, i32)** %65, align 8
  %67 = load %struct.kvm_device.2*, %struct.kvm_device.2** %7, align 8
  %68 = bitcast %struct.kvm_device.2* %67 to %struct.kvm_device*
  %69 = load i32, i32* %9, align 4
  %70 = call i32 %66(%struct.kvm_device* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %54
  %74 = load %struct.kvm*, %struct.kvm** %4, align 8
  %75 = getelementptr inbounds %struct.kvm, %struct.kvm* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.kvm_device.2*, %struct.kvm_device.2** %7, align 8
  %78 = call i32 @kfree(%struct.kvm_device.2* %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %136

80:                                               ; preds = %54
  %81 = load %struct.kvm_device.2*, %struct.kvm_device.2** %7, align 8
  %82 = getelementptr inbounds %struct.kvm_device.2, %struct.kvm_device.2* %81, i32 0, i32 0
  %83 = load %struct.kvm*, %struct.kvm** %4, align 8
  %84 = getelementptr inbounds %struct.kvm, %struct.kvm* %83, i32 0, i32 1
  %85 = call i32 @list_add(i32* %82, i32* %84)
  %86 = load %struct.kvm*, %struct.kvm** %4, align 8
  %87 = getelementptr inbounds %struct.kvm, %struct.kvm* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.kvm_device_ops*, %struct.kvm_device_ops** %6, align 8
  %90 = getelementptr inbounds %struct.kvm_device_ops, %struct.kvm_device_ops* %89, i32 0, i32 3
  %91 = load i32 (%struct.kvm_device.1*)*, i32 (%struct.kvm_device.1*)** %90, align 8
  %92 = icmp ne i32 (%struct.kvm_device.1*)* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %80
  %94 = load %struct.kvm_device_ops*, %struct.kvm_device_ops** %6, align 8
  %95 = getelementptr inbounds %struct.kvm_device_ops, %struct.kvm_device_ops* %94, i32 0, i32 3
  %96 = load i32 (%struct.kvm_device.1*)*, i32 (%struct.kvm_device.1*)** %95, align 8
  %97 = load %struct.kvm_device.2*, %struct.kvm_device.2** %7, align 8
  %98 = bitcast %struct.kvm_device.2* %97 to %struct.kvm_device.1*
  %99 = call i32 %96(%struct.kvm_device.1* %98)
  br label %100

100:                                              ; preds = %93, %80
  %101 = load %struct.kvm*, %struct.kvm** %4, align 8
  %102 = call i32 @kvm_get_kvm(%struct.kvm* %101)
  %103 = load %struct.kvm_device_ops*, %struct.kvm_device_ops** %6, align 8
  %104 = getelementptr inbounds %struct.kvm_device_ops, %struct.kvm_device_ops* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.kvm_device.2*, %struct.kvm_device.2** %7, align 8
  %107 = load i32, i32* @O_RDWR, align 4
  %108 = load i32, i32* @O_CLOEXEC, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @anon_inode_getfd(i32 %105, i32* @kvm_device_fops, %struct.kvm_device.2* %106, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %100
  %114 = load %struct.kvm*, %struct.kvm** %4, align 8
  %115 = call i32 @kvm_put_kvm(%struct.kvm* %114)
  %116 = load %struct.kvm*, %struct.kvm** %4, align 8
  %117 = getelementptr inbounds %struct.kvm, %struct.kvm* %116, i32 0, i32 0
  %118 = call i32 @mutex_lock(i32* %117)
  %119 = load %struct.kvm_device.2*, %struct.kvm_device.2** %7, align 8
  %120 = getelementptr inbounds %struct.kvm_device.2, %struct.kvm_device.2* %119, i32 0, i32 0
  %121 = call i32 @list_del(i32* %120)
  %122 = load %struct.kvm*, %struct.kvm** %4, align 8
  %123 = getelementptr inbounds %struct.kvm, %struct.kvm* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load %struct.kvm_device_ops*, %struct.kvm_device_ops** %6, align 8
  %126 = getelementptr inbounds %struct.kvm_device_ops, %struct.kvm_device_ops* %125, i32 0, i32 1
  %127 = load i32 (%struct.kvm_device.0*)*, i32 (%struct.kvm_device.0*)** %126, align 8
  %128 = load %struct.kvm_device.2*, %struct.kvm_device.2** %7, align 8
  %129 = bitcast %struct.kvm_device.2* %128 to %struct.kvm_device.0*
  %130 = call i32 %127(%struct.kvm_device.0* %129)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %3, align 4
  br label %136

132:                                              ; preds = %100
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.kvm_create_device*, %struct.kvm_create_device** %5, align 8
  %135 = getelementptr inbounds %struct.kvm_create_device, %struct.kvm_create_device* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %132, %113, %73, %51, %45, %39, %22
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @ARRAY_SIZE(%struct.kvm_device_ops**) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

declare dso_local %struct.kvm_device.2* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.kvm_device.2*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kvm_get_kvm(%struct.kvm*) #1

declare dso_local i32 @anon_inode_getfd(i32, i32*, %struct.kvm_device.2*, i32) #1

declare dso_local i32 @kvm_put_kvm(%struct.kvm*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
