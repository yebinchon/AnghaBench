; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_pts_read_type_def.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_pts_read_type_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParseTypedefData = type { i8*, i32, i32, i32 }
%struct.symt = type { i32 }
%struct.symt_udt = type { %struct.symt, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { %struct.symt }
%struct.TYPE_8__ = type { %struct.symt }
%struct.TYPE_9__ = type { %struct.symt }
%struct.symt_enum = type { i32 }
%struct.TYPE_10__ = type { %struct.symt }

@.str = private unnamed_addr constant [25 x i8] c"Not an attribute... NIY\0A\00", align 1
@UdtStruct = common dso_local global i32 0, align 4
@UdtUnion = common dso_local global i32 0, align 4
@SymTagUDT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Forward declaration (%p/%s) is not an aggregate (%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Forward declaration name mismatch %s <> %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Unknown type '%c'\0A\00", align 1
@btVoid = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Adding (%ld,%ld) %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ParseTypedefData*, i8*, %struct.symt**)* @stabs_pts_read_type_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %0, i8* %1, %struct.symt** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ParseTypedefData*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.symt**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.symt*, align 8
  %11 = alloca %struct.symt*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.symt_udt*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.symt*, align 8
  %20 = alloca %struct.symt*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.ParseTypedefData* %0, %struct.ParseTypedefData** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.symt** %2, %struct.symt*** %7, align 8
  store i64 -1, i64* %9, align 8
  store %struct.symt* null, %struct.symt** %10, align 8
  %25 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %26 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %27 = call i32 @stabs_pts_read_type_reference(%struct.ParseTypedefData* %26, i64* %12, i64* %13)
  %28 = icmp eq i32 %27, -1
  %29 = zext i1 %28 to i32
  %30 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %25, i32 %29)
  br label %31

31:                                               ; preds = %518, %3
  %32 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %33 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 61
  br i1 %37, label %38, label %519

38:                                               ; preds = %31
  %39 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %40 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %40, align 8
  %43 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %44 = load %struct.symt*, %struct.symt** %10, align 8
  %45 = icmp ne %struct.symt* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %43, i32 %46)
  %48 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %49 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  switch i32 %52, label %87 [
    i32 64, label %53
  ]

53:                                               ; preds = %38
  %54 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %55 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %55, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 115
  br i1 %60, label %61, label %86

61:                                               ; preds = %53
  %62 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %63 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %63, align 8
  %66 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %67 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %66, i64* %9)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %72 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -2
  store i8* %74, i8** %72, align 8
  store i32 -1, i32* %4, align 4
  br label %556

75:                                               ; preds = %61
  %76 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %77 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %78 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %78, align 8
  %81 = load i8, i8* %79, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 59
  %84 = zext i1 %83 to i32
  %85 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %76, i32 %84)
  br label %86

86:                                               ; preds = %75, %53
  br label %87

87:                                               ; preds = %38, %86
  %88 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %89 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %89, align 8
  %92 = load i8, i8* %90, align 1
  %93 = sext i8 %92 to i32
  switch i32 %93, label %510 [
    i32 42, label %94
    i32 38, label %94
    i32 107, label %107
    i32 66, label %107
    i32 40, label %115
    i32 97, label %127
    i32 114, label %134
    i32 102, label %154
    i32 101, label %167
    i32 115, label %185
    i32 117, label %185
    i32 120, label %279
    i32 45, label %345
    i32 35, label %370
    i32 82, label %443
  ]

94:                                               ; preds = %87, %87
  %95 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %96 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %97 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %96, i8* null, %struct.symt** %11)
  %98 = icmp eq i32 %97, -1
  %99 = zext i1 %98 to i32
  %100 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %95, i32 %99)
  %101 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %102 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.symt*, %struct.symt** %11, align 8
  %105 = call %struct.TYPE_7__* @symt_new_pointer(i32 %103, %struct.symt* %104, i32 8)
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store %struct.symt* %106, %struct.symt** %10, align 8
  br label %518

107:                                              ; preds = %87, %87
  %108 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %109 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %109, i8* %110, %struct.symt** %10)
  %112 = icmp eq i32 %111, -1
  %113 = zext i1 %112 to i32
  %114 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %108, i32 %113)
  br label %518

115:                                              ; preds = %87
  %116 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %117 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 -1
  store i8* %119, i8** %117, align 8
  %120 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %121 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %121, i8* %122, %struct.symt** %10)
  %124 = icmp eq i32 %123, -1
  %125 = zext i1 %124 to i32
  %126 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %120, i32 %125)
  br label %518

