; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_iterate_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_iterate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.grub_fshelp_node = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.grub_xfs_dir_entry* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.grub_xfs_dir_entry = type { i64, i32 }
%struct.grub_xfs_iterate_dir_closure = type { i32 (i8*, i32, %struct.TYPE_22__*, i8*)*, %struct.grub_fshelp_node*, i8* }
%struct.grub_xfs_dirblock_tail = type { i32, i32 }
%struct.grub_xfs_dir2_entry = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@GRUB_ERR_NOT_IMPLEMENTED_YET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"XFS does not support inode format %d yet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, {}*, i8*)* @grub_xfs_iterate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_xfs_iterate_dir(%struct.TYPE_22__* %0, {}* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca {}*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.grub_fshelp_node*, align 8
  %9 = alloca %struct.grub_xfs_iterate_dir_closure, align 8
  %10 = alloca %struct.grub_xfs_dir_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.grub_xfs_dirblock_tail*, align 8
  %28 = alloca %struct.grub_xfs_dir2_entry*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store {}* %1, {}** %6, align 8
  store i8* %2, i8** %7, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = bitcast %struct.TYPE_22__* %32 to %struct.grub_fshelp_node*
  store %struct.grub_fshelp_node* %33, %struct.grub_fshelp_node** %8, align 8
  %34 = load {}*, {}** %6, align 8
  %35 = bitcast {}* %34 to i32 (i8*, i32, %struct.TYPE_22__*, i8*)*
  %36 = getelementptr inbounds %struct.grub_xfs_iterate_dir_closure, %struct.grub_xfs_iterate_dir_closure* %9, i32 0, i32 0
  store i32 (i8*, i32, %struct.TYPE_22__*, i8*)* %35, i32 (i8*, i32, %struct.TYPE_22__*, i8*)** %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds %struct.grub_xfs_iterate_dir_closure, %struct.grub_xfs_iterate_dir_closure* %9, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %40 = getelementptr inbounds %struct.grub_xfs_iterate_dir_closure, %struct.grub_xfs_iterate_dir_closure* %9, i32 0, i32 1
  store %struct.grub_fshelp_node* %39, %struct.grub_fshelp_node** %40, align 8
  %41 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %42 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %308 [
    i32 128, label %45
    i32 130, label %180
    i32 129, label %180
  ]

