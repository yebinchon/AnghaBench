; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_minix_find_file.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_minix_find_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_minix_data = type { i32, i32 }

@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@grub_errno = common dso_local global i64 0, align 8
@GRUB_MINIX_IFLNK = common dso_local global i32 0, align 4
@GRUB_MINIX_IFDIR = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FILE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not a directory\00", align 1
@GRUB_ERR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"file not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_minix_data*, i8*)* @grub_minix_find_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_minix_find_file(%struct.grub_minix_data* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.grub_minix_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.grub_minix_data* %0, %struct.grub_minix_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @grub_strlen(i8* %13)
  %15 = add nsw i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = call i8* @grub_malloc(i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @grub_strcpy(i8* %19, i8* %20)
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @grub_free(i8* %34)
  store i64 0, i64* %3, align 8
  br label %188

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @grub_strchr(i8* %38, i8 signext 47)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %177, %47
  %49 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %50 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i8* @grub_malloc(i32 %52)
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @grub_strlen(i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @grub_free(i8* %58)
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @grub_free(i8* %60)
  %62 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %62, i64* %3, align 8
  br label %188

63:                                               ; preds = %48
  %64 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = bitcast i32* %11 to i8*
  %67 = call i64 @grub_minix_read_file(%struct.grub_minix_data* %64, i32 0, i32 0, i32 %65, i32 4, i8* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @grub_free(i8* %70)
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @grub_free(i8* %72)
  %74 = load i64, i64* @grub_errno, align 8
  store i64 %74, i64* %3, align 8
  br label %188

75:                                               ; preds = %63
  %76 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = add i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %82 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %12, align 8
  %85 = call i64 @grub_minix_read_file(%struct.grub_minix_data* %76, i32 0, i32 0, i32 %80, i32 %83, i8* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %75
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @grub_free(i8* %88)
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @grub_free(i8* %90)
  %92 = load i64, i64* @grub_errno, align 8
  store i64 %92, i64* %3, align 8
  br label %188

93:                                               ; preds = %75
  %94 = load i8*, i8** %12, align 8
  %95 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %96 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @grub_strcmp(i8* %100, i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %167, label %104

104:                                              ; preds = %93
  %105 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %106 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  %108 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @grub_le_to_cpu16(i32 %109)
  %111 = call i32 @grub_minix_read_inode(%struct.grub_minix_data* %108, i32 %110)
  %112 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %113 = call i32 @GRUB_MINIX_INODE_MODE(%struct.grub_minix_data* %112)
  %114 = load i32, i32* @GRUB_MINIX_IFLNK, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @GRUB_MINIX_IFLNK, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %104
  %119 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @grub_minix_lookup_symlink(%struct.grub_minix_data* %119, i32 %120)
  %122 = load i64, i64* @grub_errno, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @grub_free(i8* %125)
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 @grub_free(i8* %127)
  %129 = load i64, i64* @grub_errno, align 8
  store i64 %129, i64* %3, align 8
  br label %188

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %130, %104
  %132 = load i8*, i8** %8, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @grub_free(i8* %135)
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 @grub_free(i8* %137)
  store i64 0, i64* %3, align 8
  br label %188

139:                                              ; preds = %131
  store i32 0, i32* %9, align 4
  %140 = load i8*, i8** %8, align 8
  store i8* %140, i8** %7, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = call i8* @grub_strchr(i8* %141, i8 signext 47)
  store i8* %142, i8** %8, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  store i8 0, i8* %147, align 1
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %8, align 8
  br label %150

150:                                              ; preds = %145, %139
  %151 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %152 = call i32 @GRUB_MINIX_INODE_MODE(%struct.grub_minix_data* %151)
  %153 = load i32, i32* @GRUB_MINIX_IFDIR, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* @GRUB_MINIX_IFDIR, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 @grub_free(i8* %158)
  %160 = load i8*, i8** %12, align 8
  %161 = call i32 @grub_free(i8* %160)
  %162 = load i32, i32* @GRUB_ERR_BAD_FILE_TYPE, align 4
  %163 = call i64 @grub_error(i32 %162, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 %163, i64* %3, align 8
  br label %188

164:                                              ; preds = %150
  %165 = load i8*, i8** %12, align 8
  %166 = call i32 @grub_free(i8* %165)
  br label %177

167:                                              ; preds = %93
  %168 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %169 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = add i64 4, %171
  %173 = load i32, i32* %9, align 4
  %174 = zext i32 %173 to i64
  %175 = add i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %167, %164
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %180 = call i32 @GRUB_MINIX_INODE_SIZE(%struct.grub_minix_data* %179)
  %181 = icmp ult i32 %178, %180
  br i1 %181, label %48, label %182

182:                                              ; preds = %177
  %183 = load i8*, i8** %6, align 8
  %184 = call i32 @grub_free(i8* %183)
  %185 = load i32, i32* @GRUB_ERR_FILE_NOT_FOUND, align 4
  %186 = call i64 @grub_error(i32 %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %187 = load i64, i64* @grub_errno, align 8
  store i64 %187, i64* %3, align 8
  br label %188

188:                                              ; preds = %182, %157, %134, %124, %87, %69, %57, %33
  %189 = load i64, i64* %3, align 8
  ret i64 %189
}

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i64 @grub_strlen(i8*) #1

declare dso_local i32 @grub_strcpy(i8*, i8*) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i8* @grub_strchr(i8*, i8 signext) #1

declare dso_local i64 @grub_minix_read_file(%struct.grub_minix_data*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @grub_strcmp(i8*, i8*) #1

declare dso_local i32 @grub_minix_read_inode(%struct.grub_minix_data*, i32) #1

declare dso_local i32 @grub_le_to_cpu16(i32) #1

declare dso_local i32 @GRUB_MINIX_INODE_MODE(%struct.grub_minix_data*) #1

declare dso_local i32 @grub_minix_lookup_symlink(%struct.grub_minix_data*, i32) #1

declare dso_local i64 @grub_error(i32, i8*) #1

declare dso_local i32 @GRUB_MINIX_INODE_SIZE(%struct.grub_minix_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
