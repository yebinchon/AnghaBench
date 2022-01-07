; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_io_bus_unregister_dev.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_io_bus_unregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, i32* }
%struct.kvm_io_device = type { i32 }
%struct.kvm_io_bus = type { i32, %struct.kvm_io_bus*, %struct.kvm_io_device* }

@range = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"kvm: failed to shrink bus, removing it completely\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_io_bus_unregister_dev(%struct.kvm* %0, i32 %1, %struct.kvm_io_device* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_io_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_io_bus*, align 8
  %9 = alloca %struct.kvm_io_bus*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.kvm_io_device* %2, %struct.kvm_io_device** %6, align 8
  %10 = load %struct.kvm*, %struct.kvm** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.kvm_io_bus* @kvm_get_bus(%struct.kvm* %10, i32 %11)
  store %struct.kvm_io_bus* %12, %struct.kvm_io_bus** %9, align 8
  %13 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %9, align 8
  %14 = icmp ne %struct.kvm_io_bus* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %110

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %36, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %9, align 8
  %20 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %9, align 8
  %25 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %24, i32 0, i32 1
  %26 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %26, i64 %28
  %30 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %29, i32 0, i32 2
  %31 = load %struct.kvm_io_device*, %struct.kvm_io_device** %30, align 8
  %32 = load %struct.kvm_io_device*, %struct.kvm_io_device** %6, align 8
  %33 = icmp eq %struct.kvm_io_device* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %39

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %17

39:                                               ; preds = %34, %17
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %9, align 8
  %42 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %110

46:                                               ; preds = %39
  %47 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %9, align 8
  %48 = load i32, i32* @range, align 4
  %49 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %9, align 8
  %50 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = call i32 @struct_size(%struct.kvm_io_bus* %47, i32 %48, i32 %52)
  %54 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %55 = call %struct.kvm_io_bus* @kmalloc(i32 %53, i32 %54)
  store %struct.kvm_io_bus* %55, %struct.kvm_io_bus** %8, align 8
  %56 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %8, align 8
  %57 = icmp ne %struct.kvm_io_bus* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %46
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %95

60:                                               ; preds = %46
  %61 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %8, align 8
  %62 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %9, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = add i64 24, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memcpy(%struct.kvm_io_bus* %61, %struct.kvm_io_bus* %62, i32 %67)
  %69 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %8, align 8
  %70 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %8, align 8
  %74 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %73, i32 0, i32 1
  %75 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %75, i64 %77
  %79 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %9, align 8
  %80 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %79, i32 0, i32 1
  %81 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %81, i64 %83
  %85 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %84, i64 1
  %86 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %8, align 8
  %87 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memcpy(%struct.kvm_io_bus* %78, %struct.kvm_io_bus* %85, i32 %93)
  br label %95

95:                                               ; preds = %60, %58
  %96 = load %struct.kvm*, %struct.kvm** %4, align 8
  %97 = getelementptr inbounds %struct.kvm, %struct.kvm* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %8, align 8
  %104 = call i32 @rcu_assign_pointer(i32 %102, %struct.kvm_io_bus* %103)
  %105 = load %struct.kvm*, %struct.kvm** %4, align 8
  %106 = getelementptr inbounds %struct.kvm, %struct.kvm* %105, i32 0, i32 0
  %107 = call i32 @synchronize_srcu_expedited(i32* %106)
  %108 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %9, align 8
  %109 = call i32 @kfree(%struct.kvm_io_bus* %108)
  br label %110

110:                                              ; preds = %95, %45, %15
  ret void
}

declare dso_local %struct.kvm_io_bus* @kvm_get_bus(%struct.kvm*, i32) #1

declare dso_local %struct.kvm_io_bus* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.kvm_io_bus*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(%struct.kvm_io_bus*, %struct.kvm_io_bus*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.kvm_io_bus*) #1

declare dso_local i32 @synchronize_srcu_expedited(i32*) #1

declare dso_local i32 @kfree(%struct.kvm_io_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
