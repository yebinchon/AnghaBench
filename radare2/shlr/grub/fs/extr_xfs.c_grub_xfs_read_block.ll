; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_read_block.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64*, i32 }
%struct.grub_xfs_btree_node = type { i64*, i32, i64, i64 }

@XFS_INODE_FORMAT_BTREE = common dso_local global i64 0, align 8
@GRUB_DISK_SECTOR_BITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"BMAP\00", align 1
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"not a correct XFS BMAP node\00", align 1
@XFS_INODE_FORMAT_EXT = common dso_local global i64 0, align 8
@GRUB_ERR_NOT_IMPLEMENTED_YET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"XFS does not support inode format %d yet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i64)* @grub_xfs_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_xfs_read_block(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.grub_xfs_btree_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.grub_xfs_btree_node* null, %struct.grub_xfs_btree_node** %6, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XFS_INODE_FORMAT_BTREE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %136

22:                                               ; preds = %2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.grub_xfs_btree_node* @grub_malloc(i32 %28)
  store %struct.grub_xfs_btree_node* %29, %struct.grub_xfs_btree_node** %6, align 8
  %30 = load %struct.grub_xfs_btree_node*, %struct.grub_xfs_btree_node** %6, align 8
  %31 = icmp eq %struct.grub_xfs_btree_node* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i64 0, i64* %3, align 8
  br label %211

