; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fat.c_grub_fat_find_dir_hook.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fat.c_grub_fat_find_dir_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_fat_dir_entry = type { i32, i32, i32, i32 }
%struct.grub_fat_find_dir_closure = type { i8*, i32 (i8*, %struct.grub_dirhook_info*, i32)*, i32, i32, i64, %struct.grub_fat_data* }
%struct.grub_dirhook_info = type opaque
%struct.grub_fat_data = type { i32, i32, i32, i32 }
%struct.grub_dirhook_info.0 = type { i32, i32 }

@GRUB_FAT_ATTR_DIRECTORY = common dso_local global i32 0, align 4
@GRUB_FAT_ATTR_VOLUME_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.grub_fat_dir_entry*, i8*)* @grub_fat_find_dir_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_fat_find_dir_hook(i8* %0, %struct.grub_fat_dir_entry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grub_fat_dir_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.grub_fat_find_dir_closure*, align 8
  %9 = alloca %struct.grub_dirhook_info.0, align 4
  %10 = alloca %struct.grub_fat_data*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.grub_fat_dir_entry* %1, %struct.grub_fat_dir_entry** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.grub_fat_find_dir_closure*
  store %struct.grub_fat_find_dir_closure* %12, %struct.grub_fat_find_dir_closure** %8, align 8
  %13 = call i32 @grub_memset(%struct.grub_dirhook_info.0* %9, i32 0, i32 8)
  %14 = load %struct.grub_fat_dir_entry*, %struct.grub_fat_dir_entry** %6, align 8
  %15 = getelementptr inbounds %struct.grub_fat_dir_entry, %struct.grub_fat_dir_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GRUB_FAT_ATTR_DIRECTORY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = getelementptr inbounds %struct.grub_dirhook_info.0, %struct.grub_dirhook_info.0* %9, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.grub_dirhook_info.0, %struct.grub_dirhook_info.0* %9, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.grub_fat_dir_entry*, %struct.grub_fat_dir_entry** %6, align 8
  %26 = getelementptr inbounds %struct.grub_fat_dir_entry, %struct.grub_fat_dir_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GRUB_FAT_ATTR_VOLUME_ID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

32:                                               ; preds = %3
  %33 = load %struct.grub_fat_find_dir_closure*, %struct.grub_fat_find_dir_closure** %8, align 8
  %34 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.grub_fat_find_dir_closure*, %struct.grub_fat_find_dir_closure** %8, align 8
  %41 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.grub_fat_find_dir_closure*, %struct.grub_fat_find_dir_closure** %8, align 8
  %46 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %45, i32 0, i32 1
  %47 = load i32 (i8*, %struct.grub_dirhook_info*, i32)*, i32 (i8*, %struct.grub_dirhook_info*, i32)** %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = bitcast %struct.grub_dirhook_info.0* %9 to %struct.grub_dirhook_info*
  %50 = load %struct.grub_fat_find_dir_closure*, %struct.grub_fat_find_dir_closure** %8, align 8
  %51 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 %47(i8* %48, %struct.grub_dirhook_info* %49, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %108

54:                                               ; preds = %39, %32
  %55 = load %struct.grub_fat_find_dir_closure*, %struct.grub_fat_find_dir_closure** %8, align 8
  %56 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @grub_strcasecmp(i8* %57, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %107

61:                                               ; preds = %54
  %62 = load %struct.grub_fat_find_dir_closure*, %struct.grub_fat_find_dir_closure** %8, align 8
  %63 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %62, i32 0, i32 5
  %64 = load %struct.grub_fat_data*, %struct.grub_fat_data** %63, align 8
  store %struct.grub_fat_data* %64, %struct.grub_fat_data** %10, align 8
  %65 = load %struct.grub_fat_find_dir_closure*, %struct.grub_fat_find_dir_closure** %8, align 8
  %66 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = load %struct.grub_fat_dir_entry*, %struct.grub_fat_dir_entry** %6, align 8
  %68 = getelementptr inbounds %struct.grub_fat_dir_entry, %struct.grub_fat_dir_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.grub_fat_data*, %struct.grub_fat_data** %10, align 8
  %71 = getelementptr inbounds %struct.grub_fat_data, %struct.grub_fat_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.grub_fat_dir_entry*, %struct.grub_fat_dir_entry** %6, align 8
  %73 = getelementptr inbounds %struct.grub_fat_dir_entry, %struct.grub_fat_dir_entry* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @grub_le_to_cpu32(i32 %74)
  %76 = load %struct.grub_fat_data*, %struct.grub_fat_data** %10, align 8
  %77 = getelementptr inbounds %struct.grub_fat_data, %struct.grub_fat_data* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.grub_fat_dir_entry*, %struct.grub_fat_dir_entry** %6, align 8
  %79 = getelementptr inbounds %struct.grub_fat_dir_entry, %struct.grub_fat_dir_entry* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @grub_le_to_cpu16(i32 %80)
  %82 = shl i32 %81, 16
  %83 = load %struct.grub_fat_dir_entry*, %struct.grub_fat_dir_entry** %6, align 8
  %84 = getelementptr inbounds %struct.grub_fat_dir_entry, %struct.grub_fat_dir_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @grub_le_to_cpu16(i32 %85)
  %87 = or i32 %82, %86
  %88 = load %struct.grub_fat_data*, %struct.grub_fat_data** %10, align 8
  %89 = getelementptr inbounds %struct.grub_fat_data, %struct.grub_fat_data* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.grub_fat_data*, %struct.grub_fat_data** %10, align 8
  %91 = getelementptr inbounds %struct.grub_fat_data, %struct.grub_fat_data* %90, i32 0, i32 2
  store i32 -1, i32* %91, align 4
  %92 = load %struct.grub_fat_find_dir_closure*, %struct.grub_fat_find_dir_closure** %8, align 8
  %93 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %61
  %97 = load %struct.grub_fat_find_dir_closure*, %struct.grub_fat_find_dir_closure** %8, align 8
  %98 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %97, i32 0, i32 1
  %99 = load i32 (i8*, %struct.grub_dirhook_info*, i32)*, i32 (i8*, %struct.grub_dirhook_info*, i32)** %98, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = bitcast %struct.grub_dirhook_info.0* %9 to %struct.grub_dirhook_info*
  %102 = load %struct.grub_fat_find_dir_closure*, %struct.grub_fat_find_dir_closure** %8, align 8
  %103 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 %99(i8* %100, %struct.grub_dirhook_info* %101, i32 %104)
  br label %106

106:                                              ; preds = %96, %61
  store i32 1, i32* %4, align 4
  br label %108

107:                                              ; preds = %54
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %106, %44, %31
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @grub_memset(%struct.grub_dirhook_info.0*, i32, i32) #1

declare dso_local i64 @grub_strcasecmp(i8*, i8*) #1

declare dso_local i32 @grub_le_to_cpu32(i32) #1

declare dso_local i32 @grub_le_to_cpu16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
