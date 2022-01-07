; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rcutorture/formal/srcu-cbmc/src/extr_simple_sync_srcu.c_synchronize_srcu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rcutorture/formal/srcu-cbmc/src/extr_simple_sync_srcu.c_synchronize_srcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @synchronize_srcu(%struct.srcu_struct* %0) #0 {
  %2 = alloca %struct.srcu_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.srcu_struct* %0, %struct.srcu_struct** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = call i32 (...) @might_sleep()
  %6 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %7 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 1
  %10 = xor i32 1, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @try_check_zero(%struct.srcu_struct* %11, i32 %12, i32 1)
  %14 = call i32 @assume(i32 %13)
  %15 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %16 = call i32 @srcu_flip(%struct.srcu_struct* %15)
  %17 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = xor i32 %18, 1
  %20 = call i32 @try_check_zero(%struct.srcu_struct* %17, i32 %19, i32 1)
  %21 = call i32 @assume(i32 %20)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @assume(i32) #1

declare dso_local i32 @try_check_zero(%struct.srcu_struct*, i32, i32) #1

declare dso_local i32 @srcu_flip(%struct.srcu_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