127:                                              ; preds = %87
  %128 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %129 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %130 = call i32 @stabs_pts_read_array(%struct.ParseTypedefData* %129, %struct.symt** %10)
  %131 = icmp eq i32 %130, -1
  %132 = zext i1 %131 to i32
  %133 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %128, i32 %132)
  br label %518

134:                                              ; preds = %87
  %135 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %136 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @stabs_pts_read_range(%struct.ParseTypedefData* %136, i8* %137, %struct.symt** %10)
  %139 = icmp eq i32 %138, -1
  %140 = zext i1 %139 to i32
  %141 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %135, i32 %140)
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %13, align 8
  %144 = call %struct.symt** @stabs_find_ref(i64 %142, i64 %143)
  %145 = load %struct.symt*, %struct.symt** %144, align 8
  %146 = icmp ne %struct.symt* %145, null
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load %struct.symt*, %struct.symt** %10, align 8
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* %13, align 8
  %153 = call %struct.symt** @stabs_find_ref(i64 %151, i64 %152)
  store %struct.symt* %150, %struct.symt** %153, align 8
  br label %518

154:                                              ; preds = %87
  %155 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %156 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %157 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %156, i8* null, %struct.symt** %11)
  %158 = icmp eq i32 %157, -1
  %159 = zext i1 %158 to i32
  %160 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %155, i32 %159)
  %161 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %162 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.symt*, %struct.symt** %11, align 8
  %165 = call %struct.TYPE_8__* @symt_new_function_signature(i32 %163, %struct.symt* %164, i32 -1)
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store %struct.symt* %166, %struct.symt** %10, align 8
  br label %518

167:                                              ; preds = %87
  %168 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %169 = call i32 @stabs_get_basic(%struct.ParseTypedefData* %168, i32 1, %struct.symt** %11)
  %170 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %171 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i8*, i8** %6, align 8
  %174 = load %struct.symt*, %struct.symt** %11, align 8
  %175 = call %struct.TYPE_9__* @symt_new_enum(i32 %172, i8* %173, %struct.symt* %174)
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  store %struct.symt* %176, %struct.symt** %10, align 8
  %177 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %178 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %179 = load %struct.symt*, %struct.symt** %10, align 8
  %180 = bitcast %struct.symt* %179 to %struct.symt_enum*
  %181 = call i32 @stabs_pts_read_enum(%struct.ParseTypedefData* %178, %struct.symt_enum* %180)
  %182 = icmp eq i32 %181, -1
  %183 = zext i1 %182 to i32
  %184 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %177, i32 %183)
  br label %518

185:                                              ; preds = %87, %87
  %186 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %187 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 -1
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 115
  br i1 %192, label %193, label %195

193:                                              ; preds = %185
  %194 = load i32, i32* @UdtStruct, align 4
  br label %197

195:                                              ; preds = %185
  %196 = load i32, i32* @UdtUnion, align 4
  br label %197

197:                                              ; preds = %195, %193
  %198 = phi i32 [ %194, %193 ], [ %196, %195 ]
  store i32 %198, i32* %16, align 4
  %199 = load i64, i64* %12, align 8
  %200 = load i64, i64* %13, align 8
  %201 = call %struct.symt** @stabs_find_ref(i64 %199, i64 %200)
  %202 = load %struct.symt*, %struct.symt** %201, align 8
  %203 = bitcast %struct.symt* %202 to %struct.symt_udt*
  store %struct.symt_udt* %203, %struct.symt_udt** %15, align 8
  %204 = load %struct.symt_udt*, %struct.symt_udt** %15, align 8
  %205 = icmp ne %struct.symt_udt* %204, null
  br i1 %205, label %218, label %206

206:                                              ; preds = %197
  %207 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %208 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %6, align 8
  %211 = load i32, i32* %16, align 4
  %212 = call %struct.symt_udt* @symt_new_udt(i32 %209, i8* %210, i32 0, i32 %211)
  store %struct.symt_udt* %212, %struct.symt_udt** %15, align 8
  %213 = load %struct.symt_udt*, %struct.symt_udt** %15, align 8
  %214 = getelementptr inbounds %struct.symt_udt, %struct.symt_udt* %213, i32 0, i32 0
  %215 = load i64, i64* %12, align 8
  %216 = load i64, i64* %13, align 8
  %217 = call %struct.symt** @stabs_find_ref(i64 %215, i64 %216)
  store %struct.symt* %214, %struct.symt** %217, align 8
  store %struct.symt* %214, %struct.symt** %10, align 8
  br label %271

