; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_iterate.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_xfs_dir_closure = type { i32 (i8*, %struct.grub_dirhook_info*, i32)*, i32 }
%struct.grub_dirhook_info = type opaque
%struct.grub_dirhook_info.0 = type { i32 }

@GRUB_FSHELP_TYPE_MASK = common dso_local global i32 0, align 4
@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*)* @iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.grub_xfs_dir_closure*, align 8
  %10 = alloca %struct.grub_dirhook_info.0, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.grub_xfs_dir_closure*
  store %struct.grub_xfs_dir_closure* %12, %struct.grub_xfs_dir_closure** %9, align 8
  %13 = call i32 @grub_memset(%struct.grub_dirhook_info.0* %10, i32 0, i32 4)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @GRUB_FSHELP_TYPE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.grub_dirhook_info.0, %struct.grub_dirhook_info.0* %10, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @grub_free(i32 %21)
  %23 = load %struct.grub_xfs_dir_closure*, %struct.grub_xfs_dir_closure** %9, align 8
  %24 = getelementptr inbounds %struct.grub_xfs_dir_closure, %struct.grub_xfs_dir_closure* %23, i32 0, i32 0
  %25 = load i32 (i8*, %struct.grub_dirhook_info*, i32)*, i32 (i8*, %struct.grub_dirhook_info*, i32)** %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast %struct.grub_dirhook_info.0* %10 to %struct.grub_dirhook_info*
  %28 = load %struct.grub_xfs_dir_closure*, %struct.grub_xfs_dir_closure** %9, align 8
  %29 = getelementptr inbounds %struct.grub_xfs_dir_closure, %struct.grub_xfs_dir_closure* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 %25(i8* %26, %struct.grub_dirhook_info* %27, i32 %30)
  ret i32 %31
}

declare dso_local i32 @grub_memset(%struct.grub_dirhook_info.0*, i32, i32) #1

declare dso_local i32 @grub_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
