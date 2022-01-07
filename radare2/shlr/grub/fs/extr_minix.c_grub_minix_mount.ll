; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_minix_mount.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_minix_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_minix_data = type { i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GRUB_MINIX_SBLOCK = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@GRUB_MINIX_MAGIC = common dso_local global i64 0, align 8
@GRUB_MINIX2_MAGIC = common dso_local global i64 0, align 8
@GRUB_MINIX_MAGIC_30 = common dso_local global i64 0, align 8
@GRUB_MINIX2_MAGIC_30 = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"not a minix filesystem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grub_minix_data* (i32)* @grub_minix_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grub_minix_data* @grub_minix_mount(i32 %0) #0 {
  %2 = alloca %struct.grub_minix_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_minix_data*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.grub_minix_data* @grub_malloc(i32 24)
  store %struct.grub_minix_data* %5, %struct.grub_minix_data** %4, align 8
  %6 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %7 = icmp ne %struct.grub_minix_data* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.grub_minix_data* null, %struct.grub_minix_data** %2, align 8
  br label %86

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @GRUB_MINIX_SBLOCK, align 4
  %12 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %13 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %12, i32 0, i32 4
  %14 = call i32 @grub_disk_read(i32 %10, i32 %11, i32 0, i32 4, %struct.TYPE_2__* %13)
  %15 = load i64, i64* @grub_errno, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %81

18:                                               ; preds = %9
  %19 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %20 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @grub_le_to_cpu16(i32 %22)
  %24 = load i64, i64* @GRUB_MINIX_MAGIC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %28 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %30 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %29, i32 0, i32 1
  store i32 14, i32* %30, align 4
  br label %74

31:                                               ; preds = %18
  %32 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %33 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @grub_le_to_cpu16(i32 %35)
  %37 = load i64, i64* @GRUB_MINIX2_MAGIC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %41 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %40, i32 0, i32 0
  store i32 2, i32* %41, align 8
  %42 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %43 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %42, i32 0, i32 1
  store i32 14, i32* %43, align 4
  br label %73

44:                                               ; preds = %31
  %45 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %46 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @grub_le_to_cpu16(i32 %48)
  %50 = load i64, i64* @GRUB_MINIX_MAGIC_30, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %54 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %56 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %55, i32 0, i32 1
  store i32 30, i32* %56, align 4
  br label %72

57:                                               ; preds = %44
  %58 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %59 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @grub_le_to_cpu16(i32 %61)
  %63 = load i64, i64* @GRUB_MINIX2_MAGIC_30, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %67 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %66, i32 0, i32 0
  store i32 2, i32* %67, align 8
  %68 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %69 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %68, i32 0, i32 1
  store i32 30, i32* %69, align 4
  br label %71

70:                                               ; preds = %57
  br label %81

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %52
  br label %73

73:                                               ; preds = %72, %39
  br label %74

74:                                               ; preds = %73, %26
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %77 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %79 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  store %struct.grub_minix_data* %80, %struct.grub_minix_data** %2, align 8
  br label %86

81:                                               ; preds = %70, %17
  %82 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %83 = call i32 @grub_free(%struct.grub_minix_data* %82)
  %84 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %85 = call i32 @grub_error(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.grub_minix_data* null, %struct.grub_minix_data** %2, align 8
  br label %86

86:                                               ; preds = %81, %74, %8
  %87 = load %struct.grub_minix_data*, %struct.grub_minix_data** %2, align 8
  ret %struct.grub_minix_data* %87
}

declare dso_local %struct.grub_minix_data* @grub_malloc(i32) #1

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i64 @grub_le_to_cpu16(i32) #1

declare dso_local i32 @grub_free(%struct.grub_minix_data*) #1

declare dso_local i32 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
