; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_grub_jfs_find_file.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_grub_jfs_find_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_jfs_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.grub_jfs_diropen = type { i32, i32 }

@GRUB_JFS_AGGR_INODE = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@GRUB_ERR_OUT_OF_RANGE = common dso_local global i64 0, align 8
@GRUB_JFS_FILETYPE_MASK = common dso_local global i32 0, align 4
@GRUB_JFS_FILETYPE_LNK = common dso_local global i32 0, align 4
@GRUB_ERR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"file not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_jfs_data*, i8*)* @grub_jfs_find_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_jfs_find_file(%struct.grub_jfs_data* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.grub_jfs_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.grub_jfs_diropen*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.grub_jfs_data* %0, %struct.grub_jfs_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @grub_strlen(i8* %12)
  %14 = call i8* @grub_malloc(i64 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @grub_strlen(i8* %18)
  %20 = add nsw i64 %19, 1
  %21 = call i32 @grub_strncpy(i8* %16, i8* %17, i64 %20)
  %22 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %23 = load i32, i32* @GRUB_JFS_AGGR_INODE, align 4
  %24 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %25 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %24, i32 0, i32 0
  %26 = call i64 @grub_jfs_read_inode(%struct.grub_jfs_data* %22, i32 %23, %struct.TYPE_3__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @grub_free(i8* %29)
  %31 = load i64, i64* @grub_errno, align 8
  store i64 %31, i64* %3, align 8
  br label %175

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @grub_free(i8* %45)
  store i64 0, i64* %3, align 8
  br label %175

47:                                               ; preds = %38
  br label %33

48:                                               ; preds = %33
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @grub_strchr(i8* %49, i8 signext 47)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %59, %53
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 47
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  br label %54

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %67 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %68 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %67, i32 0, i32 0
  %69 = call %struct.grub_jfs_diropen* @grub_jfs_opendir(%struct.grub_jfs_data* %66, %struct.TYPE_3__* %68)
  store %struct.grub_jfs_diropen* %69, %struct.grub_jfs_diropen** %9, align 8
  %70 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %9, align 8
  %71 = icmp ne %struct.grub_jfs_diropen* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @grub_free(i8* %73)
  %75 = load i64, i64* @grub_errno, align 8
  store i64 %75, i64* %3, align 8
  br label %175

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %166, %165, %76
  %78 = load i8*, i8** %7, align 8
  %79 = call i64 @grub_strlen(i8* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @grub_free(i8* %82)
  %84 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %84, i64* %3, align 8
  br label %175

85:                                               ; preds = %77
  %86 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %9, align 8
  %87 = call i64 @grub_jfs_getent(%struct.grub_jfs_diropen* %86)
  %88 = load i64, i64* @GRUB_ERR_OUT_OF_RANGE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %167

91:                                               ; preds = %85
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %9, align 8
  %94 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @grub_strcmp(i8* %92, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %166, label %98

98:                                               ; preds = %91
  %99 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %9, align 8
  %100 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %10, align 4
  %102 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %103 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @grub_le_to_cpu32(i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %9, align 8
  %108 = call i32 @grub_jfs_closedir(%struct.grub_jfs_diropen* %107)
  store %struct.grub_jfs_diropen* null, %struct.grub_jfs_diropen** %9, align 8
  %109 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %112 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %111, i32 0, i32 0
  %113 = call i64 @grub_jfs_read_inode(%struct.grub_jfs_data* %109, i32 %110, %struct.TYPE_3__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %167

116:                                              ; preds = %98
  %117 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %118 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @grub_le_to_cpu32(i32 %120)
  %122 = load i32, i32* @GRUB_JFS_FILETYPE_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* @GRUB_JFS_FILETYPE_LNK, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %116
  %127 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @grub_jfs_lookup_symlink(%struct.grub_jfs_data* %127, i32 %128)
  %130 = load i64, i64* @grub_errno, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @grub_free(i8* %133)
  %135 = load i64, i64* @grub_errno, align 8
  store i64 %135, i64* %3, align 8
  br label %175

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %116
  %138 = load i8*, i8** %8, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @grub_free(i8* %141)
  store i64 0, i64* %3, align 8
  br label %175

143:                                              ; preds = %137
  %144 = load i8*, i8** %8, align 8
  store i8* %144, i8** %7, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = call i8* @grub_strchr(i8* %145, i8 signext 47)
  store i8* %146, i8** %8, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load i8*, i8** %8, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  store i8 0, i8* %151, align 1
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %8, align 8
  br label %154

154:                                              ; preds = %149, %143
  %155 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %156 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %157 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %156, i32 0, i32 0
  %158 = call %struct.grub_jfs_diropen* @grub_jfs_opendir(%struct.grub_jfs_data* %155, %struct.TYPE_3__* %157)
  store %struct.grub_jfs_diropen* %158, %struct.grub_jfs_diropen** %9, align 8
  %159 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %9, align 8
  %160 = icmp ne %struct.grub_jfs_diropen* %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %154
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @grub_free(i8* %162)
  %164 = load i64, i64* @grub_errno, align 8
  store i64 %164, i64* %3, align 8
  br label %175

165:                                              ; preds = %154
  br label %77

166:                                              ; preds = %91
  br label %77

167:                                              ; preds = %115, %90
  %168 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %9, align 8
  %169 = call i32 @grub_jfs_closedir(%struct.grub_jfs_diropen* %168)
  %170 = load i32, i32* @GRUB_ERR_FILE_NOT_FOUND, align 4
  %171 = call i32 @grub_error(i32 %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @grub_free(i8* %172)
  %174 = load i64, i64* @grub_errno, align 8
  store i64 %174, i64* %3, align 8
  br label %175

175:                                              ; preds = %167, %161, %140, %132, %81, %72, %44, %28
  %176 = load i64, i64* %3, align 8
  ret i64 %176
}

declare dso_local i8* @grub_malloc(i64) #1

declare dso_local i64 @grub_strlen(i8*) #1

declare dso_local i32 @grub_strncpy(i8*, i8*, i64) #1

declare dso_local i64 @grub_jfs_read_inode(%struct.grub_jfs_data*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i8* @grub_strchr(i8*, i8 signext) #1

declare dso_local %struct.grub_jfs_diropen* @grub_jfs_opendir(%struct.grub_jfs_data*, %struct.TYPE_3__*) #1

declare dso_local i64 @grub_jfs_getent(%struct.grub_jfs_diropen*) #1

declare dso_local i32 @grub_strcmp(i8*, i32) #1

declare dso_local i32 @grub_le_to_cpu32(i32) #1

declare dso_local i32 @grub_jfs_closedir(%struct.grub_jfs_diropen*) #1

declare dso_local i32 @grub_jfs_lookup_symlink(%struct.grub_jfs_data*, i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
