; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fshelp.c_free_node.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fshelp.c_free_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_fshelp_find_file_closure = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.grub_fshelp_find_file_closure*)* @free_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_node(i64 %0, %struct.grub_fshelp_find_file_closure* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.grub_fshelp_find_file_closure*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.grub_fshelp_find_file_closure* %1, %struct.grub_fshelp_find_file_closure** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %4, align 8
  %7 = getelementptr inbounds %struct.grub_fshelp_find_file_closure, %struct.grub_fshelp_find_file_closure* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %5, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %4, align 8
  %13 = getelementptr inbounds %struct.grub_fshelp_find_file_closure, %struct.grub_fshelp_find_file_closure* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @grub_free(i64 %17)
  br label %19

19:                                               ; preds = %16, %10, %2
  ret void
}

declare dso_local i32 @grub_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
