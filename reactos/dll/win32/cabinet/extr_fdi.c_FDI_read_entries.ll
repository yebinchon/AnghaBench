; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fdi.c_FDI_read_entries.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fdi.c_FDI_read_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 (i32, i32*, i64)*, i32 (i32, i32, i32)*, i32 (i8*)* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"(fdi == ^%p, hf == %ld, pfdici == ^%p)\0A\00", align 1
@cfhead_SIZEOF = common dso_local global i64 0, align 8
@FDIERROR_NOT_A_CABINET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@cfhead_Signature = common dso_local global i32 0, align 4
@cfhead_CabinetSize = common dso_local global i32 0, align 4
@cfhead_NumFolders = common dso_local global i32 0, align 4
@cfhead_NumFiles = common dso_local global i32 0, align 4
@cfhead_SetID = common dso_local global i32 0, align 4
@cfhead_CabinetIndex = common dso_local global i32 0, align 4
@cfhead_MajorVersion = common dso_local global i64 0, align 8
@cfhead_MinorVersion = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"cabinet format version > 1.3\0A\00", align 1
@FDIERROR_UNKNOWN_CABINET_VERSION = common dso_local global i32 0, align 4
@cfhead_Flags = common dso_local global i32 0, align 4
@cfheadRESERVE_PRESENT = common dso_local global i32 0, align 4
@cfheadext_SIZEOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"bunk reserve-sizes?\0A\00", align 1
@FDIERROR_CORRUPT_CABINET = common dso_local global i32 0, align 4
@cfheadext_HeaderReserved = common dso_local global i32 0, align 4
@cfheadext_FolderReserved = common dso_local global i64 0, align 8
@cfheadext_DataReserved = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"WARNING; header reserved space > 60000\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"seek failure: header_resv\0A\00", align 1
@cfheadPREV_CABINET = common dso_local global i32 0, align 4
@cfheadNEXT_CABINET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, %struct.TYPE_12__*, %struct.TYPE_11__*)* @FDI_read_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FDI_read_entries(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_12__* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [64 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  store i32 0, i32* %13, align 4
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %24, i32 %25, %struct.TYPE_12__* %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64 (i32, i32*, i64)*, i64 (i32, i32*, i64)** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %33 = load i64, i64* @cfhead_SIZEOF, align 8
  %34 = call i64 %30(i32 %31, i32* %32, i64 %33)
  %35 = load i64, i64* @cfhead_SIZEOF, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = icmp ne %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = load i32, i32* @FDIERROR_NOT_A_CABINET, align 4
  %43 = call i32 @set_error(%struct.TYPE_13__* %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %5, align 4
  br label %388

46:                                               ; preds = %4
  %47 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %48 = load i32, i32* @cfhead_Signature, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @EndGetI32(i32* %50)
  %52 = icmp ne i32 %51, 1178817357
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = load i32, i32* @FDIERROR_NOT_A_CABINET, align 4
  %59 = call i32 @set_error(%struct.TYPE_13__* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %5, align 4
  br label %388

62:                                               ; preds = %46
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %64 = load i32, i32* @cfhead_CabinetSize, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @EndGetI32(i32* %66)
  store i32 %67, i32* %14, align 4
  %68 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %69 = load i32, i32* @cfhead_NumFolders, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @EndGetI16(i32* %71)
  store i32 %72, i32* %10, align 4
  %73 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %74 = load i32, i32* @cfhead_NumFiles, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @EndGetI16(i32* %76)
  store i32 %77, i32* %11, align 4
  %78 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %79 = load i32, i32* @cfhead_SetID, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @EndGetI16(i32* %81)
  store i32 %82, i32* %15, align 4
  %83 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %84 = load i32, i32* @cfhead_CabinetIndex, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @EndGetI16(i32* %86)
  store i32 %87, i32* %16, align 4
  %88 = load i64, i64* @cfhead_MajorVersion, align 8
  %89 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %102, label %92

92:                                               ; preds = %62
  %93 = load i64, i64* @cfhead_MajorVersion, align 8
  %94 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load i64, i64* @cfhead_MinorVersion, align 8
  %99 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 3
  br i1 %101, label %102, label %112

102:                                              ; preds = %97, %62
  %103 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %105 = icmp ne %struct.TYPE_11__* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = load i32, i32* @FDIERROR_UNKNOWN_CABINET_VERSION, align 4
  %109 = call i32 @set_error(%struct.TYPE_13__* %107, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %5, align 4
  br label %388

112:                                              ; preds = %97, %92
  %113 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %114 = load i32, i32* @cfhead_Flags, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = call i32 @EndGetI16(i32* %116)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* @cfheadRESERVE_PRESENT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %202

122:                                              ; preds = %112
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i64 (i32, i32*, i64)*, i64 (i32, i32*, i64)** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %128 = load i64, i64* @cfheadext_SIZEOF, align 8
  %129 = call i64 %125(i32 %126, i32* %127, i64 %128)
  %130 = load i64, i64* @cfheadext_SIZEOF, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %122
  %133 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %135 = icmp ne %struct.TYPE_11__* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = load i32, i32* @FDIERROR_CORRUPT_CABINET, align 4
  %139 = call i32 @set_error(%struct.TYPE_13__* %137, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %136, %132
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %5, align 4
  br label %388

142:                                              ; preds = %122
  %143 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %144 = load i32, i32* @cfheadext_HeaderReserved, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = call i32 @EndGetI16(i32* %146)
  store i32 %147, i32* %12, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %149 = icmp ne %struct.TYPE_11__* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %142
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %150, %142
  %155 = load i64, i64* @cfheadext_FolderReserved, align 8
  %156 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %13, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %159 = icmp ne %struct.TYPE_11__* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %154
  %165 = load i64, i64* @cfheadext_DataReserved, align 8
  %166 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %19, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %169 = icmp ne %struct.TYPE_11__* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i32, i32* %19, align 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %170, %164
  %175 = load i32, i32* %12, align 4
  %176 = icmp sgt i32 %175, 60000
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %174
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %201

182:                                              ; preds = %179
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @SEEK_CUR, align 4
  %189 = call i32 %185(i32 %186, i32 %187, i32 %188)
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %201

191:                                              ; preds = %182
  %192 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %194 = icmp ne %struct.TYPE_11__* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %197 = load i32, i32* @FDIERROR_CORRUPT_CABINET, align 4
  %198 = call i32 @set_error(%struct.TYPE_13__* %196, i32 %197, i32 0)
  br label %199

199:                                              ; preds = %195, %191
  %200 = load i32, i32* @FALSE, align 4
  store i32 %200, i32* %5, align 4
  br label %388

201:                                              ; preds = %182, %179
  br label %202

202:                                              ; preds = %201, %112
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* @cfheadPREV_CABINET, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %259

207:                                              ; preds = %202
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %14, align 4
  %211 = call i8* @FDI_read_string(%struct.TYPE_13__* %208, i32 %209, i32 %210)
  store i8* %211, i8** %20, align 8
  %212 = load i8*, i8** %20, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %223, label %214

214:                                              ; preds = %207
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %216 = icmp ne %struct.TYPE_11__* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %219 = load i32, i32* @FDIERROR_CORRUPT_CABINET, align 4
  %220 = call i32 @set_error(%struct.TYPE_13__* %218, i32 %219, i32 0)
  br label %221

221:                                              ; preds = %217, %214
  %222 = load i32, i32* @FALSE, align 4
  store i32 %222, i32* %5, align 4
  br label %388

223:                                              ; preds = %207
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %225 = icmp ne %struct.TYPE_11__* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i8*, i8** %20, align 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 3
  store i8* %227, i8** %229, align 8
  br label %236

230:                                              ; preds = %223
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 2
  %233 = load i32 (i8*)*, i32 (i8*)** %232, align 8
  %234 = load i8*, i8** %20, align 8
  %235 = call i32 %233(i8* %234)
  br label %236

236:                                              ; preds = %230, %226
  br label %237

237:                                              ; preds = %236
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* %14, align 4
  %241 = call i8* @FDI_read_string(%struct.TYPE_13__* %238, i32 %239, i32 %240)
  store i8* %241, i8** %21, align 8
  %242 = load i8*, i8** %21, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %258

244:                                              ; preds = %237
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %246 = icmp ne %struct.TYPE_11__* %245, null
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load i8*, i8** %21, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 4
  store i8* %248, i8** %250, align 8
  br label %257

251:                                              ; preds = %244
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 2
  %254 = load i32 (i8*)*, i32 (i8*)** %253, align 8
  %255 = load i8*, i8** %21, align 8
  %256 = call i32 %254(i8* %255)
  br label %257

257:                                              ; preds = %251, %247
  br label %258

258:                                              ; preds = %257, %237
  br label %259

259:                                              ; preds = %258, %202
  %260 = load i32, i32* %17, align 4
  %261 = load i32, i32* @cfheadNEXT_CABINET, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %350

264:                                              ; preds = %259
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %266 = icmp ne %struct.TYPE_11__* %265, null
  br i1 %266, label %267, label %271

267:                                              ; preds = %264
  %268 = load i32, i32* @TRUE, align 4
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 7
  store i32 %268, i32* %270, align 8
  br label %271

271:                                              ; preds = %267, %264
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %14, align 4
  %275 = call i8* @FDI_read_string(%struct.TYPE_13__* %272, i32 %273, i32 %274)
  store i8* %275, i8** %22, align 8
  %276 = load i8*, i8** %22, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %314, label %278

278:                                              ; preds = %271
  %279 = load i32, i32* %17, align 4
  %280 = load i32, i32* @cfheadPREV_CABINET, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %309

283:                                              ; preds = %278
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %285 = icmp ne %struct.TYPE_11__* %284, null
  br i1 %285, label %286, label %309

286:                                              ; preds = %283
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 3
  %289 = load i8*, i8** %288, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %291, label %297

291:                                              ; preds = %286
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 2
  %294 = load i32 (i8*)*, i32 (i8*)** %293, align 8
  %295 = load i8*, i8** %20, align 8
  %296 = call i32 %294(i8* %295)
  br label %297

297:                                              ; preds = %291, %286
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 4
  %300 = load i8*, i8** %299, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %308

302:                                              ; preds = %297
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 2
  %305 = load i32 (i8*)*, i32 (i8*)** %304, align 8
  %306 = load i8*, i8** %21, align 8
  %307 = call i32 %305(i8* %306)
  br label %308

308:                                              ; preds = %302, %297
  br label %309

309:                                              ; preds = %308, %283, %278
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %311 = load i32, i32* @FDIERROR_CORRUPT_CABINET, align 4
  %312 = call i32 @set_error(%struct.TYPE_13__* %310, i32 %311, i32 0)
  %313 = load i32, i32* @FALSE, align 4
  store i32 %313, i32* %5, align 4
  br label %388

314:                                              ; preds = %271
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %316 = icmp ne %struct.TYPE_11__* %315, null
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = load i8*, i8** %22, align 8
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 5
  store i8* %318, i8** %320, align 8
  br label %327

321:                                              ; preds = %314
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 2
  %324 = load i32 (i8*)*, i32 (i8*)** %323, align 8
  %325 = load i8*, i8** %22, align 8
  %326 = call i32 %324(i8* %325)
  br label %327

327:                                              ; preds = %321, %317
  br label %328

328:                                              ; preds = %327
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %330 = load i32, i32* %7, align 4
  %331 = load i32, i32* %14, align 4
  %332 = call i8* @FDI_read_string(%struct.TYPE_13__* %329, i32 %330, i32 %331)
  store i8* %332, i8** %23, align 8
  %333 = load i8*, i8** %23, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %335, label %349

335:                                              ; preds = %328
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %337 = icmp ne %struct.TYPE_11__* %336, null
  br i1 %337, label %338, label %342

338:                                              ; preds = %335
  %339 = load i8*, i8** %23, align 8
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 6
  store i8* %339, i8** %341, align 8
  br label %348

342:                                              ; preds = %335
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 2
  %345 = load i32 (i8*)*, i32 (i8*)** %344, align 8
  %346 = load i8*, i8** %23, align 8
  %347 = call i32 %345(i8* %346)
  br label %348

348:                                              ; preds = %342, %338
  br label %349

349:                                              ; preds = %348, %328
  br label %350

350:                                              ; preds = %349, %259
  %351 = load i32, i32* %14, align 4
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 0
  store i32 %351, i32* %353, align 4
  %354 = load i32, i32* %10, align 4
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 1
  store i32 %354, i32* %356, align 4
  %357 = load i32, i32* %11, align 4
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 2
  store i32 %357, i32* %359, align 4
  %360 = load i32, i32* %15, align 4
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 3
  store i32 %360, i32* %362, align 4
  %363 = load i32, i32* %16, align 4
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 4
  store i32 %363, i32* %365, align 4
  %366 = load i32, i32* %17, align 4
  %367 = load i32, i32* @cfheadRESERVE_PRESENT, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  %370 = zext i1 %369 to i32
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 5
  store i32 %370, i32* %372, align 4
  %373 = load i32, i32* %17, align 4
  %374 = load i32, i32* @cfheadPREV_CABINET, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  %377 = zext i1 %376 to i32
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 6
  store i32 %377, i32* %379, align 4
  %380 = load i32, i32* %17, align 4
  %381 = load i32, i32* @cfheadNEXT_CABINET, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  %384 = zext i1 %383 to i32
  %385 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i32 0, i32 7
  store i32 %384, i32* %386, align 4
  %387 = load i32, i32* @TRUE, align 4
  store i32 %387, i32* %5, align 4
  br label %388

388:                                              ; preds = %350, %309, %221, %199, %140, %110, %60, %44
  %389 = load i32, i32* %5, align 4
  ret i32 %389
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_13__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @set_error(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @EndGetI32(i32*) #1

declare dso_local i32 @EndGetI16(i32*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i8* @FDI_read_string(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
