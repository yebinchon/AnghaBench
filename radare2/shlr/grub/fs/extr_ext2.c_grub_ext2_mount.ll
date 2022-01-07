; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ext2.c_grub_ext2_mount.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ext2.c_grub_ext2_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ext2_data = type { i32*, %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.grub_ext2_data* }
%struct.TYPE_4__ = type { i32, i32 }

@grub_errno = common dso_local global i64 0, align 8
@EXT2_MAGIC = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"not an ext2 filesystem\00", align 1
@EXT2_DRIVER_SUPPORTED_INCOMPAT = common dso_local global i32 0, align 4
@EXT2_DRIVER_IGNORED_INCOMPAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"filesystem has unsupported incompatible features\00", align 1
@GRUB_ERR_OUT_OF_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grub_ext2_data* (i32)* @grub_ext2_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grub_ext2_data* @grub_ext2_mount(i32 %0) #0 {
  %2 = alloca %struct.grub_ext2_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_ext2_data*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.grub_ext2_data* @grub_malloc(i32 48)
  store %struct.grub_ext2_data* %5, %struct.grub_ext2_data** %4, align 8
  %6 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %7 = icmp ne %struct.grub_ext2_data* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.grub_ext2_data* null, %struct.grub_ext2_data** %2, align 8
  br label %82

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %12 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %11, i32 0, i32 3
  %13 = call i32 @grub_disk_read(i32 %10, i32 2, i32 0, i32 4, %struct.TYPE_4__* %12)
  %14 = load i64, i64* @grub_errno, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %72

17:                                               ; preds = %9
  %18 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %19 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @grub_le_to_cpu16(i32 %21)
  %23 = load i64, i64* @EXT2_MAGIC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %27 = call i32 @grub_error(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %72

28:                                               ; preds = %17
  %29 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %30 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @grub_le_to_cpu32(i32 %32)
  %34 = load i32, i32* @EXT2_DRIVER_SUPPORTED_INCOMPAT, align 4
  %35 = load i32, i32* @EXT2_DRIVER_IGNORED_INCOMPAT, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %33, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %42 = call i32 @grub_error(i32 %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %72

43:                                               ; preds = %28
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %46 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %48 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %49 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store %struct.grub_ext2_data* %47, %struct.grub_ext2_data** %50, align 8
  %51 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %52 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 2, i32* %53, align 8
  %54 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %55 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %58 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %61 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %63 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %64 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @grub_ext2_read_inode(%struct.grub_ext2_data* %62, i32 2, i32* %65)
  %67 = load i64, i64* @grub_errno, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %43
  br label %72

70:                                               ; preds = %43
  %71 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  store %struct.grub_ext2_data* %71, %struct.grub_ext2_data** %2, align 8
  br label %82

72:                                               ; preds = %69, %40, %25, %16
  %73 = load i64, i64* @grub_errno, align 8
  %74 = load i64, i64* @GRUB_ERR_OUT_OF_RANGE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %78 = call i32 @grub_error(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %72
  %80 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %4, align 8
  %81 = call i32 @grub_free(%struct.grub_ext2_data* %80)
  store %struct.grub_ext2_data* null, %struct.grub_ext2_data** %2, align 8
  br label %82

82:                                               ; preds = %79, %70, %8
  %83 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %2, align 8
  ret %struct.grub_ext2_data* %83
}

declare dso_local %struct.grub_ext2_data* @grub_malloc(i32) #1

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @grub_le_to_cpu16(i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_le_to_cpu32(i32) #1

declare dso_local i32 @grub_ext2_read_inode(%struct.grub_ext2_data*, i32, i32*) #1

declare dso_local i32 @grub_free(%struct.grub_ext2_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
