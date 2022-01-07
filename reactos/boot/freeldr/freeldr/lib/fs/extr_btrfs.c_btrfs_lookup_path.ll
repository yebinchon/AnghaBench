; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_btrfs_lookup_path.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_btrfs_lookup_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root_item = type { i32 }
%struct.btrfs_inode_item = type { i32 }
%struct.btrfs_dir_item = type { %struct.btrfs_disk_key, i32 }
%struct.btrfs_disk_key = type { i64, i32, i32 }

@BTRFS_FT_DIR = common dso_local global i32 0, align 4
@BTRFS_NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: Name too long at \22%.*s\22\0A\00", align 1
@INVALID_INODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Try to find case-insensitive, path=%s inr=%llu s=%.*s\0A\00", align 1
@BTRFS_FT_SYMLINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: Too much symlinks!\0A\00", align 1
@TAG_BTRFS_LINK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: \22%.*s\22 not a directory\0A\00", align 1
@BTRFS_INODE_ITEM_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root_item*, i32, i8*, i32*, %struct.btrfs_inode_item*, i32)* @btrfs_lookup_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_lookup_path(%struct.btrfs_root_item* %0, i32 %1, i8* %2, i32* %3, %struct.btrfs_inode_item* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_root_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.btrfs_inode_item*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_dir_item, align 8
  %15 = alloca %struct.btrfs_inode_item, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.btrfs_disk_key, align 8
  %21 = alloca i8*, align 8
  store %struct.btrfs_root_item* %0, %struct.btrfs_root_item** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.btrfs_inode_item* %4, %struct.btrfs_inode_item** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* @BTRFS_FT_DIR, align 4
  store i32 %22, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %23 = load i8*, i8** %10, align 8
  store i8* %23, i8** %19, align 8
  store i8* null, i8** %21, align 8
  %24 = load i8*, i8** %19, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %33, label %28

28:                                               ; preds = %6
  %29 = load i8*, i8** %19, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 92
  br i1 %32, label %33, label %39

33:                                               ; preds = %28, %6
  %34 = load i8*, i8** %19, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %19, align 8
  %36 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %200, %39
  %41 = load i8*, i8** %19, align 8
  %42 = call i8* @skip_current_directories(i8* %41)
  store i8* %42, i8** %19, align 8
  %43 = load i8*, i8** %19, align 8
  %44 = call i32 @next_length(i8* %43)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* @BTRFS_NAME_MAX, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, i32* @BTRFS_NAME_MAX, align 4
  %50 = load i8*, i8** %19, align 8
  %51 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %49, i8* %50)
  %52 = load i32, i32* @INVALID_INODE, align 4
  store i32 %52, i32* %7, align 4
  br label %234

53:                                               ; preds = %40
  %54 = load i32, i32* %17, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i8*, i8** %19, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %204

63:                                               ; preds = %56, %53
  %64 = load i32, i32* %17, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  %67 = load i8*, i8** %19, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 46
  br i1 %71, label %72, label %91

72:                                               ; preds = %66
  %73 = load i8*, i8** %19, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load i8*, i8** %19, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %19, align 8
  %81 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @get_parent_inode(%struct.btrfs_root_item* %81, i32 %82, %struct.btrfs_inode_item* %15)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @INVALID_INODE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* @INVALID_INODE, align 4
  store i32 %88, i32* %7, align 4
  br label %234

89:                                               ; preds = %78
  %90 = load i32, i32* @BTRFS_FT_DIR, align 4
  store i32 %90, i32* %16, align 4
  br label %200

91:                                               ; preds = %72, %66, %63
  %92 = load i8*, i8** %19, align 8
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  br label %204

96:                                               ; preds = %91
  %97 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i8*, i8** %19, align 8
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @BtrFsLookupDirItem(%struct.btrfs_root_item* %97, i32 %98, i8* %99, i32 %100, %struct.btrfs_dir_item* %14)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %96
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i8*, i8** %19, align 8
  %108 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %104, i32 %105, i32 %106, i8* %107)
  %109 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i8*, i8** %19, align 8
  %112 = load i32, i32* %17, align 4
  %113 = call i32 @BtrFsLookupDirItemI(%struct.btrfs_root_item* %109, i32 %110, i8* %111, i32 %112, %struct.btrfs_dir_item* %14)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %103
  %116 = load i32, i32* @INVALID_INODE, align 4
  store i32 %116, i32* %7, align 4
  br label %234

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %96
  %119 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %14, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %16, align 4
  store i32 1, i32* %18, align 4
  %121 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %8, align 8
  %122 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %14, i32 0, i32 0
  %123 = call i64 @btrfs_lookup_inode(%struct.btrfs_root_item* %121, %struct.btrfs_disk_key* %122, %struct.btrfs_inode_item* %15, i32* null)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @INVALID_INODE, align 4
  store i32 %126, i32* %7, align 4
  br label %234

127:                                              ; preds = %118
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* @BTRFS_FT_SYMLINK, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %165

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %165

134:                                              ; preds = %131
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %139 = load i32, i32* @INVALID_INODE, align 4
  store i32 %139, i32* %7, align 4
  br label %234