218:                                              ; preds = %197
  %219 = load %struct.symt_udt*, %struct.symt_udt** %15, align 8
  %220 = getelementptr inbounds %struct.symt_udt, %struct.symt_udt* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.symt, %struct.symt* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @SymTagUDT, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %235

225:                                              ; preds = %218
  %226 = load %struct.symt_udt*, %struct.symt_udt** %15, align 8
  %227 = load %struct.symt_udt*, %struct.symt_udt** %15, align 8
  %228 = getelementptr inbounds %struct.symt_udt, %struct.symt_udt* %227, i32 0, i32 0
  %229 = call i32 @symt_get_name(%struct.symt* %228)
  %230 = load %struct.symt_udt*, %struct.symt_udt** %15, align 8
  %231 = getelementptr inbounds %struct.symt_udt, %struct.symt_udt* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.symt, %struct.symt* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), %struct.symt_udt* %226, i32 %229, i32 %233)
  store i32 -1, i32* %4, align 4
  br label %556

235:                                              ; preds = %218
  %236 = load %struct.symt_udt*, %struct.symt_udt** %15, align 8
  %237 = getelementptr inbounds %struct.symt_udt, %struct.symt_udt* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @strlen(i8* %239)
  store i32 %240, i32* %17, align 4
  %241 = load i8*, i8** %6, align 8
  %242 = call i32 @strlen(i8* %241)
  store i32 %242, i32* %18, align 4
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %18, align 4
  %245 = icmp ugt i32 %243, %244
  br i1 %245, label %261, label %246

246:                                              ; preds = %235
  %247 = load %struct.symt_udt*, %struct.symt_udt** %15, align 8
  %248 = getelementptr inbounds %struct.symt_udt, %struct.symt_udt* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = load i8*, i8** %6, align 8
  %252 = load i32, i32* %18, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i32, i32* %17, align 4
  %256 = zext i32 %255 to i64
  %257 = sub i64 0, %256
  %258 = getelementptr inbounds i8, i8* %254, i64 %257
  %259 = call i32 @strcmp(i8* %250, i8* %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %246, %235
  %262 = load %struct.symt_udt*, %struct.symt_udt** %15, align 8
  %263 = getelementptr inbounds %struct.symt_udt, %struct.symt_udt* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = load i8*, i8** %6, align 8
  %267 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %265, i8* %266)
  br label %268

268:                                              ; preds = %261, %246
  %269 = load %struct.symt_udt*, %struct.symt_udt** %15, align 8
  %270 = getelementptr inbounds %struct.symt_udt, %struct.symt_udt* %269, i32 0, i32 0
  store %struct.symt* %270, %struct.symt** %10, align 8
  br label %271

271:                                              ; preds = %268, %206
  %272 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %273 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %274 = load %struct.symt_udt*, %struct.symt_udt** %15, align 8
  %275 = call i32 @stabs_pts_read_aggregate(%struct.ParseTypedefData* %273, %struct.symt_udt* %274)
  %276 = icmp eq i32 %275, -1
  %277 = zext i1 %276 to i32
  %278 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %272, i32 %277)
  br label %518

279:                                              ; preds = %87
  %280 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %281 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  store i32 %282, i32* %8, align 4
  %283 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %284 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %284, align 8
  %287 = load i8, i8* %285, align 1
  %288 = sext i8 %287 to i64
  store i64 %288, i64* %14, align 8
  %289 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %290 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %291 = call i32 @stabs_pts_read_id(%struct.ParseTypedefData* %290)
  %292 = icmp eq i32 %291, -1
  %293 = zext i1 %292 to i32
  %294 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %289, i32 %293)
  %295 = load i64, i64* %14, align 8
  switch i64 %295, label %340 [
    i64 101, label %296
    i64 115, label %312
    i64 117, label %326
  ]

296:                                              ; preds = %279
  %297 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %298 = call i32 @stabs_get_basic(%struct.ParseTypedefData* %297, i32 1, %struct.symt** %11)
  %299 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %300 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %303 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* %8, align 4
  %306 = add nsw i32 %304, %305
  %307 = sext i32 %306 to i64
  %308 = inttoptr i64 %307 to i8*
  %309 = load %struct.symt*, %struct.symt** %11, align 8
  %310 = call %struct.TYPE_9__* @symt_new_enum(i32 %301, i8* %308, %struct.symt* %309)
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  store %struct.symt* %311, %struct.symt** %10, align 8
  br label %341

