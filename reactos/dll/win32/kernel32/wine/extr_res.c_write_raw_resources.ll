; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_write_raw_resources.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_write_raw_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i8*, i32 }
%struct.TYPE_26__ = type { i32, i32, i64, i64, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_24__, %struct.TYPE_19__ }
%struct.TYPE_24__ = type { i64, i64, i64, i64, i64, %struct.TYPE_22__*, i8* }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i64, i64, i64, %struct.TYPE_21__*, i8* }
%struct.TYPE_21__ = type { i32, i64 }
%struct.resource_size_info = type { i64 }
%struct.mapping_info = type { i64, i64 }

@write_raw_resources.prefix = internal constant [5 x i8] c"resu\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tempfile %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to read existing resources\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@IMAGE_NT_OPTIONAL_HDR64_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid section alignment %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"invalid file alignment %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".rsrc\00", align 1
@IMAGE_SCN_CNT_INITIALIZED_DATA = common dso_local global i32 0, align 4
@IMAGE_SCN_MEM_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"before .rsrc at %08x, size %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"requires %08x (%08x) bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"file size %08x -> %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"couldn't get NT header\0A\00", align 1
@IMAGE_DIRECTORY_ENTRY_RESOURCE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"base = %p offset = %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"after  .rsrc at %08x, size %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @write_raw_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_raw_resources(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.resource_size_info, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.mapping_info*, align 8
  %16 = alloca %struct.mapping_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_26__*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %33 = load i32, i32* @MAX_PATH, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %4, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %5, align 8
  %37 = load i32, i32* @MAX_PATH, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %6, align 8
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %9, align 4
  store %struct.mapping_info* null, %struct.mapping_info** %15, align 8
  store %struct.mapping_info* null, %struct.mapping_info** %16, align 8
  %41 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %41, align 16
  %42 = load i32, i32* @MAX_PATH, align 4
  %43 = call i32 @GetTempPathW(i32 %42, i8* %36)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %1
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %670

47:                                               ; preds = %1
  %48 = call i32 @GetTempFileNameW(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_raw_resources.prefix, i64 0, i64 0), i32 0, i8* %39)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %670

52:                                               ; preds = %47
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i32 @CopyFileW(i8* %55, i8* %39, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %654

60:                                               ; preds = %52
  %61 = call i32 @debugstr_w(i8* %39)
  %62 = sext i32 %61 to i64
  %63 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %91, label %68

68:                                               ; preds = %60
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = call %struct.mapping_info* @create_mapping(i8* %71, i32 %72)
  store %struct.mapping_info* %73, %struct.mapping_info** %15, align 8
  %74 = load %struct.mapping_info*, %struct.mapping_info** %15, align 8
  %75 = icmp ne %struct.mapping_info* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  br label %654

77:                                               ; preds = %68
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %79 = load %struct.mapping_info*, %struct.mapping_info** %15, align 8
  %80 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.mapping_info*, %struct.mapping_info** %15, align 8
  %83 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @read_mapped_resources(%struct.TYPE_25__* %78, i64 %81, i64 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  %89 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %654

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %60
  %92 = load i32, i32* @TRUE, align 4
  %93 = call %struct.mapping_info* @create_mapping(i8* %39, i32 %92)
  store %struct.mapping_info* %93, %struct.mapping_info** %16, align 8
  %94 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %95 = icmp ne %struct.mapping_info* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %654

97:                                               ; preds = %91
  %98 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %99 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %102 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @get_nt_header(i64 %100, i64 %103)
  %105 = inttoptr i64 %104 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %105, %struct.TYPE_18__** %11, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %107 = icmp ne %struct.TYPE_18__* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %97
  br label %654

109:                                              ; preds = %97
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %111 = bitcast %struct.TYPE_18__* %110 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %111, %struct.TYPE_27__** %12, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @IMAGE_NT_OPTIONAL_HDR64_MAGIC, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %109
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %17, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %18, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %19, align 8
  br label %144

131:                                              ; preds = %109
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %17, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %18, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %19, align 8
  br label %144

144:                                              ; preds = %131, %118
  %145 = load i64, i64* %17, align 8
  %146 = icmp sle i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i64, i64* %17, align 8
  %149 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %148)
  br label %654

150:                                              ; preds = %144
  %151 = load i64, i64* %18, align 8
  %152 = icmp sle i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i64, i64* %18, align 8
  %155 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %154)
  br label %654

