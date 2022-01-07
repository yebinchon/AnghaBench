; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_call_hook.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_call_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_xfs_iterate_dir_closure = type { i32 (i8*, i32, %struct.grub_fshelp_node*, i32)*, i32, %struct.TYPE_6__* }
%struct.grub_fshelp_node = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.grub_fshelp_node.0 = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.grub_xfs_iterate_dir_closure*)* @call_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_hook(i32 %0, i8* %1, %struct.grub_xfs_iterate_dir_closure* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.grub_xfs_iterate_dir_closure*, align 8
  %8 = alloca %struct.grub_fshelp_node.0*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.grub_xfs_iterate_dir_closure* %2, %struct.grub_xfs_iterate_dir_closure** %7, align 8
  %9 = load %struct.grub_xfs_iterate_dir_closure*, %struct.grub_xfs_iterate_dir_closure** %7, align 8
  %10 = getelementptr inbounds %struct.grub_xfs_iterate_dir_closure, %struct.grub_xfs_iterate_dir_closure* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  %18 = sext i32 %17 to i64
  %19 = add i64 20, %18
  %20 = trunc i64 %19 to i32
  %21 = call %struct.grub_fshelp_node.0* @grub_malloc(i32 %20)
  store %struct.grub_fshelp_node.0* %21, %struct.grub_fshelp_node.0** %8, align 8
  %22 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %8, align 8
  %23 = icmp ne %struct.grub_fshelp_node.0* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %8, align 8
  %28 = getelementptr inbounds %struct.grub_fshelp_node.0, %struct.grub_fshelp_node.0* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %8, align 8
  %30 = getelementptr inbounds %struct.grub_fshelp_node.0, %struct.grub_fshelp_node.0* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.grub_xfs_iterate_dir_closure*, %struct.grub_xfs_iterate_dir_closure** %7, align 8
  %32 = getelementptr inbounds %struct.grub_xfs_iterate_dir_closure, %struct.grub_xfs_iterate_dir_closure* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %8, align 8
  %37 = getelementptr inbounds %struct.grub_fshelp_node.0, %struct.grub_fshelp_node.0* %36, i32 0, i32 2
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %37, align 8
  %38 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %8, align 8
  %39 = getelementptr inbounds %struct.grub_fshelp_node.0, %struct.grub_fshelp_node.0* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %8, align 8
  %43 = getelementptr inbounds %struct.grub_fshelp_node.0, %struct.grub_fshelp_node.0* %42, i32 0, i32 1
  %44 = call i32 @grub_xfs_read_inode(%struct.TYPE_7__* %40, i32 %41, %struct.TYPE_8__* %43)
  %45 = load %struct.grub_xfs_iterate_dir_closure*, %struct.grub_xfs_iterate_dir_closure** %7, align 8
  %46 = getelementptr inbounds %struct.grub_xfs_iterate_dir_closure, %struct.grub_xfs_iterate_dir_closure* %45, i32 0, i32 0
  %47 = load i32 (i8*, i32, %struct.grub_fshelp_node*, i32)*, i32 (i8*, i32, %struct.grub_fshelp_node*, i32)** %46, align 8
  %48 = icmp ne i32 (i8*, i32, %struct.grub_fshelp_node*, i32)* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %25
  %50 = load %struct.grub_xfs_iterate_dir_closure*, %struct.grub_xfs_iterate_dir_closure** %7, align 8
  %51 = getelementptr inbounds %struct.grub_xfs_iterate_dir_closure, %struct.grub_xfs_iterate_dir_closure* %50, i32 0, i32 0
  %52 = load i32 (i8*, i32, %struct.grub_fshelp_node*, i32)*, i32 (i8*, i32, %struct.grub_fshelp_node*, i32)** %51, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %8, align 8
  %55 = getelementptr inbounds %struct.grub_fshelp_node.0, %struct.grub_fshelp_node.0* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @grub_xfs_mode_to_filetype(i32 %57)
  %59 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %8, align 8
  %60 = bitcast %struct.grub_fshelp_node.0* %59 to %struct.grub_fshelp_node*
  %61 = load %struct.grub_xfs_iterate_dir_closure*, %struct.grub_xfs_iterate_dir_closure** %7, align 8
  %62 = getelementptr inbounds %struct.grub_xfs_iterate_dir_closure, %struct.grub_xfs_iterate_dir_closure* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %52(i8* %53, i32 %58, %struct.grub_fshelp_node* %60, i32 %63)
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %49, %24
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.grub_fshelp_node.0* @grub_malloc(i32) #1

declare dso_local i32 @grub_xfs_read_inode(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @grub_xfs_mode_to_filetype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