312:                                              ; preds = %279
  %313 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %314 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %317 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %8, align 4
  %320 = add nsw i32 %318, %319
  %321 = sext i32 %320 to i64
  %322 = inttoptr i64 %321 to i8*
  %323 = load i32, i32* @UdtStruct, align 4
  %324 = call %struct.symt_udt* @symt_new_udt(i32 %315, i8* %322, i32 0, i32 %323)
  %325 = getelementptr inbounds %struct.symt_udt, %struct.symt_udt* %324, i32 0, i32 0
  store %struct.symt* %325, %struct.symt** %10, align 8
  br label %341

326:                                              ; preds = %279
  %327 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %328 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %331 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = add nsw i32 %332, %333
  %335 = sext i32 %334 to i64
  %336 = inttoptr i64 %335 to i8*
  %337 = load i32, i32* @UdtUnion, align 4
  %338 = call %struct.symt_udt* @symt_new_udt(i32 %329, i8* %336, i32 0, i32 %337)
  %339 = getelementptr inbounds %struct.symt_udt, %struct.symt_udt* %338, i32 0, i32 0
  store %struct.symt* %339, %struct.symt** %10, align 8
  br label %341

340:                                              ; preds = %279
  store i32 -1, i32* %4, align 4
  br label %556

341:                                              ; preds = %326, %312, %296
  %342 = load i32, i32* %8, align 4
  %343 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %344 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %343, i32 0, i32 1
  store i32 %342, i32* %344, align 8
  br label %518

345:                                              ; preds = %87
  %346 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %347 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %348 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %347, i64* %14)
  %349 = icmp eq i32 %348, -1
  %350 = zext i1 %349 to i32
  %351 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %346, i32 %350)
  %352 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %353 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %354 = load i64, i64* %14, align 8
  %355 = trunc i64 %354 to i32
  %356 = call i32 @stabs_get_basic(%struct.ParseTypedefData* %353, i32 %355, %struct.symt** %10)
  %357 = icmp eq i32 %356, -1
  %358 = zext i1 %357 to i32
  %359 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %352, i32 %358)
  %360 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %361 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %362 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %361, i32 0, i32 0
  %363 = load i8*, i8** %362, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %362, align 8
  %365 = load i8, i8* %363, align 1
  %366 = sext i8 %365 to i32
  %367 = icmp ne i32 %366, 59
  %368 = zext i1 %367 to i32
  %369 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %360, i32 %368)
  br label %518

370:                                              ; preds = %87
  %371 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %372 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %371, i32 0, i32 0
  %373 = load i8*, i8** %372, align 8
  %374 = load i8, i8* %373, align 1
  %375 = sext i8 %374 to i32
  %376 = icmp eq i32 %375, 35
  br i1 %376, label %377, label %394

377:                                              ; preds = %370
  %378 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %379 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %378, i32 0, i32 0
  %380 = load i8*, i8** %379, align 8
  %381 = getelementptr inbounds i8, i8* %380, i32 1
  store i8* %381, i8** %379, align 8
  %382 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %383 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %384 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %383, i8* null, %struct.symt** %11)
  %385 = icmp eq i32 %384, -1
  %386 = zext i1 %385 to i32
  %387 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %382, i32 %386)
  %388 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %389 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.symt*, %struct.symt** %11, align 8
  %392 = call %struct.TYPE_8__* @symt_new_function_signature(i32 %390, %struct.symt* %391, i32 -1)
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 0
  store %struct.symt* %393, %struct.symt** %10, align 8
  br label %442

394:                                              ; preds = %370
  %395 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %396 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %397 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %396, i8* null, %struct.symt** %19)
  %398 = icmp eq i32 %397, -1
  %399 = zext i1 %398 to i32
  %400 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %395, i32 %399)
  %401 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %402 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %403 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %402, i32 0, i32 0
  %404 = load i8*, i8** %403, align 8
  %405 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %405, i8** %403, align 8
  %406 = load i8, i8* %404, align 1
  %407 = sext i8 %406 to i32
  %408 = icmp ne i32 %407, 44
  %409 = zext i1 %408 to i32
  %410 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %401, i32 %409)
  %411 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %412 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %413 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %412, i8* null, %struct.symt** %11)
  %414 = icmp eq i32 %413, -1
  %415 = zext i1 %414 to i32
  %416 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %411, i32 %415)
  %417 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %418 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.symt*, %struct.symt** %11, align 8
  %421 = call %struct.TYPE_8__* @symt_new_function_signature(i32 %419, %struct.symt* %420, i32 -1)
  %422 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i32 0, i32 0
  store %struct.symt* %422, %struct.symt** %10, align 8
  br label %423

