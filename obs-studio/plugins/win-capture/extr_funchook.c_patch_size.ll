; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_patch_size.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_patch_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_hook = type { i64 }

@JMP_64_SIZE = common dso_local global i64 0, align 8
@JMP_32_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.func_hook*)* @patch_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @patch_size(%struct.func_hook* %0) #0 {
  %2 = alloca %struct.func_hook*, align 8
  store %struct.func_hook* %0, %struct.func_hook** %2, align 8
  %3 = load %struct.func_hook*, %struct.func_hook** %2, align 8
  %4 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* @JMP_64_SIZE, align 8
  br label %11

9:                                                ; preds = %1
  %10 = load i64, i64* @JMP_32_SIZE, align 8
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i64 [ %8, %7 ], [ %10, %9 ]
  ret i64 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
