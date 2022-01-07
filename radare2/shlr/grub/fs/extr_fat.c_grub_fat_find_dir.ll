; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fat.c_grub_fat_find_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fat.c_grub_fat_find_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_fat_data = type { i32 }
%struct.grub_dirhook_info = type opaque
%struct.grub_fat_find_dir_closure = type { i32 (i8*, %struct.grub_dirhook_info.0*, i8*)*, i8*, i64, i32, i8*, %struct.grub_fat_data* }
%struct.grub_dirhook_info.0 = type opaque

@GRUB_FAT_ATTR_DIRECTORY = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FILE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not a directory\00", align 1
@grub_fat_find_dir_hook = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@GRUB_ERR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"file not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.grub_fat_data*, i8*, i32 (i8*, %struct.grub_dirhook_info*, i8*)*, i8*)* @grub_fat_find_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @grub_fat_find_dir(i32 %0, %struct.grub_fat_data* %1, i8* %2, i32 (i8*, %struct.grub_dirhook_info*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.grub_fat_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, %struct.grub_dirhook_info*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.grub_fat_find_dir_closure, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.grub_fat_data* %1, %struct.grub_fat_data** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 (i8*, %struct.grub_dirhook_info*, i8*)* %3, i32 (i8*, %struct.grub_dirhook_info*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load %struct.grub_fat_data*, %struct.grub_fat_data** %8, align 8
  %17 = getelementptr inbounds %struct.grub_fat_data, %struct.grub_fat_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GRUB_FAT_ATTR_DIRECTORY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @GRUB_ERR_BAD_FILE_TYPE, align 4
  %24 = call i32 @grub_error(i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %6, align 8
  br label %113

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %31, %25
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %9, align 8
  br label %26

34:                                               ; preds = %26
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @grub_strchr(i8* %35, i8 signext 47)
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = load i8*, i8** %13, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = add i32 %46, 1
  %48 = call i8* @grub_malloc(i32 %47)
  store i8* %48, i8** %12, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  store i8* null, i8** %6, align 8
  br label %113

52:                                               ; preds = %39
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @grub_memcpy(i8* %53, i8* %54, i32 %55)
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* %15, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 0, i8* %60, align 1
  br label %64

61:                                               ; preds = %34
  %62 = load i8*, i8** %9, align 8
  %63 = call i8* @grub_strdup(i8* %62)
  store i8* %63, i8** %12, align 8
  br label %64

64:                                               ; preds = %61, %52
  %65 = load %struct.grub_fat_data*, %struct.grub_fat_data** %8, align 8
  %66 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %14, i32 0, i32 5
  store %struct.grub_fat_data* %65, %struct.grub_fat_data** %66, align 8
  %67 = load i32 (i8*, %struct.grub_dirhook_info*, i8*)*, i32 (i8*, %struct.grub_dirhook_info*, i8*)** %10, align 8
  %68 = bitcast i32 (i8*, %struct.grub_dirhook_info*, i8*)* %67 to i32 (i8*, %struct.grub_dirhook_info.0*, i8*)*
  %69 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %14, i32 0, i32 0
  store i32 (i8*, %struct.grub_dirhook_info.0*, i8*)* %68, i32 (i8*, %struct.grub_dirhook_info.0*, i8*)** %69, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %14, i32 0, i32 4
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %14, i32 0, i32 1
  store i8* %72, i8** %73, align 8
  %74 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %14, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %64
  %78 = load i32 (i8*, %struct.grub_dirhook_info*, i8*)*, i32 (i8*, %struct.grub_dirhook_info*, i8*)** %10, align 8
  %79 = icmp ne i32 (i8*, %struct.grub_dirhook_info*, i8*)* %78, null
  br label %80

80:                                               ; preds = %77, %64
  %81 = phi i1 [ false, %64 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  %83 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %14, i32 0, i32 3
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.grub_fat_data*, %struct.grub_fat_data** %8, align 8
  %86 = load i32, i32* @grub_fat_find_dir_hook, align 4
  %87 = call i32 @grub_fat_iterate_dir(i32 %84, %struct.grub_fat_data* %85, i32 %86, %struct.grub_fat_find_dir_closure* %14)
  %88 = load i64, i64* @grub_errno, align 8
  %89 = load i64, i64* @GRUB_ERR_NONE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %14, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %14, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @GRUB_ERR_FILE_NOT_FOUND, align 4
  %101 = call i32 @grub_error(i32 %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %95, %91, %80
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 @grub_free(i8* %103)
  %105 = getelementptr inbounds %struct.grub_fat_find_dir_closure, %struct.grub_fat_find_dir_closure* %14, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i8*, i8** %13, align 8
  br label %111

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i8* [ %109, %108 ], [ null, %110 ]
  store i8* %112, i8** %6, align 8
  br label %113

113:                                              ; preds = %111, %51, %22
  %114 = load i8*, i8** %6, align 8
  ret i8* %114
}

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i8* @grub_strchr(i8*, i8 signext) #1

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_memcpy(i8*, i8*, i32) #1

declare dso_local i8* @grub_strdup(i8*) #1

declare dso_local i32 @grub_fat_iterate_dir(i32, %struct.grub_fat_data*, i32, %struct.grub_fat_find_dir_closure*) #1

declare dso_local i32 @grub_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