156:                                              ; preds = %150
  %157 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %158 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %161 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call %struct.TYPE_26__* @get_resource_section(i64 %159, i64 %162)
  store %struct.TYPE_26__* %163, %struct.TYPE_26__** %10, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %165 = icmp ne %struct.TYPE_26__* %164, null
  br i1 %165, label %201, label %166

166:                                              ; preds = %156
  %167 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %168 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %171 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call %struct.TYPE_26__* @get_section_header(i64 %169, i64 %172, i64* %21)
  store %struct.TYPE_26__* %173, %struct.TYPE_26__** %10, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %175 = icmp ne %struct.TYPE_26__* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %166
  br label %654

177:                                              ; preds = %166
  %178 = load i64, i64* %21, align 8
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i64 %178
  store %struct.TYPE_26__* %180, %struct.TYPE_26__** %10, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %187 = call i32 @memset(%struct.TYPE_26__* %186, i32 0, i32 40)
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @memcpy(i32 %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %192 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %193 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %194 = or i32 %192, %193
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load i64, i64* %19, align 8
  %198 = trunc i64 %197 to i32
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  br label %201

201:                                              ; preds = %177, %156
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %221, label %206

206:                                              ; preds = %201
  %207 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %208 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %211 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 0, %212
  %214 = load i64, i64* %18, align 8
  %215 = srem i64 %213, %214
  %216 = add nsw i64 %209, %215
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 2
  store i64 %216, i64* %218, align 8
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 3
  store i64 0, i64* %220, align 8
  br label %221

221:                                              ; preds = %206, %201
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %224, i64 %227)
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %230 = call i32 @get_resource_sizes(%struct.TYPE_25__* %229, %struct.resource_size_info* %13)
  %231 = getelementptr inbounds %struct.resource_size_info, %struct.resource_size_info* %13, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %8, align 8
  %233 = load i64, i64* %8, align 8
  %234 = sub nsw i64 0, %233
  %235 = load i64, i64* %18, align 8
  %236 = srem i64 %234, %235
  %237 = load i64, i64* %8, align 8
  %238 = add nsw i64 %237, %236
  store i64 %238, i64* %8, align 8
  %239 = getelementptr inbounds %struct.resource_size_info, %struct.resource_size_info* %13, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %8, align 8
  %242 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %240, i64 %241)
  %243 = load i64, i64* %8, align 8
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %243, %246
  br i1 %247, label %248, label %613

248:                                              ; preds = %221
  %249 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %250 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %22, align 8
  %252 = getelementptr inbounds %struct.resource_size_info, %struct.resource_size_info* %13, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.resource_size_info, %struct.resource_size_info* %13, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = sub nsw i64 0, %255
  %257 = load i64, i64* %17, align 8
  %258 = srem i64 %256, %257
  %259 = add nsw i64 %253, %258
  store i64 %259, i64* %23, align 8
  %260 = load i64, i64* %8, align 8
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = sub nsw i64 0, %266
  %268 = load i64, i64* %18, align 8
  %269 = srem i64 %267, %268
  %270 = add nsw i64 %263, %269
  %271 = sub nsw i64 %260, %270
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %24, align 4
  %273 = load i64, i64* %23, align 8
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %278, i32 0, i32 4
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = sub nsw i64 0, %281
  %283 = load i64, i64* %17, align 8
  %284 = srem i64 %282, %283
  %285 = add nsw i64 %277, %284
  %286 = sub nsw i64 %273, %285
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %25, align 4
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = add nsw i64 %290, %293
  %295 = load i64, i64* %22, align 8
  %296 = icmp sge i64 %294, %295
  %297 = zext i1 %296 to i32
  store i32 %297, i32* %26, align 4
  %298 = load i32, i32* %26, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %248
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* %8, align 8
  %305 = add nsw i64 %303, %304
  br label %311

306:                                              ; preds = %248
  %307 = load i64, i64* %22, align 8
  %308 = load i32, i32* %24, align 4
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %307, %309
  br label %311

