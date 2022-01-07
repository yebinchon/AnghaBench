; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_scan_its_table.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_scan_its_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kvm* }
%struct.kvm = type { i32 }

@ESZ_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*, i64, i32, i32, i32, i32 (%struct.vgic_its*, i32, i8*, i8*)*, i8*)* @scan_its_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_its_table(%struct.vgic_its* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 (%struct.vgic_its*, i32, i8*, i8*)* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vgic_its*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32 (%struct.vgic_its*, i32, i8*, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.kvm*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.vgic_its* %0, %struct.vgic_its** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 (%struct.vgic_its*, i32, i8*, i8*)* %5, i32 (%struct.vgic_its*, i32, i8*, i8*)** %14, align 8
  store i8* %6, i8** %15, align 8
  %26 = load %struct.vgic_its*, %struct.vgic_its** %9, align 8
  %27 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.kvm*, %struct.kvm** %29, align 8
  store %struct.kvm* %30, %struct.kvm** %16, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %17, align 8
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %18, align 4
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* %19, align 8
  %35 = load i32, i32* @ESZ_MAX, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %20, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %21, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @memset(i8* %38, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %63, %7
  %42 = load i64, i64* %17, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %41
  %45 = load %struct.kvm*, %struct.kvm** %16, align 8
  %46 = load i64, i64* %19, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @kvm_read_guest_lock(%struct.kvm* %45, i64 %46, i8* %38, i32 %47)
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* %22, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %22, align 4
  store i32 %52, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %78

53:                                               ; preds = %44
  %54 = load i32 (%struct.vgic_its*, i32, i8*, i8*)*, i32 (%struct.vgic_its*, i32, i8*, i8*)** %14, align 8
  %55 = load %struct.vgic_its*, %struct.vgic_its** %9, align 8
  %56 = load i32, i32* %18, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = call i32 %54(%struct.vgic_its* %55, i32 %56, i8* %38, i8* %57)
  store i32 %58, i32* %23, align 4
  %59 = load i32, i32* %23, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %23, align 4
  store i32 %62, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %78

63:                                               ; preds = %53
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* %12, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %24, align 8
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %18, align 4
  %71 = load i64, i64* %24, align 8
  %72 = load i64, i64* %19, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %19, align 8
  %74 = load i64, i64* %24, align 8
  %75 = load i64, i64* %17, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %17, align 8
  br label %41

77:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %78

78:                                               ; preds = %77, %61, %51
  %79 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @kvm_read_guest_lock(%struct.kvm*, i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
