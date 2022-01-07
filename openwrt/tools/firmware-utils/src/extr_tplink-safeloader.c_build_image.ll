; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_tplink-safeloader.c_build_image.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_tplink-safeloader.c_build_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_info = type { i32, i64, %struct.flash_partition_entry* }
%struct.flash_partition_entry = type { i8*, i64, i64 }
%struct.image_partition_entry = type { i64 }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to stat file `%s'\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"kernel overflowed firmware partition\0A\00", align 1
@MAX_PARTITIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"file-system\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"os-image\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ARCHER-C2-V3\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ARCHER-C25-V1\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ARCHER-C59-V2\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ARCHER-C60-V2\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"TLWR1043NV5\00", align 1
@__const.build_image.mdat = private unnamed_addr constant [11 x i8] c"\00\00\00\02\00\00\00\00\01\00\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"extra-para\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"ARCHER-A7-V5\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"ARCHER-C7-V4\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"ARCHER-C7-V5\00", align 1
@__const.build_image.mdat.14 = private unnamed_addr constant [11 x i8] c"\01\00\00\02\00\00\CA\00\01\00\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"ARCHER-C6-V2\00", align 1
@__const.build_image.mdat.16 = private unnamed_addr constant [11 x i8] c"\00\00\00\02\00\00\00\00\00\01\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"unable to open output file\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"unable to write output file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32, i32, i32, %struct.device_info*)* @build_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_image(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.device_info* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.device_info*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [7 x %struct.image_partition_entry], align 16
  %17 = alloca %struct.flash_partition_entry*, align 8
  %18 = alloca %struct.flash_partition_entry*, align 8
  %19 = alloca %struct.flash_partition_entry*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.stat, align 8
  %22 = alloca %struct.image_partition_entry, align 8
  %23 = alloca %struct.image_partition_entry, align 8
  %24 = alloca %struct.image_partition_entry, align 8
  %25 = alloca %struct.image_partition_entry, align 8
  %26 = alloca %struct.image_partition_entry, align 8
  %27 = alloca %struct.image_partition_entry, align 8
  %28 = alloca [11 x i8], align 1
  %29 = alloca %struct.image_partition_entry, align 8
  %30 = alloca [11 x i8], align 1
  %31 = alloca %struct.image_partition_entry, align 8
  %32 = alloca [11 x i8], align 1
  %33 = alloca %struct.image_partition_entry, align 8
  %34 = alloca i64, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.device_info* %6, %struct.device_info** %14, align 8
  %37 = bitcast [7 x %struct.image_partition_entry]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 56, i1 false)
  store %struct.flash_partition_entry* null, %struct.flash_partition_entry** %17, align 8
  store %struct.flash_partition_entry* null, %struct.flash_partition_entry** %18, align 8
  store %struct.flash_partition_entry* null, %struct.flash_partition_entry** %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %15, align 8
  br label %38

38:                                               ; preds = %65, %7
  %39 = load %struct.device_info*, %struct.device_info** %14, align 8
  %40 = getelementptr inbounds %struct.device_info, %struct.device_info* %39, i32 0, i32 2
  %41 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %40, align 8
  %42 = load i64, i64* %15, align 8
  %43 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %41, i64 %42
  %44 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %38
  %48 = load %struct.device_info*, %struct.device_info** %14, align 8
  %49 = getelementptr inbounds %struct.device_info, %struct.device_info* %48, i32 0, i32 2
  %50 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %49, align 8
  %51 = load i64, i64* %15, align 8
  %52 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %50, i64 %51
  %53 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %47
  %58 = load %struct.device_info*, %struct.device_info** %14, align 8
  %59 = getelementptr inbounds %struct.device_info, %struct.device_info* %58, i32 0, i32 2
  %60 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %59, align 8
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %60, i64 %61
  store %struct.flash_partition_entry* %62, %struct.flash_partition_entry** %17, align 8
  %63 = load i64, i64* %15, align 8
  store i64 %63, i64* %20, align 8
  br label %64

64:                                               ; preds = %57, %47
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %15, align 8
  br label %38

68:                                               ; preds = %38
  %69 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %17, align 8
  %70 = icmp ne %struct.flash_partition_entry* %69, null
  br i1 %70, label %71, label %164

71:                                               ; preds = %68
  %72 = load %struct.device_info*, %struct.device_info** %14, align 8
  %73 = getelementptr inbounds %struct.device_info, %struct.device_info* %72, i32 0, i32 2
  %74 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %73, align 8
  %75 = load i64, i64* %20, align 8
  %76 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %74, i64 %75
  store %struct.flash_partition_entry* %76, %struct.flash_partition_entry** %18, align 8
  %77 = load %struct.device_info*, %struct.device_info** %14, align 8
  %78 = getelementptr inbounds %struct.device_info, %struct.device_info* %77, i32 0, i32 2
  %79 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %78, align 8
  %80 = load i64, i64* %20, align 8
  %81 = add i64 %80, 1
  %82 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %79, i64 %81
  store %struct.flash_partition_entry* %82, %struct.flash_partition_entry** %19, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i64 @stat(i8* %83, %struct.stat* %21)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %71
  %87 = load i32, i32* @errno, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %86, %71
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %17, align 8
  %94 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %90
  %100 = load i32, i32* @MAX_PARTITIONS, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %15, align 8
  br label %103

103:                                              ; preds = %122, %99
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* %20, align 8
  %106 = add i64 %105, 1
  %107 = icmp uge i64 %104, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %103
  %109 = load %struct.device_info*, %struct.device_info** %14, align 8
  %110 = getelementptr inbounds %struct.device_info, %struct.device_info* %109, i32 0, i32 2
  %111 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %110, align 8
  %112 = load i64, i64* %15, align 8
  %113 = add i64 %112, 1
  %114 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %111, i64 %113
  %115 = load %struct.device_info*, %struct.device_info** %14, align 8
  %116 = getelementptr inbounds %struct.device_info, %struct.device_info* %115, i32 0, i32 2
  %117 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %116, align 8
  %118 = load i64, i64* %15, align 8
  %119 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %117, i64 %118
  %120 = bitcast %struct.flash_partition_entry* %114 to i8*
  %121 = bitcast %struct.flash_partition_entry* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 24, i1 false)
  br label %122

122:                                              ; preds = %108
  %123 = load i64, i64* %15, align 8
  %124 = add i64 %123, -1
  store i64 %124, i64* %15, align 8
  br label %103

125:                                              ; preds = %103
  %126 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %19, align 8
  %127 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %126, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %127, align 8
  %128 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %17, align 8
  %129 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %130, %132
  %134 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %19, align 8
  %135 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %125
  %139 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %17, align 8
  %140 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %141, %143
  %145 = call i64 @ALIGN(i64 %144, i32 65536)
  %146 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %19, align 8
  %147 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %138, %125
  %149 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %17, align 8
  %150 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %19, align 8
  %153 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %151, %154
  %156 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %19, align 8
  %157 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  %158 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %18, align 8
  %159 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %158, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %159, align 8
  %160 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %18, align 8
  %163 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %148, %68
  %165 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 0
  %166 = load %struct.device_info*, %struct.device_info** %14, align 8
  %167 = getelementptr inbounds %struct.device_info, %struct.device_info* %166, i32 0, i32 2
  %168 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %167, align 8
  %169 = call i64 @make_partition_table(%struct.flash_partition_entry* %168)
  %170 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %22, i32 0, i32 0
  store i64 %169, i64* %170, align 8
  %171 = bitcast %struct.image_partition_entry* %165 to i8*
  %172 = bitcast %struct.image_partition_entry* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %171, i8* align 8 %172, i64 8, i1 false)
  %173 = load %struct.device_info*, %struct.device_info** %14, align 8
  %174 = getelementptr inbounds %struct.device_info, %struct.device_info* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %164
  %178 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 1
  %179 = load %struct.device_info*, %struct.device_info** %14, align 8
  %180 = getelementptr inbounds %struct.device_info, %struct.device_info* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i64 @make_soft_version_from_string(i64 %181)
  %183 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %23, i32 0, i32 0
  store i64 %182, i64* %183, align 8
  %184 = bitcast %struct.image_partition_entry* %178 to i8*
  %185 = bitcast %struct.image_partition_entry* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 %185, i64 8, i1 false)
  br label %193

186:                                              ; preds = %164
  %187 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 1
  %188 = load i32, i32* %11, align 4
  %189 = call i64 @make_soft_version(i32 %188)
  %190 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %24, i32 0, i32 0
  store i64 %189, i64* %190, align 8
  %191 = bitcast %struct.image_partition_entry* %187 to i8*
  %192 = bitcast %struct.image_partition_entry* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %191, i8* align 8 %192, i64 8, i1 false)
  br label %193

193:                                              ; preds = %186, %177
  %194 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 2
  %195 = load %struct.device_info*, %struct.device_info** %14, align 8
  %196 = call i64 @make_support_list(%struct.device_info* %195)
  %197 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %25, i32 0, i32 0
  store i64 %196, i64* %197, align 8
  %198 = bitcast %struct.image_partition_entry* %194 to i8*
  %199 = bitcast %struct.image_partition_entry* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %198, i8* align 8 %199, i64 8, i1 false)
  %200 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 3
  %201 = load i8*, i8** %9, align 8
  %202 = call i64 @read_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %201, i32 0, %struct.flash_partition_entry* null)
  %203 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %26, i32 0, i32 0
  store i64 %202, i64* %203, align 8
  %204 = bitcast %struct.image_partition_entry* %200 to i8*
  %205 = bitcast %struct.image_partition_entry* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 8, i1 false)
  %206 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 4
  %207 = load i8*, i8** %10, align 8
  %208 = load i32, i32* %12, align 4
  %209 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %19, align 8
  %210 = call i64 @read_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %207, i32 %208, %struct.flash_partition_entry* %209)
  %211 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %27, i32 0, i32 0
  store i64 %210, i64* %211, align 8
  %212 = bitcast %struct.image_partition_entry* %206 to i8*
  %213 = bitcast %struct.image_partition_entry* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %212, i8* align 8 %213, i64 8, i1 false)
  %214 = load %struct.device_info*, %struct.device_info** %14, align 8
  %215 = getelementptr inbounds %struct.device_info, %struct.device_info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @strcasecmp(i32 %216, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %243, label %219

219:                                              ; preds = %193
  %220 = load %struct.device_info*, %struct.device_info** %14, align 8
  %221 = getelementptr inbounds %struct.device_info, %struct.device_info* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i64 @strcasecmp(i32 %222, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %243, label %225

225:                                              ; preds = %219
  %226 = load %struct.device_info*, %struct.device_info** %14, align 8
  %227 = getelementptr inbounds %struct.device_info, %struct.device_info* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i64 @strcasecmp(i32 %228, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %243, label %231

231:                                              ; preds = %225
  %232 = load %struct.device_info*, %struct.device_info** %14, align 8
  %233 = getelementptr inbounds %struct.device_info, %struct.device_info* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i64 @strcasecmp(i32 %234, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %231
  %238 = load %struct.device_info*, %struct.device_info** %14, align 8
  %239 = getelementptr inbounds %struct.device_info, %struct.device_info* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i64 @strcasecmp(i32 %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %237, %231, %225, %219, %193
  %244 = bitcast [11 x i8]* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %244, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.build_image.mdat, i32 0, i32 0), i64 11, i1 false)
  %245 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 5
  %246 = getelementptr inbounds [11 x i8], [11 x i8]* %28, i64 0, i64 0
  %247 = call i64 @put_data(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %246, i32 11)
  %248 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %29, i32 0, i32 0
  store i64 %247, i64* %248, align 8
  %249 = bitcast %struct.image_partition_entry* %245 to i8*
  %250 = bitcast %struct.image_partition_entry* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %249, i8* align 8 %250, i64 8, i1 false)
  br label %293

251:                                              ; preds = %237
  %252 = load %struct.device_info*, %struct.device_info** %14, align 8
  %253 = getelementptr inbounds %struct.device_info, %struct.device_info* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i64 @strcasecmp(i32 %254, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %269, label %257

257:                                              ; preds = %251
  %258 = load %struct.device_info*, %struct.device_info** %14, align 8
  %259 = getelementptr inbounds %struct.device_info, %struct.device_info* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i64 @strcasecmp(i32 %260, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %257
  %264 = load %struct.device_info*, %struct.device_info** %14, align 8
  %265 = getelementptr inbounds %struct.device_info, %struct.device_info* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i64 @strcasecmp(i32 %266, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %263, %257, %251
  %270 = bitcast [11 x i8]* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %270, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.build_image.mdat.14, i32 0, i32 0), i64 11, i1 false)
  %271 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 5
  %272 = getelementptr inbounds [11 x i8], [11 x i8]* %30, i64 0, i64 0
  %273 = call i64 @put_data(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %272, i32 11)
  %274 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %31, i32 0, i32 0
  store i64 %273, i64* %274, align 8
  %275 = bitcast %struct.image_partition_entry* %271 to i8*
  %276 = bitcast %struct.image_partition_entry* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %275, i8* align 8 %276, i64 8, i1 false)
  br label %292

277:                                              ; preds = %263
  %278 = load %struct.device_info*, %struct.device_info** %14, align 8
  %279 = getelementptr inbounds %struct.device_info, %struct.device_info* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i64 @strcasecmp(i32 %280, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %277
  %284 = bitcast [11 x i8]* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %284, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.build_image.mdat.16, i32 0, i32 0), i64 11, i1 false)
  %285 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 5
  %286 = getelementptr inbounds [11 x i8], [11 x i8]* %32, i64 0, i64 0
  %287 = call i64 @put_data(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %286, i32 11)
  %288 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %33, i32 0, i32 0
  store i64 %287, i64* %288, align 8
  %289 = bitcast %struct.image_partition_entry* %285 to i8*
  %290 = bitcast %struct.image_partition_entry* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %289, i8* align 8 %290, i64 8, i1 false)
  br label %291

291:                                              ; preds = %283, %277
  br label %292

292:                                              ; preds = %291, %269
  br label %293

293:                                              ; preds = %292, %243
  %294 = load i32, i32* %13, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %293
  %297 = load %struct.device_info*, %struct.device_info** %14, align 8
  %298 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 0
  %299 = call i8* @generate_sysupgrade_image(%struct.device_info* %297, %struct.image_partition_entry* %298, i64* %34)
  store i8* %299, i8** %35, align 8
  br label %304

300:                                              ; preds = %293
  %301 = load %struct.device_info*, %struct.device_info** %14, align 8
  %302 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 0
  %303 = call i8* @generate_factory_image(%struct.device_info* %301, %struct.image_partition_entry* %302, i64* %34)
  store i8* %303, i8** %35, align 8
  br label %304

304:                                              ; preds = %300, %296
  %305 = load i8*, i8** %8, align 8
  %306 = call i32* @fopen(i8* %305, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  store i32* %306, i32** %36, align 8
  %307 = load i32*, i32** %36, align 8
  %308 = icmp ne i32* %307, null
  br i1 %308, label %312, label %309

309:                                              ; preds = %304
  %310 = load i32, i32* @errno, align 4
  %311 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %310, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  br label %312

312:                                              ; preds = %309, %304
  %313 = load i8*, i8** %35, align 8
  %314 = load i64, i64* %34, align 8
  %315 = load i32*, i32** %36, align 8
  %316 = call i32 @fwrite(i8* %313, i64 %314, i32 1, i32* %315)
  %317 = icmp ne i32 %316, 1
  br i1 %317, label %318, label %320

318:                                              ; preds = %312
  %319 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  br label %320

320:                                              ; preds = %318, %312
  %321 = load i32*, i32** %36, align 8
  %322 = call i32 @fclose(i32* %321)
  %323 = load i8*, i8** %35, align 8
  %324 = call i32 @free(i8* %323)
  store i64 0, i64* %15, align 8
  br label %325

325:                                              ; preds = %337, %320
  %326 = load i64, i64* %15, align 8
  %327 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 %326
  %328 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %340

331:                                              ; preds = %325
  %332 = load i64, i64* %15, align 8
  %333 = getelementptr inbounds [7 x %struct.image_partition_entry], [7 x %struct.image_partition_entry]* %16, i64 0, i64 %332
  %334 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @free_image_partition(i64 %335)
  br label %337

337:                                              ; preds = %331
  %338 = load i64, i64* %15, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %15, align 8
  br label %325

340:                                              ; preds = %325
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @error(i32, i32, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ALIGN(i64, i32) #2

declare dso_local i64 @make_partition_table(%struct.flash_partition_entry*) #2

declare dso_local i64 @make_soft_version_from_string(i64) #2

declare dso_local i64 @make_soft_version(i32) #2

declare dso_local i64 @make_support_list(%struct.device_info*) #2

declare dso_local i64 @read_file(i8*, i8*, i32, %struct.flash_partition_entry*) #2

declare dso_local i64 @strcasecmp(i32, i8*) #2

declare dso_local i64 @put_data(i8*, i8*, i32) #2

declare dso_local i8* @generate_sysupgrade_image(%struct.device_info*, %struct.image_partition_entry*, i64*) #2

declare dso_local i8* @generate_factory_image(%struct.device_info*, %struct.image_partition_entry*, i64*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @free_image_partition(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