311:                                              ; preds = %306, %300
  %312 = phi i64 [ %305, %300 ], [ %310, %306 ]
  store i64 %312, i64* %27, align 8
  %313 = load i64, i64* %27, align 8
  %314 = load i64, i64* %22, align 8
  %315 = icmp slt i64 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %311
  %317 = load i32, i32* %26, align 4
  %318 = icmp ne i32 %317, 0
  %319 = xor i1 %318, true
  br label %320

320:                                              ; preds = %316, %311
  %321 = phi i1 [ false, %311 ], [ %319, %316 ]
  %322 = zext i1 %321 to i32
  store i32 %322, i32* %28, align 4
  %323 = load i64, i64* %22, align 8
  %324 = load i64, i64* %27, align 8
  %325 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i64 %323, i64 %324)
  %326 = load i32, i32* %28, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %354, label %328

328:                                              ; preds = %320
  %329 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %330 = load i64, i64* %27, align 8
  %331 = call i32 @resize_mapping(%struct.mapping_info* %329, i64 %330)
  store i32 %331, i32* %9, align 4
  %332 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %333 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* %27, align 8
  %336 = call i64 @get_nt_header(i64 %334, i64 %335)
  %337 = inttoptr i64 %336 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %337, %struct.TYPE_18__** %11, align 8
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %339 = icmp ne %struct.TYPE_18__* %338, null
  br i1 %339, label %342, label %340

340:                                              ; preds = %328
  %341 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %654

342:                                              ; preds = %328
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %344 = bitcast %struct.TYPE_18__* %343 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %344, %struct.TYPE_27__** %12, align 8
  %345 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %346 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* %27, align 8
  %349 = call %struct.TYPE_26__* @get_resource_section(i64 %347, i64 %348)
  store %struct.TYPE_26__* %349, %struct.TYPE_26__** %10, align 8
  %350 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %351 = icmp ne %struct.TYPE_26__* %350, null
  br i1 %351, label %353, label %352

352:                                              ; preds = %342
  br label %654

353:                                              ; preds = %342
  br label %354

354:                                              ; preds = %353, %320
  %355 = load i32, i32* %26, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %424, label %357

357:                                              ; preds = %354
  %358 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %362 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = add nsw i64 %360, %363
  store i64 %364, i64* %30, align 8
  store i64 0, i64* %32, align 8
  %365 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %366 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = inttoptr i64 %367 to i8*
  %369 = load i64, i64* %30, align 8
  %370 = getelementptr inbounds i8, i8* %368, i64 %369
  %371 = load i32, i32* %24, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %370, i64 %372
  %374 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %375 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = inttoptr i64 %376 to i8*
  %378 = load i64, i64* %30, align 8
  %379 = getelementptr inbounds i8, i8* %377, i64 %378
  %380 = load i64, i64* %22, align 8
  %381 = load i64, i64* %30, align 8
  %382 = sub nsw i64 %380, %381
  %383 = call i32 @memmove(i8* %373, i8* %379, i64 %382)
  %384 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %385 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* %27, align 8
  %388 = call %struct.TYPE_26__* @get_section_header(i64 %386, i64 %387, i64* %32)
  store %struct.TYPE_26__* %388, %struct.TYPE_26__** %29, align 8
  store i64 0, i64* %31, align 8
  br label %389

389:                                              ; preds = %420, %357
  %390 = load i64, i64* %31, align 8
  %391 = load i64, i64* %32, align 8
  %392 = icmp slt i64 %390, %391
  br i1 %392, label %393, label %423

393:                                              ; preds = %389
  %394 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %395 = load i64, i64* %31, align 8
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %394, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %396, i32 0, i32 2
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %400 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %399, i32 0, i32 2
  %401 = load i64, i64* %400, align 8
  %402 = icmp sgt i64 %398, %401
  br i1 %402, label %403, label %419

403:                                              ; preds = %393
  %404 = load i32, i32* %24, align 4
  %405 = sext i32 %404 to i64
  %406 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %407 = load i64, i64* %31, align 8
  %408 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %406, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = add nsw i64 %410, %405
  store i64 %411, i64* %409, align 8
  %412 = load i32, i32* %25, align 4
  %413 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %414 = load i64, i64* %31, align 8
  %415 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %413, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = add nsw i32 %417, %412
  store i32 %418, i32* %416, align 4
  br label %419

