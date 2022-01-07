; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ufs.c_grub_ufs_uuid.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ufs.c_grub_ufs_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.grub_ufs_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@my_mod = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%08x%08x\00", align 1
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**)* @grub_ufs_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_ufs_uuid(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.grub_ufs_data*, align 8
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
  %13 = call %struct.grub_ufs_data* @grub_ufs_mount(i32 %12)
  store %struct.grub_ufs_data* %13, %struct.grub_ufs_data** %5, align 8
  %14 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %5, align 8
  %15 = icmp ne %struct.grub_ufs_data* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %5, align 8
  %18 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %5, align 8
  %24 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %22, %16
  %29 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %5, align 8
  %30 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @grub_le_to_cpu32(i64 %32)
  %34 = trunc i64 %33 to i32
  %35 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %5, align 8
  %36 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @grub_le_to_cpu32(i64 %38)
  %40 = trunc i64 %39 to i32
  %41 = call i8* @grub_xasprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %40)
  %42 = load i8**, i8*** %4, align 8
  store i8* %41, i8** %42, align 8
  br label %45

43:                                               ; preds = %22, %2
  %44 = load i8**, i8*** %4, align 8
  store i8* null, i8** %44, align 8
  br label %45

45:                                               ; preds = %43, %28
  %46 = load i32, i32* @my_mod, align 4
  %47 = call i32 @grub_dl_unref(i32 %46)
  %48 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %5, align 8
  %49 = call i32 @grub_free(%struct.grub_ufs_data* %48)
  %50 = load i32, i32* @grub_errno, align 4
  ret i32 %50
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_ufs_data* @grub_ufs_mount(i32) #1

declare dso_local i8* @grub_xasprintf(i8*, i32, i32) #1

declare dso_local i64 @grub_le_to_cpu32(i64) #1

declare dso_local i32 @grub_dl_unref(i32) #1

declare dso_local i32 @grub_free(%struct.grub_ufs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
