; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_iterate_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_iterate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_fshelp_node = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.grub_nilfs2_dir_entry = type { i64, i32, i64, i32 }

@grub_errno = common dso_local global i64 0, align 8
@GRUB_FSHELP_UNKNOWN = common dso_local global i32 0, align 4
@NILFS_FT_UNKNOWN = common dso_local global i64 0, align 8
@NILFS_FT_DIR = common dso_local global i64 0, align 8
@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@NILFS_FT_SYMLINK = common dso_local global i64 0, align 8
@GRUB_FSHELP_SYMLINK = common dso_local global i32 0, align 4
@NILFS_FT_REG_FILE = common dso_local global i64 0, align 8
@GRUB_FSHELP_REG = common dso_local global i32 0, align 4
@FILETYPE_INO_MASK = common dso_local global i32 0, align 4
@FILETYPE_INO_DIRECTORY = common dso_local global i32 0, align 4
@FILETYPE_INO_SYMLINK = common dso_local global i32 0, align 4
@FILETYPE_INO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_fshelp_node*, i32 (i8*, i32, %struct.grub_fshelp_node*, i8*)*, i8*)* @grub_nilfs2_iterate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_nilfs2_iterate_dir(%struct.grub_fshelp_node* %0, i32 (i8*, i32, %struct.grub_fshelp_node*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.grub_fshelp_node*, align 8
  %6 = alloca i32 (i8*, i32, %struct.grub_fshelp_node*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.grub_fshelp_node*, align 8
  %10 = alloca %struct.grub_nilfs2_dir_entry, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.grub_fshelp_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.grub_fshelp_node* %0, %struct.grub_fshelp_node** %5, align 8
  store i32 (i8*, i32, %struct.grub_fshelp_node*, i8*)* %1, i32 (i8*, i32, %struct.grub_fshelp_node*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %5, align 8
  store %struct.grub_fshelp_node* %16, %struct.grub_fshelp_node** %9, align 8
  %17 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %9, align 8
  %18 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %3
  %22 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %9, align 8
  %23 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %9, align 8
  %26 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %9, align 8
  %29 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %28, i32 0, i32 2
  %30 = call i32 @grub_nilfs2_read_inode(i32 %24, i32 %27, %struct.TYPE_2__* %29)
  %31 = load i64, i64* @grub_errno, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %211

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32 (i8*, i32, %struct.grub_fshelp_node*, i8*)*, i32 (i8*, i32, %struct.grub_fshelp_node*, i8*)** %6, align 8
  %37 = icmp ne i32 (i8*, i32, %struct.grub_fshelp_node*, i8*)* %36, null
  br i1 %37, label %38, label %210

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %203, %38
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %9, align 8
  %42 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @grub_le_to_cpu64(i32 %44)
  %46 = icmp ult i32 %40, %45
  br i1 %46, label %47, label %209

47:                                               ; preds = %39
  %48 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = bitcast %struct.grub_nilfs2_dir_entry* %10 to i8*
  %51 = call i32 @grub_nilfs2_read_file(%struct.grub_fshelp_node* %48, i32 0, i32 0, i32 0, i32 %49, i32 32, i8* %50)
  %52 = load i64, i64* @grub_errno, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %211

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.grub_nilfs2_dir_entry, %struct.grub_nilfs2_dir_entry* %10, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %211

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.grub_nilfs2_dir_entry, %struct.grub_nilfs2_dir_entry* %10, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %203

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.grub_nilfs2_dir_entry, %struct.grub_nilfs2_dir_entry* %10, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = call i8* @llvm.stacksave()
  store i8* %69, i8** %11, align 8
  %70 = alloca i8, i64 %68, align 16
  store i64 %68, i64* %12, align 8
  %71 = load i32, i32* @GRUB_FSHELP_UNKNOWN, align 4
  store i32 %71, i32* %14, align 4
  %72 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %9, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = add i64 %74, 32
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds %struct.grub_nilfs2_dir_entry, %struct.grub_nilfs2_dir_entry* %10, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @grub_nilfs2_read_file(%struct.grub_fshelp_node* %72, i32 0, i32 0, i32 0, i32 %76, i32 %78, i8* %70)
  %80 = load i64, i64* @grub_errno, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %199

83:                                               ; preds = %64
  %84 = call i8* @grub_malloc(i32 32)
  %85 = bitcast i8* %84 to %struct.grub_fshelp_node*
  store %struct.grub_fshelp_node* %85, %struct.grub_fshelp_node** %13, align 8
  %86 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %13, align 8
  %87 = icmp ne %struct.grub_fshelp_node* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %199

89:                                               ; preds = %83
  %90 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %9, align 8
  %91 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %13, align 8
  %94 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = getelementptr inbounds %struct.grub_nilfs2_dir_entry, %struct.grub_nilfs2_dir_entry* %10, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @grub_le_to_cpu64(i32 %96)
  %98 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %13, align 8
  %99 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds %struct.grub_nilfs2_dir_entry, %struct.grub_nilfs2_dir_entry* %10, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %70, i64 %102
  store i8 0, i8* %103, align 1
  %104 = getelementptr inbounds %struct.grub_nilfs2_dir_entry, %struct.grub_nilfs2_dir_entry* %10, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NILFS_FT_UNKNOWN, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %134

108:                                              ; preds = %89
  %109 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %13, align 8
  %110 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  %111 = getelementptr inbounds %struct.grub_nilfs2_dir_entry, %struct.grub_nilfs2_dir_entry* %10, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @NILFS_FT_DIR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  store i32 %116, i32* %14, align 4
  br label %133

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.grub_nilfs2_dir_entry, %struct.grub_nilfs2_dir_entry* %10, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NILFS_FT_SYMLINK, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @GRUB_FSHELP_SYMLINK, align 4
  store i32 %123, i32* %14, align 4
  br label %132

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.grub_nilfs2_dir_entry, %struct.grub_nilfs2_dir_entry* %10, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @NILFS_FT_REG_FILE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @GRUB_FSHELP_REG, align 4
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %129, %124
  br label %132

132:                                              ; preds = %131, %122
  br label %133

133:                                              ; preds = %132, %115
  br label %190

134:                                              ; preds = %89
  %135 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %9, align 8
  %136 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.grub_nilfs2_dir_entry, %struct.grub_nilfs2_dir_entry* %10, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @grub_le_to_cpu64(i32 %139)
  %141 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %13, align 8
  %142 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %141, i32 0, i32 2
  %143 = call i32 @grub_nilfs2_read_inode(i32 %137, i32 %140, %struct.TYPE_2__* %142)
  %144 = load i64, i64* @grub_errno, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %134
  %147 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %13, align 8
  %148 = call i32 @grub_free(%struct.grub_fshelp_node* %147)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %199

149:                                              ; preds = %134
  %150 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %13, align 8
  %151 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %13, align 8
  %153 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @grub_le_to_cpu16(i64 %155)
  %157 = load i32, i32* @FILETYPE_INO_MASK, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* @FILETYPE_INO_DIRECTORY, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  store i32 %162, i32* %14, align 4
  br label %189

163:                                              ; preds = %149
  %164 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %13, align 8
  %165 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @grub_le_to_cpu16(i64 %167)
  %169 = load i32, i32* @FILETYPE_INO_MASK, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* @FILETYPE_INO_SYMLINK, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = load i32, i32* @GRUB_FSHELP_SYMLINK, align 4
  store i32 %174, i32* %14, align 4
  br label %188

175:                                              ; preds = %163
  %176 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %13, align 8
  %177 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @grub_le_to_cpu16(i64 %179)
  %181 = load i32, i32* @FILETYPE_INO_MASK, align 4
  %182 = and i32 %180, %181
  %183 = load i32, i32* @FILETYPE_INO_REG, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %175
  %186 = load i32, i32* @GRUB_FSHELP_REG, align 4
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %185, %175
  br label %188

188:                                              ; preds = %187, %173
  br label %189

189:                                              ; preds = %188, %161
  br label %190

190:                                              ; preds = %189, %133
  %191 = load i32 (i8*, i32, %struct.grub_fshelp_node*, i8*)*, i32 (i8*, i32, %struct.grub_fshelp_node*, i8*)** %6, align 8
  %192 = load i32, i32* %14, align 4
  %193 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %13, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = call i32 %191(i8* %70, i32 %192, %struct.grub_fshelp_node* %193, i8* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %199

198:                                              ; preds = %190
  store i32 0, i32* %15, align 4
  br label %199

199:                                              ; preds = %198, %197, %146, %88, %82
  %200 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i32, i32* %15, align 4
  switch i32 %201, label %213 [
    i32 0, label %202
    i32 1, label %211
  ]

202:                                              ; preds = %199
  br label %203

203:                                              ; preds = %202, %60
  %204 = getelementptr inbounds %struct.grub_nilfs2_dir_entry, %struct.grub_nilfs2_dir_entry* %10, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @grub_le_to_cpu16(i64 %205)
  %207 = load i32, i32* %8, align 4
  %208 = add i32 %207, %206
  store i32 %208, i32* %8, align 4
  br label %39

209:                                              ; preds = %39
  br label %210

210:                                              ; preds = %209, %35
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %210, %199, %59, %54, %33
  %212 = load i32, i32* %4, align 4
  ret i32 %212

213:                                              ; preds = %199
  unreachable
}

declare dso_local i32 @grub_nilfs2_read_inode(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @grub_le_to_cpu64(i32) #1

declare dso_local i32 @grub_nilfs2_read_file(%struct.grub_fshelp_node*, i32, i32, i32, i32, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_free(%struct.grub_fshelp_node*) #1

declare dso_local i32 @grub_le_to_cpu16(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