419:                                              ; preds = %403, %393
  br label %420

420:                                              ; preds = %419
  %421 = load i64, i64* %31, align 8
  %422 = add nsw i64 %421, 1
  store i64 %422, i64* %31, align 8
  br label %389

423:                                              ; preds = %389
  br label %424

424:                                              ; preds = %423, %354
  %425 = load i32, i32* %28, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %453

427:                                              ; preds = %424
  %428 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %429 = load i64, i64* %27, align 8
  %430 = call i32 @resize_mapping(%struct.mapping_info* %428, i64 %429)
  store i32 %430, i32* %9, align 4
  %431 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %432 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load i64, i64* %27, align 8
  %435 = call i64 @get_nt_header(i64 %433, i64 %434)
  %436 = inttoptr i64 %435 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %436, %struct.TYPE_18__** %11, align 8
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %438 = icmp ne %struct.TYPE_18__* %437, null
  br i1 %438, label %441, label %439

439:                                              ; preds = %427
  %440 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %654

441:                                              ; preds = %427
  %442 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %443 = bitcast %struct.TYPE_18__* %442 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %443, %struct.TYPE_27__** %12, align 8
  %444 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %445 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* %27, align 8
  %448 = call %struct.TYPE_26__* @get_resource_section(i64 %446, i64 %447)
  store %struct.TYPE_26__* %448, %struct.TYPE_26__** %10, align 8
  %449 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %450 = icmp ne %struct.TYPE_26__* %449, null
  br i1 %450, label %452, label %451

451:                                              ; preds = %441
  br label %654

452:                                              ; preds = %441
  br label %453

453:                                              ; preds = %452, %424
  %454 = load i64, i64* %8, align 8
  %455 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %456 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %455, i32 0, i32 3
  store i64 %454, i64* %456, align 8
  %457 = load i64, i64* %23, align 8
  %458 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %459 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %458, i32 0, i32 4
  %460 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %459, i32 0, i32 0
  store i64 %457, i64* %460, align 8
  %461 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %462 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = load i64, i64* @IMAGE_NT_OPTIONAL_HDR64_MAGIC, align 8
  %466 = icmp eq i64 %464, %465
  br i1 %466, label %467, label %538

467:                                              ; preds = %453
  %468 = load i32, i32* %25, align 4
  %469 = sext i32 %468 to i64
  %470 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %471 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %471, i32 0, i32 2
  %473 = load i64, i64* %472, align 8
  %474 = add nsw i64 %473, %469
  store i64 %474, i64* %472, align 8
  %475 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %476 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %479 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %479, i32 0, i32 4
  %481 = load %struct.TYPE_21__*, %struct.TYPE_21__** %480, align 8
  %482 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_RESOURCE, align 8
  %483 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %481, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %483, i32 0, i32 0
  store i32 %477, i32* %484, align 8
  %485 = getelementptr inbounds %struct.resource_size_info, %struct.resource_size_info* %13, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %488 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %488, i32 0, i32 4
  %490 = load %struct.TYPE_21__*, %struct.TYPE_21__** %489, align 8
  %491 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_RESOURCE, align 8
  %492 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %490, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %492, i32 0, i32 1
  store i64 %486, i64* %493, align 8
  %494 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %495 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* %27, align 8
  %498 = call i8* @get_init_data_size(i64 %496, i64 %497)
  %499 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %500 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %500, i32 0, i32 5
  store i8* %498, i8** %501, align 8
  store i64 0, i64* %7, align 8
  br label %502

502:                                              ; preds = %534, %467
  %503 = load i64, i64* %7, align 8
  %504 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %505 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %505, i32 0, i32 3
  %507 = load i64, i64* %506, align 8
  %508 = icmp slt i64 %503, %507
  br i1 %508, label %509, label %537

509:                                              ; preds = %502
  %510 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %511 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %511, i32 0, i32 4
  %513 = load %struct.TYPE_21__*, %struct.TYPE_21__** %512, align 8
  %514 = load i64, i64* %7, align 8
  %515 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %513, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %519 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = icmp sgt i32 %517, %520
  br i1 %521, label %522, label %533

