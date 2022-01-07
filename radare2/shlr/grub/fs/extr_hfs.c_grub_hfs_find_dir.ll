; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_find_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_find_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_hfs_data = type { i32, i32 }
%struct.grub_hfs_filerec = type { i64 }
%union.anon = type { %struct.grub_hfs_filerec }
%struct.grub_hfs_catalog_key = type { i64, i64, i32 }
%struct.grub_hfs_dirrec = type { i32 }

@GRUB_HFS_FILETYPE_DIR = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FILENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bad filename\00", align 1
@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FILE_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"not a directory\00", align 1
@GRUB_ERR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"file not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_hfs_data*, i8*, %struct.grub_hfs_filerec*, i32*)* @grub_hfs_find_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_hfs_find_dir(%struct.grub_hfs_data* %0, i8* %1, %struct.grub_hfs_filerec* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.grub_hfs_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.grub_hfs_filerec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %union.anon, align 8
  %14 = alloca %struct.grub_hfs_catalog_key, align 8
  store %struct.grub_hfs_data* %0, %struct.grub_hfs_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.grub_hfs_filerec* %2, %struct.grub_hfs_filerec** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %6, align 8
  %16 = getelementptr inbounds %struct.grub_hfs_data, %struct.grub_hfs_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i64, i64* @GRUB_HFS_FILETYPE_DIR, align 8
  %19 = bitcast %union.anon* %13 to %struct.grub_hfs_filerec*
  %20 = getelementptr inbounds %struct.grub_hfs_filerec, %struct.grub_hfs_filerec* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 47
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @GRUB_ERR_BAD_FILENAME, align 4
  %28 = call i32 @grub_error(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %132

29:                                               ; preds = %4
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @grub_strdup(i8* %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @grub_errno, align 8
  store i64 %35, i64* %5, align 8
  br label %132

36:                                               ; preds = %29
  %37 = load i8*, i8** %12, align 8
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %43, %36
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %38

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %108, %46
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @grub_strlen(i8* %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %56, label %114

56:                                               ; preds = %54
  %57 = bitcast %union.anon* %13 to %struct.grub_hfs_filerec*
  %58 = getelementptr inbounds %struct.grub_hfs_filerec, %struct.grub_hfs_filerec* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @GRUB_HFS_FILETYPE_DIR, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @GRUB_ERR_BAD_FILE_TYPE, align 4
  %64 = call i32 @grub_error(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %128

65:                                               ; preds = %56
  %66 = load i8*, i8** %7, align 8
  %67 = call i8* @grub_strchr(i8* %66, i8 signext 47)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %76, %70
  %72 = load i8*, i8** %11, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 47
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %11, align 8
  store i8 0, i8* %77, align 1
  br label %71

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %65
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @grub_cpu_to_be32(i32 %81)
  %83 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %14, i32 0, i32 2
  store i32 %82, i32* %83, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @grub_strlen(i8* %84)
  %86 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %14, i32 0, i32 1
  store i64 %85, i64* %86, align 8
  %87 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %14, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @grub_strcpy(i8* %89, i8* %90)
  %92 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %6, align 8
  %93 = bitcast %struct.grub_hfs_catalog_key* %14 to i8*
  %94 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %6, align 8
  %95 = getelementptr inbounds %struct.grub_hfs_data, %struct.grub_hfs_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = bitcast %union.anon* %13 to %struct.grub_hfs_filerec*
  %98 = bitcast %struct.grub_hfs_filerec* %97 to i8*
  %99 = call i32 @grub_hfs_find_node(%struct.grub_hfs_data* %92, i8* %93, i32 %96, i32 0, i8* %98, i32 8)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %80
  %102 = load i32, i32* @GRUB_ERR_FILE_NOT_FOUND, align 4
  %103 = call i32 @grub_error(i32 %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %128

104:                                              ; preds = %80
  %105 = load i64, i64* @grub_errno, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %128

108:                                              ; preds = %104
  %109 = bitcast %union.anon* %13 to %struct.grub_hfs_dirrec*
  %110 = getelementptr inbounds %struct.grub_hfs_dirrec, %struct.grub_hfs_dirrec* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @grub_be_to_cpu32(i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i8*, i8** %11, align 8
  store i8* %113, i8** %7, align 8
  br label %47

114:                                              ; preds = %54
  %115 = load %struct.grub_hfs_filerec*, %struct.grub_hfs_filerec** %8, align 8
  %116 = icmp ne %struct.grub_hfs_filerec* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.grub_hfs_filerec*, %struct.grub_hfs_filerec** %8, align 8
  %119 = bitcast %union.anon* %13 to %struct.grub_hfs_filerec*
  %120 = call i32 @grub_memcpy(%struct.grub_hfs_filerec* %118, %struct.grub_hfs_filerec* %119, i32 8)
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32*, i32** %9, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = load i32*, i32** %9, align 8
  store i32 %125, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %107, %101, %62
  %129 = load i8*, i8** %12, align 8
  %130 = call i32 @grub_free(i8* %129)
  %131 = load i64, i64* @grub_errno, align 8
  store i64 %131, i64* %5, align 8
  br label %132

132:                                              ; preds = %128, %34, %26
  %133 = load i64, i64* %5, align 8
  ret i64 %133
}

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i8* @grub_strdup(i8*) #1

declare dso_local i64 @grub_strlen(i8*) #1

declare dso_local i8* @grub_strchr(i8*, i8 signext) #1

declare dso_local i32 @grub_cpu_to_be32(i32) #1

declare dso_local i32 @grub_strcpy(i8*, i8*) #1

declare dso_local i32 @grub_hfs_find_node(%struct.grub_hfs_data*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @grub_be_to_cpu32(i32) #1

declare dso_local i32 @grub_memcpy(%struct.grub_hfs_filerec*, %struct.grub_hfs_filerec*, i32) #1

declare dso_local i32 @grub_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