45:                                               ; preds = %3
  %46 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %47 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.grub_xfs_dir_entry*, %struct.grub_xfs_dir_entry** %50, align 8
  %52 = getelementptr inbounds %struct.grub_xfs_dir_entry, %struct.grub_xfs_dir_entry* %51, i64 0
  store %struct.grub_xfs_dir_entry* %52, %struct.grub_xfs_dir_entry** %10, align 8
  %53 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %54 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %45
  %66 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %67 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @grub_be_to_cpu32(i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @grub_cpu_to_be64(i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load %struct.grub_xfs_dir_entry*, %struct.grub_xfs_dir_entry** %10, align 8
  %78 = bitcast %struct.grub_xfs_dir_entry* %77 to i8*
  %79 = getelementptr inbounds i8, i8* %78, i64 -4
  %80 = bitcast i8* %79 to %struct.grub_xfs_dir_entry*
  store %struct.grub_xfs_dir_entry* %80, %struct.grub_xfs_dir_entry** %10, align 8
  br label %90

81:                                               ; preds = %45
  %82 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %83 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %81, %65
  %91 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %92 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @call_hook(i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.grub_xfs_iterate_dir_closure* %9)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 1, i32* %4, align 4
  br label %316

97:                                               ; preds = %90
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @call_hook(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.grub_xfs_iterate_dir_closure* %9)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 1, i32* %4, align 4
  br label %316

102:                                              ; preds = %97
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %176, %102
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %106 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %104, %111
  br i1 %112, label %113, label %179

113:                                              ; preds = %103
  %114 = load %struct.grub_xfs_dir_entry*, %struct.grub_xfs_dir_entry** %10, align 8
  %115 = bitcast %struct.grub_xfs_dir_entry* %114 to i8*
  %116 = getelementptr inbounds i8, i8* %115, i64 16
  %117 = load %struct.grub_xfs_dir_entry*, %struct.grub_xfs_dir_entry** %10, align 8
  %118 = getelementptr inbounds %struct.grub_xfs_dir_entry, %struct.grub_xfs_dir_entry* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = getelementptr inbounds i8, i8* %120, i64 -1
  store i8* %121, i8** %15, align 8
  %122 = load %struct.grub_xfs_dir_entry*, %struct.grub_xfs_dir_entry** %10, align 8
  %123 = getelementptr inbounds %struct.grub_xfs_dir_entry, %struct.grub_xfs_dir_entry* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, 1
  %126 = call i8* @llvm.stacksave()
  store i8* %126, i8** %16, align 8
  %127 = alloca i8, i64 %125, align 16
  store i64 %125, i64* %17, align 8
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %113
  %131 = load i8*, i8** %15, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @grub_be_to_cpu32(i32 %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @grub_cpu_to_be64(i32 %135)
  store i32 %136, i32* %14, align 4
  br label %141

137:                                              ; preds = %113
  %138 = load i8*, i8** %15, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %137, %130
  %142 = load %struct.grub_xfs_dir_entry*, %struct.grub_xfs_dir_entry** %10, align 8
  %143 = getelementptr inbounds %struct.grub_xfs_dir_entry, %struct.grub_xfs_dir_entry* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.grub_xfs_dir_entry*, %struct.grub_xfs_dir_entry** %10, align 8
  %146 = getelementptr inbounds %struct.grub_xfs_dir_entry, %struct.grub_xfs_dir_entry* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @grub_memcpy(i8* %127, i32 %144, i64 %147)
  %149 = load %struct.grub_xfs_dir_entry*, %struct.grub_xfs_dir_entry** %10, align 8
  %150 = getelementptr inbounds %struct.grub_xfs_dir_entry, %struct.grub_xfs_dir_entry* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i8, i8* %127, i64 %151
  store i8 0, i8* %152, align 1
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @call_hook(i32 %153, i8* %127, %struct.grub_xfs_iterate_dir_closure* %9)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %141
  store i32 1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %172

157:                                              ; preds = %141
  %158 = load %struct.grub_xfs_dir_entry*, %struct.grub_xfs_dir_entry** %10, align 8
  %159 = bitcast %struct.grub_xfs_dir_entry* %158 to i8*
  %160 = getelementptr inbounds i8, i8* %159, i64 16
  %161 = load %struct.grub_xfs_dir_entry*, %struct.grub_xfs_dir_entry** %10, align 8
  %162 = getelementptr inbounds %struct.grub_xfs_dir_entry, %struct.grub_xfs_dir_entry* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i64 4, i64 4
  %169 = getelementptr inbounds i8, i8* %164, i64 %168
  %170 = getelementptr inbounds i8, i8* %169, i64 -1
  %171 = bitcast i8* %170 to %struct.grub_xfs_dir_entry*
  store %struct.grub_xfs_dir_entry* %171, %struct.grub_xfs_dir_entry** %10, align 8
  store i32 0, i32* %18, align 4
  br label %172

172:                                              ; preds = %157, %156
  %173 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %18, align 4
  switch i32 %174, label %318 [
    i32 0, label %175
    i32 1, label %316
  ]

175:                                              ; preds = %172
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  br label %103

179:                                              ; preds = %103
  br label %315

180:                                              ; preds = %3, %3
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %186, %192
  store i32 %193, i32* %23, align 4
  %194 = load i32, i32* %23, align 4
  %195 = shl i32 1, %194
  store i32 %195, i32* %22, align 4
  %196 = load i32, i32* %22, align 4
  %197 = call i8* @grub_malloc(i32 %196)
  store i8* %197, i8** %20, align 8
  %198 = load i8*, i8** %20, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %180
  store i32 0, i32* %4, align 4
  br label %316

201:                                              ; preds = %180
  store i32 0, i32* %21, align 4
  br label %202

202:                                              ; preds = %302, %201
  %203 = load i32, i32* %21, align 4
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @grub_be_to_cpu64(i32 %207)
  %209 = load i32, i32* %23, align 4
  %210 = ashr i32 %208, %209
  %211 = icmp slt i32 %203, %210
  br i1 %211, label %212, label %305

212:                                              ; preds = %202
  store i32 16, i32* %24, align 4
  %213 = load i32, i32* %22, align 4
  %214 = sext i32 %213 to i64
  %215 = sub i64 %214, 8
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %26, align 4
  %217 = load i8*, i8** %20, align 8
  %218 = load i32, i32* %26, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = bitcast i8* %220 to %struct.grub_xfs_dirblock_tail*
  store %struct.grub_xfs_dirblock_tail* %221, %struct.grub_xfs_dirblock_tail** %27, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %223 = load i32, i32* %21, align 4
  %224 = load i32, i32* %23, align 4
  %225 = shl i32 %223, %224
  %226 = load i32, i32* %22, align 4
  %227 = load i8*, i8** %20, align 8
  %228 = call i32 @grub_xfs_read_file(%struct.TYPE_22__* %222, i32 0, i32 0, i32 0, i32 %225, i32 %226, i8* %227)
  store i32 %228, i32* %19, align 4
  %229 = load i32, i32* %19, align 4
  %230 = load i32, i32* %22, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %212
  store i32 0, i32* %4, align 4
  br label %316

233:                                              ; preds = %212
  %234 = load %struct.grub_xfs_dirblock_tail*, %struct.grub_xfs_dirblock_tail** %27, align 8
  %235 = getelementptr inbounds %struct.grub_xfs_dirblock_tail, %struct.grub_xfs_dirblock_tail* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @grub_be_to_cpu32(i32 %236)
  %238 = load %struct.grub_xfs_dirblock_tail*, %struct.grub_xfs_dirblock_tail** %27, align 8
  %239 = getelementptr inbounds %struct.grub_xfs_dirblock_tail, %struct.grub_xfs_dirblock_tail* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @grub_be_to_cpu32(i32 %240)
  %242 = sub nsw i32 %237, %241
  store i32 %242, i32* %25, align 4
  br label %243

243:                                              ; preds = %293, %259, %233
  %244 = load i32, i32* %24, align 4
  %245 = load i32, i32* %22, align 4
  %246 = sub nsw i32 %245, 16
  %247 = icmp slt i32 %244, %246
  br i1 %247, label %248, label %301

248:                                              ; preds = %243
  %249 = load i8*, i8** %20, align 8
  %250 = load i32, i32* %24, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = bitcast i8* %252 to %struct.grub_xfs_dir2_entry*
  store %struct.grub_xfs_dir2_entry* %253, %struct.grub_xfs_dir2_entry** %28, align 8
  %254 = load %struct.grub_xfs_dir2_entry*, %struct.grub_xfs_dir2_entry** %28, align 8
  %255 = bitcast %struct.grub_xfs_dir2_entry* %254 to i32*
  store i32* %255, i32** %29, align 8
  %256 = load i32*, i32** %29, align 8
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 65535
  br i1 %258, label %259, label %267

259:                                              ; preds = %248
  %260 = load i32*, i32** %29, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  store i32* %261, i32** %31, align 8
  %262 = load i32*, i32** %31, align 8
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @grub_be_to_cpu16(i32 %263)
  %265 = load i32, i32* %24, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %24, align 4
  br label %243

267:                                              ; preds = %248
  %268 = load i8*, i8** %20, align 8
  %269 = load i32, i32* %24, align 4
  %270 = sext i32 %269 to i64
  %271 = add i64 %270, 16
  %272 = getelementptr inbounds i8, i8* %268, i64 %271
  store i8* %272, i8** %30, align 8
  %273 = load i8*, i8** %30, align 8
  %274 = load %struct.grub_xfs_dir2_entry*, %struct.grub_xfs_dir2_entry** %28, align 8
  %275 = getelementptr inbounds %struct.grub_xfs_dir2_entry, %struct.grub_xfs_dir2_entry* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds i8, i8* %273, i64 %276
  store i8 0, i8* %277, align 1
  %278 = load %struct.grub_xfs_dir2_entry*, %struct.grub_xfs_dir2_entry** %28, align 8
  %279 = getelementptr inbounds %struct.grub_xfs_dir2_entry, %struct.grub_xfs_dir2_entry* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load i8*, i8** %30, align 8
  %282 = call i32 @call_hook(i32 %280, i8* %281, %struct.grub_xfs_iterate_dir_closure* %9)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %267
  %285 = load i8*, i8** %20, align 8
  %286 = call i32 @grub_free(i8* %285)
  store i32 1, i32* %4, align 4
  br label %316

287:                                              ; preds = %267
  %288 = load i32, i32* %25, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %25, align 4
  %290 = load i32, i32* %25, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %287
  br label %301

293:                                              ; preds = %287
  %294 = load i32, i32* %24, align 4
  %295 = load %struct.grub_xfs_dir2_entry*, %struct.grub_xfs_dir2_entry** %28, align 8
  %296 = getelementptr inbounds %struct.grub_xfs_dir2_entry, %struct.grub_xfs_dir2_entry* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = call i32 @GRUB_XFS_NEXT_DIRENT(i32 %294, i64 %297)
  store i32 %298, i32* %24, align 4
  %299 = load i32, i32* %24, align 4
  %300 = call i32 @GRUB_XFS_ROUND_TO_DIRENT(i32 %299)
  store i32 %300, i32* %24, align 4
  br label %243

301:                                              ; preds = %292, %243
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %21, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %21, align 4
  br label %202

305:                                              ; preds = %202
  %306 = load i8*, i8** %20, align 8
  %307 = call i32 @grub_free(i8* %306)
  br label %315

308:                                              ; preds = %3
  %309 = load i32, i32* @GRUB_ERR_NOT_IMPLEMENTED_YET, align 4
  %310 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %311 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @grub_error(i32 %309, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %313)
  br label %315

315:                                              ; preds = %308, %305, %179
  store i32 0, i32* %4, align 4
  br label %316

316:                                              ; preds = %315, %284, %232, %200, %172, %101, %96
  %317 = load i32, i32* %4, align 4
  ret i32 %317

318:                                              ; preds = %172
  unreachable
}

declare dso_local i32 @grub_be_to_cpu32(i32) #1

declare dso_local i32 @grub_cpu_to_be64(i32) #1

declare dso_local i32 @call_hook(i32, i8*, %struct.grub_xfs_iterate_dir_closure*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @grub_memcpy(i8*, i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_be_to_cpu64(i32) #1

declare dso_local i32 @grub_xfs_read_file(%struct.TYPE_22__*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @grub_be_to_cpu16(i32) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i32 @GRUB_XFS_NEXT_DIRENT(i32, i64) #1

declare dso_local i32 @GRUB_XFS_ROUND_TO_DIRENT(i32) #1

declare dso_local i32 @grub_error(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