522:                                              ; preds = %509
  %523 = load i32, i32* %25, align 4
  %524 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %525 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %525, i32 0, i32 4
  %527 = load %struct.TYPE_21__*, %struct.TYPE_21__** %526, align 8
  %528 = load i64, i64* %7, align 8
  %529 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %527, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = add nsw i32 %531, %523
  store i32 %532, i32* %530, align 8
  br label %533

533:                                              ; preds = %522, %509
  br label %534

534:                                              ; preds = %533
  %535 = load i64, i64* %7, align 8
  %536 = add nsw i64 %535, 1
  store i64 %536, i64* %7, align 8
  br label %502

537:                                              ; preds = %502
  br label %612

538:                                              ; preds = %453
  %539 = load i32, i32* %25, align 4
  %540 = sext i32 %539 to i64
  %541 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %542 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %542, i32 0, i32 3
  %544 = load i64, i64* %543, align 8
  %545 = add nsw i64 %544, %540
  store i64 %545, i64* %543, align 8
  %546 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %547 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  %550 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %551 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %551, i32 0, i32 5
  %553 = load %struct.TYPE_22__*, %struct.TYPE_22__** %552, align 8
  %554 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_RESOURCE, align 8
  %555 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %553, i64 %554
  %556 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %555, i32 0, i32 0
  store i64 %549, i64* %556, align 8
  %557 = getelementptr inbounds %struct.resource_size_info, %struct.resource_size_info* %13, i32 0, i32 0
  %558 = load i64, i64* %557, align 8
  %559 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %560 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %560, i32 0, i32 5
  %562 = load %struct.TYPE_22__*, %struct.TYPE_22__** %561, align 8
  %563 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_RESOURCE, align 8
  %564 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %562, i64 %563
  %565 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %564, i32 0, i32 1
  store i64 %558, i64* %565, align 8
  %566 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %567 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = load i64, i64* %27, align 8
  %570 = call i8* @get_init_data_size(i64 %568, i64 %569)
  %571 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %572 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %572, i32 0, i32 6
  store i8* %570, i8** %573, align 8
  store i64 0, i64* %7, align 8
  br label %574

574:                                              ; preds = %608, %538
  %575 = load i64, i64* %7, align 8
  %576 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %577 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %577, i32 0, i32 4
  %579 = load i64, i64* %578, align 8
  %580 = icmp slt i64 %575, %579
  br i1 %580, label %581, label %611

581:                                              ; preds = %574
  %582 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %583 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %583, i32 0, i32 5
  %585 = load %struct.TYPE_22__*, %struct.TYPE_22__** %584, align 8
  %586 = load i64, i64* %7, align 8
  %587 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %585, i64 %586
  %588 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %587, i32 0, i32 0
  %589 = load i64, i64* %588, align 8
  %590 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %591 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  %593 = sext i32 %592 to i64
  %594 = icmp sgt i64 %589, %593
  br i1 %594, label %595, label %607

595:                                              ; preds = %581
  %596 = load i32, i32* %25, align 4
  %597 = sext i32 %596 to i64
  %598 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %599 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %598, i32 0, i32 0
  %600 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %599, i32 0, i32 5
  %601 = load %struct.TYPE_22__*, %struct.TYPE_22__** %600, align 8
  %602 = load i64, i64* %7, align 8
  %603 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %601, i64 %602
  %604 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %603, i32 0, i32 0
  %605 = load i64, i64* %604, align 8
  %606 = add nsw i64 %605, %597
  store i64 %606, i64* %604, align 8
  br label %607

607:                                              ; preds = %595, %581
  br label %608

608:                                              ; preds = %607
  %609 = load i64, i64* %7, align 8
  %610 = add nsw i64 %609, 1
  store i64 %610, i64* %7, align 8
  br label %574

611:                                              ; preds = %574
  br label %612

612:                                              ; preds = %611, %537
  br label %613