423:                                              ; preds = %430, %394
  %424 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %425 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %424, i32 0, i32 0
  %426 = load i8*, i8** %425, align 8
  %427 = load i8, i8* %426, align 1
  %428 = sext i8 %427 to i32
  %429 = icmp eq i32 %428, 44
  br i1 %429, label %430, label %441

430:                                              ; preds = %423
  %431 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %432 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %431, i32 0, i32 0
  %433 = load i8*, i8** %432, align 8
  %434 = getelementptr inbounds i8, i8* %433, i32 1
  store i8* %434, i8** %432, align 8
  %435 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %436 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %437 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %436, i8* null, %struct.symt** %20)
  %438 = icmp eq i32 %437, -1
  %439 = zext i1 %438 to i32
  %440 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %435, i32 %439)
  br label %423

441:                                              ; preds = %423
  br label %442

442:                                              ; preds = %441, %377
  br label %518

443:                                              ; preds = %87
  %444 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %445 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %446 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %445, i64* %21)
  %447 = icmp eq i32 %446, -1
  %448 = zext i1 %447 to i32
  %449 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %444, i32 %448)
  %450 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %451 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %452 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %451, i32 0, i32 0
  %453 = load i8*, i8** %452, align 8
  %454 = getelementptr inbounds i8, i8* %453, i32 1
  store i8* %454, i8** %452, align 8
  %455 = load i8, i8* %453, align 1
  %456 = sext i8 %455 to i32
  %457 = icmp ne i32 %456, 59
  %458 = zext i1 %457 to i32
  %459 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %450, i32 %458)
  %460 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %461 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %462 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %461, i64* %22)
  %463 = icmp eq i32 %462, -1
  %464 = zext i1 %463 to i32
  %465 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %460, i32 %464)
  %466 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %467 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %468 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %467, i32 0, i32 0
  %469 = load i8*, i8** %468, align 8
  %470 = getelementptr inbounds i8, i8* %469, i32 1
  store i8* %470, i8** %468, align 8
  %471 = load i8, i8* %469, align 1
  %472 = sext i8 %471 to i32
  %473 = icmp ne i32 %472, 59
  %474 = zext i1 %473 to i32
  %475 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %466, i32 %474)
  %476 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %477 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %478 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %477, i64* %23)
  %479 = icmp eq i32 %478, -1
  %480 = zext i1 %479 to i32
  %481 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %476, i32 %480)
  %482 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %483 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %484 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %483, i32 0, i32 0
  %485 = load i8*, i8** %484, align 8
  %486 = getelementptr inbounds i8, i8* %485, i32 1
  store i8* %486, i8** %484, align 8
  %487 = load i8, i8* %485, align 1
  %488 = sext i8 %487 to i32
  %489 = icmp ne i32 %488, 59
  %490 = zext i1 %489 to i32
  %491 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %482, i32 %490)
  %492 = load i64, i64* %21, align 8
  switch i64 %492, label %499 [
    i64 1, label %493
    i64 2, label %494
    i64 3, label %495
    i64 4, label %496
    i64 5, label %497
    i64 6, label %498
  ]

493:                                              ; preds = %443
  store i32 12, i32* %24, align 4
  br label %502

494:                                              ; preds = %443
  store i32 13, i32* %24, align 4
  br label %502

495:                                              ; preds = %443
  store i32 25, i32* %24, align 4
  br label %502

496:                                              ; preds = %443
  store i32 26, i32* %24, align 4
  br label %502

497:                                              ; preds = %443
  store i32 35, i32* %24, align 4
  br label %502

498:                                              ; preds = %443
  store i32 14, i32* %24, align 4
  br label %502

499:                                              ; preds = %443
  %500 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %501 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %500, i32 1)
  br label %502

502:                                              ; preds = %499, %498, %497, %496, %495, %494, %493
  %503 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %504 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %505 = load i32, i32* %24, align 4
  %506 = call i32 @stabs_get_basic(%struct.ParseTypedefData* %504, i32 %505, %struct.symt** %10)
  %507 = icmp eq i32 %506, -1
  %508 = zext i1 %507 to i32
  %509 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %503, i32 %508)
  br label %518