33:                                               ; preds = %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @grub_be_to_cpu16(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64* %47, i64** %11, align 8
  br label %48

48:                                               ; preds = %128, %33
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = load i64*, i64** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @grub_be_to_cpu64(i64 %59)
  %61 = icmp slt i64 %54, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %67

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %49

67:                                               ; preds = %62, %49
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.grub_xfs_btree_node*, %struct.grub_xfs_btree_node** %6, align 8
  %72 = call i32 @grub_free(%struct.grub_xfs_btree_node* %71)
  store i64 0, i64* %3, align 8
  br label %211

73:                                               ; preds = %67
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i64*, i64** %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %79, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @grub_be_to_cpu64(i64 %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @GRUB_DISK_SECTOR_BITS, align 8
  %95 = sub nsw i64 %93, %94
  %96 = shl i64 %87, %95
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.grub_xfs_btree_node*, %struct.grub_xfs_btree_node** %6, align 8
  %104 = call i64 @grub_disk_read(i32 %78, i64 %96, i32 0, i32 %102, %struct.grub_xfs_btree_node* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %73
  store i64 0, i64* %3, align 8
  br label %211

107:                                              ; preds = %73
  %108 = load %struct.grub_xfs_btree_node*, %struct.grub_xfs_btree_node** %6, align 8
  %109 = getelementptr inbounds %struct.grub_xfs_btree_node, %struct.grub_xfs_btree_node* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = call i64 @grub_strncmp(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load %struct.grub_xfs_btree_node*, %struct.grub_xfs_btree_node** %6, align 8
  %116 = call i32 @grub_free(%struct.grub_xfs_btree_node* %115)
  %117 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %118 = call i32 (i32, i8*, ...) @grub_error(i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %211

119:                                              ; preds = %107
  %120 = load %struct.grub_xfs_btree_node*, %struct.grub_xfs_btree_node** %6, align 8
  %121 = getelementptr inbounds %struct.grub_xfs_btree_node, %struct.grub_xfs_btree_node* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @grub_be_to_cpu16(i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.grub_xfs_btree_node*, %struct.grub_xfs_btree_node** %6, align 8
  %125 = getelementptr inbounds %struct.grub_xfs_btree_node, %struct.grub_xfs_btree_node* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  store i64* %127, i64** %11, align 8
  br label %128

128:                                              ; preds = %119
  %129 = load %struct.grub_xfs_btree_node*, %struct.grub_xfs_btree_node** %6, align 8
  %130 = getelementptr inbounds %struct.grub_xfs_btree_node, %struct.grub_xfs_btree_node* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %48, label %133

133:                                              ; preds = %128
  %134 = load i64*, i64** %11, align 8
  %135 = bitcast i64* %134 to i32*
  store i32* %135, i32** %9, align 8
  br label %163

136:                                              ; preds = %2
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @XFS_INODE_FORMAT_EXT, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %136
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @grub_be_to_cpu32(i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32* %154, i32** %9, align 8
  br label %162

155:                                              ; preds = %136
  %156 = load i32, i32* @GRUB_ERR_NOT_IMPLEMENTED_YET, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 (i32, i8*, ...) @grub_error(i32 %156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %160)
  store i64 0, i64* %3, align 8
  br label %211

162:                                              ; preds = %143
  br label %163

163:                                              ; preds = %162, %133
  store i32 0, i32* %7, align 4
  br label %164

164:                                              ; preds = %196, %163
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %199

168:                                              ; preds = %164
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i64 @GRUB_XFS_EXTENT_BLOCK(i32* %169, i32 %170)
  store i64 %171, i64* %13, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i64 @GRUB_XFS_EXTENT_OFFSET(i32* %172, i32 %173)
  store i64 %174, i64* %14, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i64 @GRUB_XFS_EXTENT_SIZE(i32* %175, i32 %176)
  store i64 %177, i64* %15, align 8
  %178 = load i64, i64* %5, align 8
  %179 = load i64, i64* %14, align 8
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %168
  br label %199

182:                                              ; preds = %168
  %183 = load i64, i64* %5, align 8
  %184 = load i64, i64* %14, align 8
  %185 = load i64, i64* %15, align 8
  %186 = add nsw i64 %184, %185
  %187 = icmp slt i64 %183, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  %189 = load i64, i64* %5, align 8
  %190 = load i64, i64* %14, align 8
  %191 = sub nsw i64 %189, %190
  %192 = load i64, i64* %13, align 8
  %193 = add nsw i64 %191, %192
  store i64 %193, i64* %10, align 8
  br label %199

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %164

199:                                              ; preds = %188, %181, %164
  %200 = load %struct.grub_xfs_btree_node*, %struct.grub_xfs_btree_node** %6, align 8
  %201 = icmp ne %struct.grub_xfs_btree_node* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load %struct.grub_xfs_btree_node*, %struct.grub_xfs_btree_node** %6, align 8
  %204 = call i32 @grub_free(%struct.grub_xfs_btree_node* %203)
  br label %205

205:                                              ; preds = %202, %199
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = load i64, i64* %10, align 8
  %210 = call i64 @GRUB_XFS_FSB_TO_BLOCK(%struct.TYPE_13__* %208, i64 %209)
  store i64 %210, i64* %3, align 8
  br label %211

211:                                              ; preds = %205, %155, %114, %106, %70, %32
  %212 = load i64, i64* %3, align 8
  ret i64 %212
}

declare dso_local %struct.grub_xfs_btree_node* @grub_malloc(i32) #1

declare dso_local i32 @grub_be_to_cpu16(i32) #1

declare dso_local i64 @grub_be_to_cpu64(i64) #1

declare dso_local i32 @grub_free(%struct.grub_xfs_btree_node*) #1

declare dso_local i64 @grub_disk_read(i32, i64, i32, i32, %struct.grub_xfs_btree_node*) #1

declare dso_local i64 @grub_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @grub_error(i32, i8*, ...) #1

declare dso_local i32 @grub_be_to_cpu32(i32) #1

declare dso_local i64 @GRUB_XFS_EXTENT_BLOCK(i32*, i32) #1

declare dso_local i64 @GRUB_XFS_EXTENT_OFFSET(i32*, i32) #1

declare dso_local i64 @GRUB_XFS_EXTENT_SIZE(i32*, i32) #1

declare dso_local i64 @GRUB_XFS_FSB_TO_BLOCK(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