140:                                              ; preds = %134
  %141 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %8, align 8
  %142 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %14, i32 0, i32 0
  %143 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @btrfs_readlink(%struct.btrfs_root_item* %141, i32 %144, i8** %21)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %140
  %148 = load i32, i32* @INVALID_INODE, align 4
  store i32 %148, i32* %7, align 4
  br label %234

149:                                              ; preds = %140
  %150 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i8*, i8** %21, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sub nsw i32 %153, 1
  %155 = call i32 @btrfs_lookup_path(%struct.btrfs_root_item* %150, i32 %151, i8* %152, i32* %16, %struct.btrfs_inode_item* %15, i32 %154)
  store i32 %155, i32* %9, align 4
  %156 = load i8*, i8** %21, align 8
  %157 = load i32, i32* @TAG_BTRFS_LINK, align 4
  %158 = call i32 @FrLdrTempFree(i8* %156, i32 %157)
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @INVALID_INODE, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %149
  %163 = load i32, i32* @INVALID_INODE, align 4
  store i32 %163, i32* %7, align 4
  br label %234

164:                                              ; preds = %149
  br label %195

165:                                              ; preds = %131, %127
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* @BTRFS_FT_DIR, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %165
  %170 = load i8*, i8** %19, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %169
  %178 = load i8*, i8** %19, align 8
  %179 = load i8*, i8** %10, align 8
  %180 = ptrtoint i8* %178 to i64
  %181 = ptrtoint i8* %179 to i64
  %182 = sub i64 %180, %181
  %183 = load i32, i32* %17, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %182, %184
  %186 = trunc i64 %185 to i32
  %187 = load i8*, i8** %10, align 8
  %188 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %186, i8* %187)
  %189 = load i32, i32* @INVALID_INODE, align 4
  store i32 %189, i32* %7, align 4
  br label %234

190:                                              ; preds = %169, %165
  %191 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %14, i32 0, i32 0
  %192 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %190
  br label %195

195:                                              ; preds = %194, %164
  %196 = load i32, i32* %17, align 4
  %197 = load i8*, i8** %19, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %19, align 8
  br label %200

200:                                              ; preds = %195, %89
  %201 = load i8*, i8** %19, align 8
  %202 = load i8, i8* %201, align 1
  %203 = icmp ne i8 %202, 0
  br i1 %203, label %40, label %204

204:                                              ; preds = %200, %95, %62
  %205 = load i32*, i32** %11, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32, i32* %16, align 4
  %209 = load i32*, i32** %11, align 8
  store i32 %208, i32* %209, align 4
  br label %210

210:                                              ; preds = %207, %204
  %211 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %12, align 8
  %212 = icmp ne %struct.btrfs_inode_item* %211, null
  br i1 %212, label %213, label %232

213:                                              ; preds = %210
  %214 = load i32, i32* %18, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %228, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %9, align 4
  %218 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %20, i32 0, i32 2
  store i32 %217, i32* %218, align 4
  %219 = load i32, i32* @BTRFS_INODE_ITEM_KEY, align 4
  %220 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %20, i32 0, i32 1
  store i32 %219, i32* %220, align 8
  %221 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %20, i32 0, i32 0
  store i64 0, i64* %221, align 8
  %222 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %8, align 8
  %223 = call i64 @btrfs_lookup_inode(%struct.btrfs_root_item* %222, %struct.btrfs_disk_key* %20, %struct.btrfs_inode_item* %15, i32* null)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %216
  %226 = load i32, i32* @INVALID_INODE, align 4
  store i32 %226, i32* %7, align 4
  br label %234

227:                                              ; preds = %216
  br label %228

228:                                              ; preds = %227, %213
  %229 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %12, align 8
  %230 = bitcast %struct.btrfs_inode_item* %229 to i8*
  %231 = bitcast %struct.btrfs_inode_item* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %230, i8* align 4 %231, i64 4, i1 false)
  br label %232

232:                                              ; preds = %228, %210
  %233 = load i32, i32* %9, align 4
  store i32 %233, i32* %7, align 4
  br label %234

234:                                              ; preds = %232, %225, %177, %162, %147, %137, %125, %115, %87, %48
  %235 = load i32, i32* %7, align 4
  ret i32 %235
}

declare dso_local i8* @skip_current_directories(i8*) #1

declare dso_local i32 @next_length(i8*) #1

declare dso_local i32 @ERR(i8*, i32, i8*) #1

declare dso_local i32 @get_parent_inode(%struct.btrfs_root_item*, i32, %struct.btrfs_inode_item*) #1

declare dso_local i32 @BtrFsLookupDirItem(%struct.btrfs_root_item*, i32, i8*, i32, %struct.btrfs_dir_item*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @BtrFsLookupDirItemI(%struct.btrfs_root_item*, i32, i8*, i32, %struct.btrfs_dir_item*) #1

declare dso_local i64 @btrfs_lookup_inode(%struct.btrfs_root_item*, %struct.btrfs_disk_key*, %struct.btrfs_inode_item*, i32*) #1

declare dso_local i32 @btrfs_readlink(%struct.btrfs_root_item*, i32, i8**) #1

declare dso_local i32 @FrLdrTempFree(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