510:                                              ; preds = %87
  %511 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %512 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %511, i32 0, i32 0
  %513 = load i8*, i8** %512, align 8
  %514 = getelementptr inbounds i8, i8* %513, i64 -1
  %515 = load i8, i8* %514, align 1
  %516 = sext i8 %515 to i32
  %517 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %516)
  store i32 -1, i32* %4, align 4
  br label %556

518:                                              ; preds = %502, %442, %345, %341, %271, %167, %154, %134, %127, %115, %107, %94
  br label %31

519:                                              ; preds = %31
  %520 = load %struct.symt*, %struct.symt** %10, align 8
  %521 = icmp ne %struct.symt* %520, null
  br i1 %521, label %545, label %522

522:                                              ; preds = %519
  %523 = load i64, i64* %12, align 8
  %524 = load i64, i64* %13, align 8
  %525 = call %struct.symt** @stabs_find_ref(i64 %523, i64 %524)
  %526 = load %struct.symt*, %struct.symt** %525, align 8
  store %struct.symt* %526, %struct.symt** %10, align 8
  %527 = load %struct.symt*, %struct.symt** %10, align 8
  %528 = icmp ne %struct.symt* %527, null
  br i1 %528, label %544, label %529

529:                                              ; preds = %522
  %530 = load i8*, i8** %6, align 8
  %531 = icmp ne i8* %530, null
  br i1 %531, label %532, label %544

532:                                              ; preds = %529
  %533 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %534 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 4
  %536 = load i32, i32* @btVoid, align 4
  %537 = load i8*, i8** %6, align 8
  %538 = call %struct.TYPE_10__* @symt_new_basic(i32 %535, i32 %536, i8* %537, i32 0)
  %539 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %538, i32 0, i32 0
  store %struct.symt* %539, %struct.symt** %10, align 8
  %540 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %5, align 8
  %541 = load i8*, i8** %6, align 8
  %542 = call i32 @strcmp(i8* %541, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %543 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %540, i32 %542)
  br label %544

544:                                              ; preds = %532, %529, %522
  br label %545

545:                                              ; preds = %544, %519
  %546 = load %struct.symt*, %struct.symt** %10, align 8
  %547 = load %struct.symt**, %struct.symt*** %7, align 8
  store %struct.symt* %546, %struct.symt** %547, align 8
  %548 = load i64, i64* %12, align 8
  %549 = load i64, i64* %13, align 8
  %550 = call %struct.symt** @stabs_find_ref(i64 %548, i64 %549)
  store %struct.symt* %546, %struct.symt** %550, align 8
  %551 = load i64, i64* %12, align 8
  %552 = load i64, i64* %13, align 8
  %553 = load i8*, i8** %6, align 8
  %554 = call i32 @debugstr_a(i8* %553)
  %555 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %551, i64 %552, i32 %554)
  store i32 0, i32* %4, align 4
  br label %556

556:                                              ; preds = %545, %510, %340, %225, %69
  %557 = load i32, i32* %4, align 4
  ret i32 %557
}

declare dso_local i32 @PTS_ABORTIF(%struct.ParseTypedefData*, i32) #1

declare dso_local i32 @stabs_pts_read_type_reference(%struct.ParseTypedefData*, i64*, i64*) #1

declare dso_local i32 @stabs_pts_read_number(%struct.ParseTypedefData*, i64*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local %struct.TYPE_7__* @symt_new_pointer(i32, %struct.symt*, i32) #1

declare dso_local i32 @stabs_pts_read_array(%struct.ParseTypedefData*, %struct.symt**) #1

declare dso_local i32 @stabs_pts_read_range(%struct.ParseTypedefData*, i8*, %struct.symt**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.symt** @stabs_find_ref(i64, i64) #1

declare dso_local %struct.TYPE_8__* @symt_new_function_signature(i32, %struct.symt*, i32) #1

declare dso_local i32 @stabs_get_basic(%struct.ParseTypedefData*, i32, %struct.symt**) #1

declare dso_local %struct.TYPE_9__* @symt_new_enum(i32, i8*, %struct.symt*) #1

declare dso_local i32 @stabs_pts_read_enum(%struct.ParseTypedefData*, %struct.symt_enum*) #1

declare dso_local %struct.symt_udt* @symt_new_udt(i32, i8*, i32, i32) #1

declare dso_local i32 @symt_get_name(%struct.symt*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @stabs_pts_read_aggregate(%struct.ParseTypedefData*, %struct.symt_udt*) #1

declare dso_local i32 @stabs_pts_read_id(%struct.ParseTypedefData*) #1

declare dso_local %struct.TYPE_10__* @symt_new_basic(i32, i32, i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i64, i64, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
