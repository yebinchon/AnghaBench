; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_eventfd.c_kvm_assign_ioeventfd.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_eventfd.c_kvm_assign_ioeventfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_ioeventfd = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@KVM_IOEVENTFD_VALID_FLAG_MASK = common dso_local global i32 0, align 4
@KVM_IOEVENTFD_FLAG_DATAMATCH = common dso_local global i32 0, align 4
@KVM_MMIO_BUS = common dso_local global i32 0, align 4
@KVM_FAST_MMIO_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_ioeventfd*)* @kvm_assign_ioeventfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_assign_ioeventfd(%struct.kvm* %0, %struct.kvm_ioeventfd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_ioeventfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_ioeventfd* %1, %struct.kvm_ioeventfd** %5, align 8
  %8 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %9 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ioeventfd_bus_from_flags(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %16 [
    i32 0, label %15
    i32 1, label %15
    i32 2, label %15
    i32 4, label %15
    i32 8, label %15
  ]

15:                                               ; preds = %2, %2, %2, %2, %2
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %95

19:                                               ; preds = %15
  %20 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %29 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %95

35:                                               ; preds = %19
  %36 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @KVM_IOEVENTFD_VALID_FLAG_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %95

46:                                               ; preds = %35
  %47 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @KVM_IOEVENTFD_FLAG_DATAMATCH, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %95

61:                                               ; preds = %51, %46
  %62 = load %struct.kvm*, %struct.kvm** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %65 = call i32 @kvm_assign_ioeventfd_idx(%struct.kvm* %62, i32 %63, %struct.kvm_ioeventfd* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %93

69:                                               ; preds = %61
  %70 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %71 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @KVM_MMIO_BUS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load %struct.kvm*, %struct.kvm** %4, align 8
  %80 = load i32, i32* @KVM_FAST_MMIO_BUS, align 4
  %81 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %82 = call i32 @kvm_assign_ioeventfd_idx(%struct.kvm* %79, i32 %80, %struct.kvm_ioeventfd* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %88

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %74, %69
  store i32 0, i32* %3, align 4
  br label %95

88:                                               ; preds = %85
  %89 = load %struct.kvm*, %struct.kvm** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %92 = call i32 @kvm_deassign_ioeventfd_idx(%struct.kvm* %89, i32 %90, %struct.kvm_ioeventfd* %91)
  br label %93

93:                                               ; preds = %88, %68
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %87, %58, %43, %32, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @ioeventfd_bus_from_flags(i32) #1

declare dso_local i32 @kvm_assign_ioeventfd_idx(%struct.kvm*, i32, %struct.kvm_ioeventfd*) #1

declare dso_local i32 @kvm_deassign_ioeventfd_idx(%struct.kvm*, i32, %struct.kvm_ioeventfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
