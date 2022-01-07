; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_mount.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_nilfs2_data = type { i32*, %struct.TYPE_2__, i32, i32, %struct.grub_nilfs2_segment_summary, %struct.grub_nilfs2_segment_summary }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.grub_nilfs2_data* }
%struct.grub_nilfs2_segment_summary = type { i32, i32 }
%struct.grub_nilfs2_checkpoint = type { i32 }

@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"not a nilfs2 filesystem\00", align 1
@GRUB_ERR_OUT_OF_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grub_nilfs2_data* (i32)* @grub_nilfs2_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grub_nilfs2_data* @grub_nilfs2_mount(i32 %0) #0 {
  %2 = alloca %struct.grub_nilfs2_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_nilfs2_data*, align 8
  %5 = alloca %struct.grub_nilfs2_segment_summary, align 4
  %6 = alloca %struct.grub_nilfs2_checkpoint, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = call %struct.grub_nilfs2_data* @grub_malloc(i32 56)
  store %struct.grub_nilfs2_data* %10, %struct.grub_nilfs2_data** %4, align 8
  %11 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %12 = icmp ne %struct.grub_nilfs2_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.grub_nilfs2_data* null, %struct.grub_nilfs2_data** %2, align 8
  br label %109

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %17 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %16, i32 0, i32 5
  %18 = call i32 @grub_disk_read(i32 %15, i32 2, i32 0, i32 4, %struct.grub_nilfs2_segment_summary* %17)
  %19 = load i64, i64* @grub_errno, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %99

22:                                               ; preds = %14
  %23 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %24 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %23, i32 0, i32 5
  %25 = call i32 @grub_nilfs2_valid_sb(%struct.grub_nilfs2_segment_summary* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %29 = call i32 @grub_error(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %99

30:                                               ; preds = %22
  %31 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %32 = call i32 @LOG2_NILFS2_BLOCK_SIZE(%struct.grub_nilfs2_data* %31)
  %33 = shl i32 1, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %35 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.grub_nilfs2_segment_summary, %struct.grub_nilfs2_segment_summary* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @grub_le_to_cpu64(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = mul i32 %40, %41
  %43 = call i32 @grub_disk_read(i32 %39, i32 %42, i32 0, i32 8, %struct.grub_nilfs2_segment_summary* %5)
  %44 = load i64, i64* @grub_errno, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  br label %99

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.grub_nilfs2_segment_summary, %struct.grub_nilfs2_segment_summary* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @grub_le_to_cpu32(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, 1
  %55 = add i32 %52, %54
  %56 = load i32, i32* %9, align 4
  %57 = mul i32 %55, %56
  %58 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %59 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %58, i32 0, i32 4
  %60 = call i32 @grub_disk_read(i32 %51, i32 %57, i32 0, i32 4, %struct.grub_nilfs2_segment_summary* %59)
  %61 = load i64, i64* @grub_errno, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %99

64:                                               ; preds = %47
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %67 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %69 = call i32 @grub_nilfs2_read_last_checkpoint(%struct.grub_nilfs2_data* %68, %struct.grub_nilfs2_checkpoint* %6)
  %70 = load i64, i64* @grub_errno, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %99

73:                                               ; preds = %64
  %74 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %75 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.grub_nilfs2_checkpoint, %struct.grub_nilfs2_checkpoint* %6, i32 0, i32 0
  %77 = call i32 @grub_memcpy(i32* %75, i32* %76, i32 4)
  %78 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %79 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %80 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store %struct.grub_nilfs2_data* %78, %struct.grub_nilfs2_data** %81, align 8
  %82 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %83 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 2, i32* %84, align 8
  %85 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %86 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %89 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %92 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %91, i32 0, i32 0
  store i32* %90, i32** %92, align 8
  %93 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %94 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %95 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @grub_nilfs2_read_inode(%struct.grub_nilfs2_data* %93, i32 2, i32* %96)
  %98 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  store %struct.grub_nilfs2_data* %98, %struct.grub_nilfs2_data** %2, align 8
  br label %109

99:                                               ; preds = %72, %63, %46, %27, %21
  %100 = load i64, i64* @grub_errno, align 8
  %101 = load i64, i64* @GRUB_ERR_OUT_OF_RANGE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %105 = call i32 @grub_error(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %99
  %107 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %4, align 8
  %108 = call i32 @grub_free(%struct.grub_nilfs2_data* %107)
  store %struct.grub_nilfs2_data* null, %struct.grub_nilfs2_data** %2, align 8
  br label %109

109:                                              ; preds = %106, %73, %13
  %110 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %2, align 8
  ret %struct.grub_nilfs2_data* %110
}

declare dso_local %struct.grub_nilfs2_data* @grub_malloc(i32) #1

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, %struct.grub_nilfs2_segment_summary*) #1

declare dso_local i32 @grub_nilfs2_valid_sb(%struct.grub_nilfs2_segment_summary*) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @LOG2_NILFS2_BLOCK_SIZE(%struct.grub_nilfs2_data*) #1

declare dso_local i32 @grub_le_to_cpu64(i32) #1

declare dso_local i32 @grub_le_to_cpu32(i32) #1

declare dso_local i32 @grub_nilfs2_read_last_checkpoint(%struct.grub_nilfs2_data*, %struct.grub_nilfs2_checkpoint*) #1

declare dso_local i32 @grub_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @grub_nilfs2_read_inode(%struct.grub_nilfs2_data*, i32, i32*) #1

declare dso_local i32 @grub_free(%struct.grub_nilfs2_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
