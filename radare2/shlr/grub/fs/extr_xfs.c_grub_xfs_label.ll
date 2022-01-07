; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_label.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.grub_xfs_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@my_mod = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**)* @grub_xfs_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_xfs_label(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.grub_xfs_data*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @my_mod, align 4
  %11 = call i32 @grub_dl_ref(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.grub_xfs_data* @grub_xfs_mount(i32 %12)
  store %struct.grub_xfs_data* %13, %struct.grub_xfs_data** %5, align 8
  %14 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %5, align 8
  %15 = icmp ne %struct.grub_xfs_data* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %5, align 8
  %18 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i8* @grub_strndup(i8* %21, i32 12)
  %23 = load i8**, i8*** %4, align 8
  store i8* %22, i8** %23, align 8
  br label %26

24:                                               ; preds = %2
  %25 = load i8**, i8*** %4, align 8
  store i8* null, i8** %25, align 8
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i32, i32* @my_mod, align 4
  %28 = call i32 @grub_dl_unref(i32 %27)
  %29 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %5, align 8
  %30 = call i32 @grub_free(%struct.grub_xfs_data* %29)
  %31 = load i32, i32* @grub_errno, align 4
  ret i32 %31
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_xfs_data* @grub_xfs_mount(i32) #1

declare dso_local i8* @grub_strndup(i8*, i32) #1

declare dso_local i32 @grub_dl_unref(i32) #1

declare dso_local i32 @grub_free(%struct.grub_xfs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
