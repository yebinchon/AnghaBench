; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges-avl.c_double_rotate_with_right.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges-avl.c_double_rotate_with_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RavlNode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RavlNode* (%struct.RavlNode*)* @double_rotate_with_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RavlNode* @double_rotate_with_right(%struct.RavlNode* %0) #0 {
  %2 = alloca %struct.RavlNode*, align 8
  store %struct.RavlNode* %0, %struct.RavlNode** %2, align 8
  %3 = load %struct.RavlNode*, %struct.RavlNode** %2, align 8
  %4 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @single_rotate_with_left(i32 %5)
  %7 = load %struct.RavlNode*, %struct.RavlNode** %2, align 8
  %8 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.RavlNode*, %struct.RavlNode** %2, align 8
  %10 = call %struct.RavlNode* @single_rotate_with_right(%struct.RavlNode* %9)
  ret %struct.RavlNode* %10
}

declare dso_local i32 @single_rotate_with_left(i32) #1

declare dso_local %struct.RavlNode* @single_rotate_with_right(%struct.RavlNode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