613:                                              ; preds = %612, %221
  %614 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %615 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %614, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = trunc i64 %616 to i32
  %618 = sext i32 %617 to i64
  %619 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %620 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %619, i32 0, i32 2
  %621 = load i64, i64* %620, align 8
  %622 = add nsw i64 %618, %621
  %623 = inttoptr i64 %622 to i32*
  store i32* %623, i32** %14, align 8
  %624 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %625 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %624, i32 0, i32 0
  %626 = load i64, i64* %625, align 8
  %627 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %628 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %627, i32 0, i32 2
  %629 = load i64, i64* %628, align 8
  %630 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i64 %626, i64 %629)
  %631 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %632 = load i32*, i32** %14, align 8
  %633 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %634 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %633, i32 0, i32 1
  %635 = load i32, i32* %634, align 4
  %636 = sext i32 %635 to i64
  %637 = call i32 @write_resources(%struct.TYPE_25__* %631, i32* %632, %struct.resource_size_info* %13, i64 %636)
  store i32 %637, i32* %9, align 4
  %638 = load i32*, i32** %14, align 8
  %639 = getelementptr inbounds %struct.resource_size_info, %struct.resource_size_info* %13, i32 0, i32 0
  %640 = load i64, i64* %639, align 8
  %641 = getelementptr inbounds i32, i32* %638, i64 %640
  %642 = load i64, i64* %8, align 8
  %643 = getelementptr inbounds %struct.resource_size_info, %struct.resource_size_info* %13, i32 0, i32 0
  %644 = load i64, i64* %643, align 8
  %645 = sub nsw i64 %642, %644
  %646 = call i32 @res_write_padding(i32* %641, i64 %645)
  %647 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %648 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %647, i32 0, i32 2
  %649 = load i64, i64* %648, align 8
  %650 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %651 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %650, i32 0, i32 3
  %652 = load i64, i64* %651, align 8
  %653 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i64 %649, i64 %652)
  br label %654

654:                                              ; preds = %613, %451, %439, %352, %340, %176, %153, %147, %108, %96, %88, %76, %59
  %655 = load %struct.mapping_info*, %struct.mapping_info** %15, align 8
  %656 = call i32 @destroy_mapping(%struct.mapping_info* %655)
  %657 = load %struct.mapping_info*, %struct.mapping_info** %16, align 8
  %658 = call i32 @destroy_mapping(%struct.mapping_info* %657)
  %659 = load i32, i32* %9, align 4
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %667

661:                                              ; preds = %654
  %662 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %663 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %662, i32 0, i32 0
  %664 = load i8*, i8** %663, align 8
  %665 = load i32, i32* @FALSE, align 4
  %666 = call i32 @CopyFileW(i8* %39, i8* %664, i32 %665)
  store i32 %666, i32* %9, align 4
  br label %667

667:                                              ; preds = %661, %654
  %668 = call i32 @DeleteFileW(i8* %39)
  %669 = load i32, i32* %9, align 4
  store i32 %669, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %670

670:                                              ; preds = %667, %50, %45
  %671 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %671)
  %672 = load i32, i32* %2, align 4
  ret i32 %672
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathW(i32, i8*) #2

declare dso_local i32 @GetTempFileNameW(i8*, i8*, i32, i8*) #2

declare dso_local i32 @CopyFileW(i8*, i8*, i32) #2

declare dso_local i32 @TRACE(i8*, i64, ...) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local %struct.mapping_info* @create_mapping(i8*, i32) #2

declare dso_local i32 @read_mapped_resources(%struct.TYPE_25__*, i64, i64) #2

declare dso_local i32 @ERR(i8*, ...) #2

declare dso_local i64 @get_nt_header(i64, i64) #2

declare dso_local %struct.TYPE_26__* @get_resource_section(i64, i64) #2

declare dso_local %struct.TYPE_26__* @get_section_header(i64, i64, i64*) #2

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @get_resource_sizes(%struct.TYPE_25__*, %struct.resource_size_info*) #2

declare dso_local i32 @resize_mapping(%struct.mapping_info*, i64) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i8* @get_init_data_size(i64, i64) #2

declare dso_local i32 @write_resources(%struct.TYPE_25__*, i32*, %struct.resource_size_info*, i64) #2

declare dso_local i32 @res_write_padding(i32*, i64) #2

declare dso_local i32 @destroy_mapping(%struct.mapping_info*) #2

declare dso_local i32 @DeleteFileW(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
