; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vcpu_block.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vcpu_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@halt_poll_ns = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_vcpu_block(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %8 = load i32, i32* @wait, align 4
  %9 = call i32 @DECLARE_SWAITQUEUE(i32 %8)
  store i32 0, i32* %5, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = call i32 @kvm_arch_vcpu_blocking(%struct.kvm_vcpu* %10)
  %12 = call i32 (...) @ktime_get()
  store i32 %12, i32* %4, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %1
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = call i32 @kvm_arch_no_poll(%struct.kvm_vcpu* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %65, label %21

21:                                               ; preds = %17
  %22 = call i32 (...) @ktime_get()
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ktime_add_ns(i32 %22, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %62, %21
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %34 = call i64 @kvm_vcpu_check_block(%struct.kvm_vcpu* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %43 = call i32 @vcpu_valid_wakeup(%struct.kvm_vcpu* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %36
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %36
  br label %82

52:                                               ; preds = %32
  %53 = call i32 (...) @ktime_get()
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52
  %55 = call i64 (...) @single_task_running()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @ktime_before(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i1 [ false, %54 ], [ %61, %57 ]
  br i1 %63, label %32, label %64

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %17, %1
  br label %66

66:                                               ; preds = %75, %65
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 1
  %69 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %70 = call i32 @prepare_to_swait_exclusive(i32* %68, i32* @wait, i32 %69)
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %72 = call i64 @kvm_vcpu_check_block(%struct.kvm_vcpu* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %77

75:                                               ; preds = %66
  store i32 1, i32* %5, align 4
  %76 = call i32 (...) @schedule()
  br label %66

77:                                               ; preds = %74
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 1
  %80 = call i32 @finish_swait(i32* %79, i32* @wait)
  %81 = call i32 (...) @ktime_get()
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %77, %51
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %84 = call i32 @kvm_arch_vcpu_unblocking(%struct.kvm_vcpu* %83)
  %85 = load i32, i32* %4, align 4
  %86 = call i64 @ktime_to_ns(i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = call i64 @ktime_to_ns(i32 %87)
  %89 = sub nsw i64 %86, %88
  store i64 %89, i64* %6, align 8
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %91 = call i32 @kvm_arch_no_poll(%struct.kvm_vcpu* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %143, label %93

93:                                               ; preds = %82
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %95 = call i32 @vcpu_valid_wakeup(%struct.kvm_vcpu* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %99 = call i32 @shrink_halt_poll_ns(%struct.kvm_vcpu* %98)
  br label %142

100:                                              ; preds = %93
  %101 = load i64, i64* @halt_poll_ns, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %138

103:                                              ; preds = %100
  %104 = load i64, i64* %6, align 8
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sle i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %137

110:                                              ; preds = %103
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %112 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @halt_poll_ns, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %121 = call i32 @shrink_halt_poll_ns(%struct.kvm_vcpu* %120)
  br label %136

122:                                              ; preds = %115, %110
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %124 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @halt_poll_ns, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* @halt_poll_ns, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %134 = call i32 @grow_halt_poll_ns(%struct.kvm_vcpu* %133)
  br label %135

135:                                              ; preds = %132, %128, %122
  br label %136

136:                                              ; preds = %135, %119
  br label %137

137:                                              ; preds = %136, %109
  br label %141

138:                                              ; preds = %100
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %138, %137
  br label %142

142:                                              ; preds = %141, %97
  br label %143

143:                                              ; preds = %142, %82
  %144 = load i64, i64* %6, align 8
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %147 = call i32 @vcpu_valid_wakeup(%struct.kvm_vcpu* %146)
  %148 = call i32 @trace_kvm_vcpu_wakeup(i64 %144, i32 %145, i32 %147)
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %150 = call i32 @kvm_arch_vcpu_block_finish(%struct.kvm_vcpu* %149)
  ret void
}

declare dso_local i32 @DECLARE_SWAITQUEUE(i32) #1

declare dso_local i32 @kvm_arch_vcpu_blocking(%struct.kvm_vcpu*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @kvm_arch_no_poll(%struct.kvm_vcpu*) #1

declare dso_local i32 @ktime_add_ns(i32, i64) #1

declare dso_local i64 @kvm_vcpu_check_block(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_valid_wakeup(%struct.kvm_vcpu*) #1

declare dso_local i64 @single_task_running(...) #1

declare dso_local i64 @ktime_before(i32, i32) #1

declare dso_local i32 @prepare_to_swait_exclusive(i32*, i32*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_swait(i32*, i32*) #1

declare dso_local i32 @kvm_arch_vcpu_unblocking(%struct.kvm_vcpu*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @shrink_halt_poll_ns(%struct.kvm_vcpu*) #1

declare dso_local i32 @grow_halt_poll_ns(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_vcpu_wakeup(i64, i32, i32) #1

declare dso_local i32 @kvm_arch_vcpu_block_finish(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
