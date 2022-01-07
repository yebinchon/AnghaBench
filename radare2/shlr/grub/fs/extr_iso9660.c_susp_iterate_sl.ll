; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_susp_iterate_sl.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_susp_iterate_sl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_iso9660_susp_entry = type { i32, i64 }
%struct.grub_iso9660_read_symlink_closure = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"SL\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@grub_errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_iso9660_susp_entry*, i8*)* @susp_iterate_sl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @susp_iterate_sl(%struct.grub_iso9660_susp_entry* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.grub_iso9660_susp_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grub_iso9660_read_symlink_closure*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.grub_iso9660_susp_entry* %0, %struct.grub_iso9660_susp_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.grub_iso9660_read_symlink_closure*
  store %struct.grub_iso9660_read_symlink_closure* %10, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %11 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %4, align 8
  %12 = getelementptr inbounds %struct.grub_iso9660_susp_entry, %struct.grub_iso9660_susp_entry* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i64 @grub_strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14, i32 2)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %98

17:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %18

18:                                               ; preds = %81, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %4, align 8
  %21 = getelementptr inbounds %struct.grub_iso9660_susp_entry, %struct.grub_iso9660_susp_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @grub_le_to_cpu32(i32 %22)
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %18
  %26 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %27 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %32 = call i32 @add_part(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, %struct.grub_iso9660_read_symlink_closure* %31)
  %33 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %34 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %4, align 8
  %37 = call i8* @ENTRY_DATA(%struct.grub_iso9660_susp_entry* %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 30
  switch i32 %44, label %81 [
    i32 0, label %45
    i32 2, label %72
    i32 4, label %75
    i32 8, label %78
  ]

45:                                               ; preds = %35
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 2
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %59 = call i32 @add_part(i8* %50, i32 %57, %struct.grub_iso9660_read_symlink_closure* %58)
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %45
  %69 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %70 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %45
  br label %81

72:                                               ; preds = %35
  %73 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %74 = call i32 @add_part(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2, %struct.grub_iso9660_read_symlink_closure* %73)
  br label %81

75:                                               ; preds = %35
  %76 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %77 = call i32 @add_part(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3, %struct.grub_iso9660_read_symlink_closure* %76)
  br label %81

78:                                               ; preds = %35
  %79 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %80 = call i32 @add_part(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, %struct.grub_iso9660_read_symlink_closure* %79)
  br label %81

81:                                               ; preds = %35, %78, %75, %72, %71
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %88, 2
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %18

92:                                               ; preds = %18
  %93 = load i64, i64* @grub_errno, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i64, i64* @grub_errno, align 8
  store i64 %96, i64* %3, align 8
  br label %99

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %2
  store i64 0, i64* %3, align 8
  br label %99

99:                                               ; preds = %98, %95
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local i64 @grub_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @grub_le_to_cpu32(i32) #1

declare dso_local i32 @add_part(i8*, i32, %struct.grub_iso9660_read_symlink_closure*) #1

declare dso_local i8* @ENTRY_DATA(%struct.grub_iso9660_susp_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
