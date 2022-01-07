; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_grub_ntfs_close.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_grub_ntfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.grub_ntfs_data* }
%struct.grub_ntfs_data = type { i32, i32 }

@my_mod = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @grub_ntfs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_ntfs_close(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.grub_ntfs_data*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %5, align 8
  store %struct.grub_ntfs_data* %6, %struct.grub_ntfs_data** %3, align 8
  %7 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %3, align 8
  %8 = icmp ne %struct.grub_ntfs_data* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %3, align 8
  %11 = getelementptr inbounds %struct.grub_ntfs_data, %struct.grub_ntfs_data* %10, i32 0, i32 1
  %12 = call i32 @free_file(i32* %11)
  %13 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %3, align 8
  %14 = getelementptr inbounds %struct.grub_ntfs_data, %struct.grub_ntfs_data* %13, i32 0, i32 0
  %15 = call i32 @free_file(i32* %14)
  %16 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %3, align 8
  %17 = call i32 @grub_free(%struct.grub_ntfs_data* %16)
  br label %18

18:                                               ; preds = %9, %1
  %19 = load i32, i32* @my_mod, align 4
  %20 = call i32 @grub_dl_unref(i32 %19)
  %21 = load i32, i32* @grub_errno, align 4
  ret i32 %21
}

declare dso_local i32 @free_file(i32*) #1

declare dso_local i32 @grub_free(%struct.grub_ntfs_data*) #1

declare dso_local i32 @grub_dl_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
