; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_r_bin_mdmp_get_perm.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_r_bin_mdmp_get_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_mdmp_obj = type { i32 }
%struct.minidump_memory_info = type { i32 }

@R_PERM_R = common dso_local global i32 0, align 4
@R_PERM_RW = common dso_local global i32 0, align 4
@R_PERM_X = common dso_local global i32 0, align 4
@R_PERM_RX = common dso_local global i32 0, align 4
@R_PERM_RWX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r_bin_mdmp_get_perm(%struct.r_bin_mdmp_obj* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r_bin_mdmp_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.minidump_memory_info*, align 8
  store %struct.r_bin_mdmp_obj* %0, %struct.r_bin_mdmp_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.minidump_memory_info* @r_bin_mdmp_get_mem_info(%struct.r_bin_mdmp_obj* %7, i32 %8)
  store %struct.minidump_memory_info* %9, %struct.minidump_memory_info** %6, align 8
  %10 = icmp ne %struct.minidump_memory_info* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @R_PERM_R, align 4
  store i32 %12, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.minidump_memory_info*, %struct.minidump_memory_info** %6, align 8
  %15 = getelementptr inbounds %struct.minidump_memory_info, %struct.minidump_memory_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %28 [
    i32 131, label %17
    i32 130, label %19
    i32 138, label %21
    i32 137, label %23
    i32 136, label %25
    i32 133, label %27
    i32 128, label %27
    i32 135, label %27
    i32 134, label %27
    i32 132, label %27
    i32 129, label %27
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* @R_PERM_R, align 4
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %13
  %20 = load i32, i32* @R_PERM_RW, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %13
  %22 = load i32, i32* @R_PERM_X, align 4
  store i32 %22, i32* %3, align 4
  br label %29

23:                                               ; preds = %13
  %24 = load i32, i32* @R_PERM_RX, align 4
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %13
  %26 = load i32, i32* @R_PERM_RWX, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %13, %13, %13, %13, %13, %13
  br label %28

28:                                               ; preds = %13, %27
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25, %23, %21, %19, %17, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.minidump_memory_info* @r_bin_mdmp_get_mem_info(%struct.r_bin_mdmp_obj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
