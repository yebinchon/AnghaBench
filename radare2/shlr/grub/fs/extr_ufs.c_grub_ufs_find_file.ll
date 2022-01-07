; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ufs.c_grub_ufs_find_file.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ufs.c_grub_ufs_find_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ufs_data = type { i32, i32 }
%struct.grub_ufs_dirent = type { i32, i32, i32, i32, i32 }

@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@grub_errno = common dso_local global i64 0, align 8
@GRUB_UFS_ATTR_TYPE = common dso_local global i32 0, align 4
@GRUB_UFS_ATTR_LNK = common dso_local global i32 0, align 4
@GRUB_UFS_ATTR_DIR = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FILE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not a directory\00", align 1
@GRUB_ERR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"file not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_ufs_data*, i8*)* @grub_ufs_find_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_ufs_find_file(%struct.grub_ufs_data* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.grub_ufs_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.grub_ufs_dirent, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.grub_ufs_data* %0, %struct.grub_ufs_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @grub_strlen(i8* %14)
  %16 = add nsw i64 %15, 1
  %17 = trunc i64 %16 to i32
  %18 = call i8* @grub_malloc(i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @grub_strcpy(i8* %20, i8* %21)
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @grub_free(i8* %35)
  store i64 0, i64* %3, align 8
  br label %191

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* @grub_strchr(i8* %39, i8 signext 47)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %180, %48
  %50 = bitcast %struct.grub_ufs_dirent* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %50, i8 0, i64 20, i1 false)
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @grub_strlen(i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @grub_free(i8* %55)
  %57 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %57, i64* %3, align 8
  br label %191

58:                                               ; preds = %49
  %59 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = bitcast %struct.grub_ufs_dirent* %11 to i8*
  %62 = call i64 @grub_ufs_read_file(%struct.grub_ufs_data* %59, i32 0, i32 0, i32 %60, i32 20, i8* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @grub_free(i8* %65)
  %67 = load i64, i64* @grub_errno, align 8
  store i64 %67, i64* %3, align 8
  br label %191

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.grub_ufs_dirent, %struct.grub_ufs_dirent* %11, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %72 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @grub_num_to_cpu16(i32 %70, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i8* @grub_malloc(i32 %76)
  store i8* %77, i8** %13, align 8
  %78 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = add i64 %80, 20
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %12, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = call i64 @grub_ufs_read_file(%struct.grub_ufs_data* %78, i32 0, i32 0, i32 %82, i32 %83, i8* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %68
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @grub_free(i8* %88)
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @grub_free(i8* %90)
  %92 = load i64, i64* @grub_errno, align 8
  store i64 %92, i64* %3, align 8
  br label %191

93:                                               ; preds = %68
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @grub_strcmp(i8* %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %169, label %102

102:                                              ; preds = %93
  %103 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %104 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %10, align 4
  %106 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %107 = getelementptr inbounds %struct.grub_ufs_dirent, %struct.grub_ufs_dirent* %11, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %110 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @grub_num_to_cpu32(i32 %108, i32 %111)
  %113 = call i32 @grub_ufs_read_inode(%struct.grub_ufs_data* %106, i32 %112, i32 0)
  %114 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %115 = call i32 @INODE_MODE(%struct.grub_ufs_data* %114)
  %116 = load i32, i32* @GRUB_UFS_ATTR_TYPE, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @GRUB_UFS_ATTR_LNK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %102
  %121 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @grub_ufs_lookup_symlink(%struct.grub_ufs_data* %121, i32 %122)
  %124 = load i64, i64* @grub_errno, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 @grub_free(i8* %127)
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 @grub_free(i8* %129)
  %131 = load i64, i64* @grub_errno, align 8
  store i64 %131, i64* %3, align 8
  br label %191

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %102
  %134 = load i8*, i8** %8, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @grub_free(i8* %137)
  %139 = load i8*, i8** %13, align 8
  %140 = call i32 @grub_free(i8* %139)
  store i64 0, i64* %3, align 8
  br label %191

141:                                              ; preds = %133
  store i32 0, i32* %9, align 4
  %142 = load i8*, i8** %8, align 8
  store i8* %142, i8** %7, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = call i8* @grub_strchr(i8* %143, i8 signext 47)
  store i8* %144, i8** %8, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  store i8 0, i8* %149, align 1
  %150 = load i8*, i8** %8, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %8, align 8
  br label %152

152:                                              ; preds = %147, %141
  %153 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %154 = call i32 @INODE_MODE(%struct.grub_ufs_data* %153)
  %155 = load i32, i32* @GRUB_UFS_ATTR_TYPE, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* @GRUB_UFS_ATTR_DIR, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %152
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 @grub_free(i8* %160)
  %162 = load i8*, i8** %13, align 8
  %163 = call i32 @grub_free(i8* %162)
  %164 = load i32, i32* @GRUB_ERR_BAD_FILE_TYPE, align 4
  %165 = call i64 @grub_error(i32 %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 %165, i64* %3, align 8
  br label %191

166:                                              ; preds = %152
  %167 = load i8*, i8** %13, align 8
  %168 = call i32 @grub_free(i8* %167)
  br label %180

169:                                              ; preds = %93
  %170 = load i8*, i8** %13, align 8
  %171 = call i32 @grub_free(i8* %170)
  %172 = getelementptr inbounds %struct.grub_ufs_dirent, %struct.grub_ufs_dirent* %11, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %175 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @grub_num_to_cpu16(i32 %173, i32 %176)
  %178 = load i32, i32* %9, align 4
  %179 = add i32 %178, %177
  store i32 %179, i32* %9, align 4
  br label %180

180:                                              ; preds = %169, %166
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %183 = call i32 @INODE_SIZE(%struct.grub_ufs_data* %182)
  %184 = icmp ult i32 %181, %183
  br i1 %184, label %49, label %185

185:                                              ; preds = %180
  %186 = load i8*, i8** %6, align 8
  %187 = call i32 @grub_free(i8* %186)
  %188 = load i32, i32* @GRUB_ERR_FILE_NOT_FOUND, align 4
  %189 = call i64 @grub_error(i32 %188, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %190 = load i64, i64* @grub_errno, align 8
  store i64 %190, i64* %3, align 8
  br label %191

191:                                              ; preds = %185, %159, %136, %126, %87, %64, %54, %34
  %192 = load i64, i64* %3, align 8
  ret i64 %192
}

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i64 @grub_strlen(i8*) #1

declare dso_local i32 @grub_strcpy(i8*, i8*) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i8* @grub_strchr(i8*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @grub_ufs_read_file(%struct.grub_ufs_data*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @grub_num_to_cpu16(i32, i32) #1

declare dso_local i32 @grub_strcmp(i8*, i8*) #1

declare dso_local i32 @grub_ufs_read_inode(%struct.grub_ufs_data*, i32, i32) #1

declare dso_local i32 @grub_num_to_cpu32(i32, i32) #1

declare dso_local i32 @INODE_MODE(%struct.grub_ufs_data*) #1

declare dso_local i32 @grub_ufs_lookup_symlink(%struct.grub_ufs_data*, i32) #1

declare dso_local i64 @grub_error(i32, i8*) #1

declare dso_local i32 @INODE_SIZE(%struct.grub_ufs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
