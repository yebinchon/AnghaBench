; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_eventfd.c_kvm_assign_ioeventfd_idx.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_eventfd.c_kvm_assign_ioeventfd_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, i32 }
%struct.kvm_ioeventfd = type { i32, i32, i32, i32, i32 }
%struct.eventfd_ctx = type { i32 }
%struct._ioeventfd = type { i32, i32, i32, i32, i32, i32, i32, %struct.eventfd_ctx* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KVM_IOEVENTFD_FLAG_DATAMATCH = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ioeventfd_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i32, %struct.kvm_ioeventfd*)* @kvm_assign_ioeventfd_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_assign_ioeventfd_idx(%struct.kvm* %0, i32 %1, %struct.kvm_ioeventfd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_ioeventfd*, align 8
  %8 = alloca %struct.eventfd_ctx*, align 8
  %9 = alloca %struct._ioeventfd*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kvm_ioeventfd* %2, %struct.kvm_ioeventfd** %7, align 8
  %11 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %7, align 8
  %12 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.eventfd_ctx* @eventfd_ctx_fdget(i32 %13)
  store %struct.eventfd_ctx* %14, %struct.eventfd_ctx** %8, align 8
  %15 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %16 = call i64 @IS_ERR(%struct.eventfd_ctx* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.eventfd_ctx* %19)
  store i32 %20, i32* %4, align 4
  br label %118

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %23 = call %struct._ioeventfd* @kzalloc(i32 40, i32 %22)
  store %struct._ioeventfd* %23, %struct._ioeventfd** %9, align 8
  %24 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %25 = icmp ne %struct._ioeventfd* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %112

29:                                               ; preds = %21
  %30 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %31 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %30, i32 0, i32 2
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %7, align 8
  %34 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %37 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %40 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %7, align 8
  %42 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %45 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %47 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %48 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %47, i32 0, i32 7
  store %struct.eventfd_ctx* %46, %struct.eventfd_ctx** %48, align 8
  %49 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %7, align 8
  %50 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @KVM_IOEVENTFD_FLAG_DATAMATCH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %29
  %56 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %7, align 8
  %57 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %60 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  br label %64

61:                                               ; preds = %29
  %62 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %63 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.kvm*, %struct.kvm** %5, align 8
  %66 = getelementptr inbounds %struct.kvm, %struct.kvm* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load %struct.kvm*, %struct.kvm** %5, align 8
  %69 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %70 = call i64 @ioeventfd_check_collision(%struct.kvm* %68, %struct._ioeventfd* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EEXIST, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %108

75:                                               ; preds = %64
  %76 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %77 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %76, i32 0, i32 3
  %78 = call i32 @kvm_iodevice_init(i32* %77, i32* @ioeventfd_ops)
  %79 = load %struct.kvm*, %struct.kvm** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %82 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %85 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %88 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %87, i32 0, i32 3
  %89 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %79, i32 %80, i32 %83, i32 %86, i32* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  br label %108

93:                                               ; preds = %75
  %94 = load %struct.kvm*, %struct.kvm** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call %struct.TYPE_2__* @kvm_get_bus(%struct.kvm* %94, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %101 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %100, i32 0, i32 2
  %102 = load %struct.kvm*, %struct.kvm** %5, align 8
  %103 = getelementptr inbounds %struct.kvm, %struct.kvm* %102, i32 0, i32 1
  %104 = call i32 @list_add_tail(i32* %101, i32* %103)
  %105 = load %struct.kvm*, %struct.kvm** %5, align 8
  %106 = getelementptr inbounds %struct.kvm, %struct.kvm* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  store i32 0, i32* %4, align 4
  br label %118

108:                                              ; preds = %92, %72
  %109 = load %struct.kvm*, %struct.kvm** %5, align 8
  %110 = getelementptr inbounds %struct.kvm, %struct.kvm* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  br label %112

112:                                              ; preds = %108, %26
  %113 = load %struct._ioeventfd*, %struct._ioeventfd** %9, align 8
  %114 = call i32 @kfree(%struct._ioeventfd* %113)
  %115 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %116 = call i32 @eventfd_ctx_put(%struct.eventfd_ctx* %115)
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %112, %93, %18
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.eventfd_ctx* @eventfd_ctx_fdget(i32) #1

declare dso_local i64 @IS_ERR(%struct.eventfd_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.eventfd_ctx*) #1

declare dso_local %struct._ioeventfd* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ioeventfd_check_collision(%struct.kvm*, %struct._ioeventfd*) #1

declare dso_local i32 @kvm_iodevice_init(i32*, i32*) #1

declare dso_local i32 @kvm_io_bus_register_dev(%struct.kvm*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @kvm_get_bus(%struct.kvm*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct._ioeventfd*) #1

declare dso_local i32 @eventfd_ctx_put(%struct.eventfd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
