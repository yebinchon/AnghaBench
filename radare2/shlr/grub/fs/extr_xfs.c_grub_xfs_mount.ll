; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_mount.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_xfs_data = type { %struct.TYPE_3__, i64, i32, %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.grub_xfs_data* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"XFSB\00", align 1
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"not a XFS filesystem\00", align 1
@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_OUT_OF_RANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"not an XFS filesystem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grub_xfs_data* (i32)* @grub_xfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grub_xfs_data* @grub_xfs_mount(i32 %0) #0 {
  %2 = alloca %struct.grub_xfs_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_xfs_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.grub_xfs_data* null, %struct.grub_xfs_data** %4, align 8
  %5 = call %struct.grub_xfs_data* @grub_zalloc(i32 80)
  store %struct.grub_xfs_data* %5, %struct.grub_xfs_data** %4, align 8
  %6 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %7 = icmp ne %struct.grub_xfs_data* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.grub_xfs_data* null, %struct.grub_xfs_data** %2, align 8
  br label %95

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %12 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %11, i32 0, i32 3
  %13 = call i64 @grub_disk_read(i32 %10, i32 0, i32 0, i32 4, %struct.TYPE_4__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %85

16:                                               ; preds = %9
  %17 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %18 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i64 @grub_strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %26 = call i32 @grub_error(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %85

27:                                               ; preds = %16
  %28 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %29 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %30 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = add i64 76, %34
  %36 = trunc i64 %35 to i32
  %37 = call %struct.grub_xfs_data* @grub_realloc(%struct.grub_xfs_data* %28, i32 %36)
  store %struct.grub_xfs_data* %37, %struct.grub_xfs_data** %4, align 8
  %38 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %39 = icmp ne %struct.grub_xfs_data* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  br label %85

41:                                               ; preds = %27
  %42 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %43 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %44 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store %struct.grub_xfs_data* %42, %struct.grub_xfs_data** %45, align 8
  %46 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %47 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %51 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %54 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %57 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @grub_be_to_cpu32(i32 %59)
  %61 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %62 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %64 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @grub_be_to_cpu32(i32 %66)
  %68 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %69 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %72 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %74 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %76 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %77 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %81 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = call i32 @grub_xfs_read_inode(%struct.grub_xfs_data* %75, i32 %79, i32* %82)
  %84 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  store %struct.grub_xfs_data* %84, %struct.grub_xfs_data** %2, align 8
  br label %95

85:                                               ; preds = %40, %24, %15
  %86 = load i64, i64* @grub_errno, align 8
  %87 = load i64, i64* @GRUB_ERR_OUT_OF_RANGE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %91 = call i32 @grub_error(i32 %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %85
  %93 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %4, align 8
  %94 = call i32 @grub_free(%struct.grub_xfs_data* %93)
  store %struct.grub_xfs_data* null, %struct.grub_xfs_data** %2, align 8
  br label %95

95:                                               ; preds = %92, %41, %8
  %96 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %2, align 8
  ret %struct.grub_xfs_data* %96
}

declare dso_local %struct.grub_xfs_data* @grub_zalloc(i32) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @grub_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local %struct.grub_xfs_data* @grub_realloc(%struct.grub_xfs_data*, i32) #1

declare dso_local i8* @grub_be_to_cpu32(i32) #1

declare dso_local i32 @grub_xfs_read_inode(%struct.grub_xfs_data*, i32, i32*) #1

declare dso_local i32 @grub_free(%struct.grub_xfs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
