; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_write_cabinet.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_write_cabinet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 (i8*, i32, i32, i32*, i32)*, i32 (i32, %struct.TYPE_19__*, i32, i32*, i32)*, i64 (i32, i32, i32, i32*, i32)*, i32, i32 (i8*, i32*, i32)*, i32 (i32, i32*, i32)*, i32, %struct.TYPE_17__, %struct.TYPE_16__*, i32, i32, i64, i64, i64 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_19__*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.anon = type { i32, i64, i64 }

@CB_MAX_CAB_PATH = common dso_local global i32 0, align 4
@CB_MAX_CABINET_NAME = common dso_local global i32 0, align 4
@cfheadPREV_CABINET = common dso_local global i32 0, align 4
@cfheadNEXT_CABINET = common dso_local global i32 0, align 4
@cfheadRESERVE_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"!CAB\00", align 1
@_O_RDWR = common dso_local global i32 0, align 4
@_O_CREAT = common dso_local global i32 0, align 4
@_O_TRUNC = common dso_local global i32 0, align 4
@_O_BINARY = common dso_local global i32 0, align 4
@_S_IREAD = common dso_local global i32 0, align 4
@_S_IWRITE = common dso_local global i32 0, align 4
@FCIERR_CAB_FILE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"MSCF\00", align 1
@statusCabinet = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32 (i32, i32, i32, i32)*)* @write_cabinet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_cabinet(%struct.TYPE_18__* %0, i32 (i32, i32, i32, i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32 (i32, i32, i32, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.anon*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 (i32, i32, i32, i32)* %1, i32 (i32, i32, i32, i32)** %5, align 8
  %17 = load i32, i32* @CB_MAX_CAB_PATH, align 4
  %18 = load i32, i32* @CB_MAX_CABINET_NAME, align 4
  %19 = add nsw i32 %17, %18
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 18
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %11, align 8
  store i32 0, i32* %12, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = call i32 @get_header_size(%struct.TYPE_18__* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ule i64 %43, 8
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @memset(%struct.TYPE_19__* %47, i32 0, i32 %48)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 17
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %2
  %55 = load i32, i32* @cfheadPREV_CABINET, align 4
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %54, %2
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 16
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @cfheadNEXT_CABINET, align 4
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 12
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 12
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 12
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79, %73, %67
  %86 = load i32, i32* @cfheadRESERVE_PRESENT, align 4
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = call i32 @memcpy(%struct.TYPE_19__* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %94 = load i32, i32* %14, align 4
  %95 = call i8* @fci_endian_ulong(i32 %94)
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 9
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %98, %101
  %103 = call i8* @fci_endian_ulong(i32 %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 8
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  store i32 3, i32* %107, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @fci_endian_uword(i32 %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 7
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @fci_endian_uword(i32 %118)
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 6
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i8* @fci_endian_uword(i32 %122)
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 12
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @fci_endian_uword(i32 %129)
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 12
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @fci_endian_uword(i32 %136)
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i64 1
  %142 = bitcast %struct.TYPE_19__* %141 to i8*
  store i8* %142, i8** %9, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @cfheadRESERVE_PRESENT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %89
  %148 = load i8*, i8** %9, align 8
  %149 = bitcast i8* %148 to %struct.anon*
  store %struct.anon* %149, %struct.anon** %15, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 12
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @fci_endian_uword(i32 %153)
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.anon*, %struct.anon** %15, align 8
  %157 = getelementptr inbounds %struct.anon, %struct.anon* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 12
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.anon*, %struct.anon** %15, align 8
  %163 = getelementptr inbounds %struct.anon, %struct.anon* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 12
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.anon*, %struct.anon** %15, align 8
  %169 = getelementptr inbounds %struct.anon, %struct.anon* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load %struct.anon*, %struct.anon** %15, align 8
  %171 = getelementptr inbounds %struct.anon, %struct.anon* %170, i64 1
  %172 = bitcast %struct.anon* %171 to i8*
  store i8* %172, i8** %9, align 8
  br label %173

173:                                              ; preds = %147, %89
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 12
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8* %180, i8** %9, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @cfheadPREV_CABINET, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %173
  %186 = load i8*, i8** %9, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 15
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @strcpy(i8* %186, i32 %189)
  %191 = load i8*, i8** %9, align 8
  %192 = call i64 @strlen(i8* %191)
  %193 = add nsw i64 %192, 1
  %194 = load i8*, i8** %9, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 %193
  store i8* %195, i8** %9, align 8
  %196 = load i8*, i8** %9, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 14
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @strcpy(i8* %196, i32 %199)
  %201 = load i8*, i8** %9, align 8
  %202 = call i64 @strlen(i8* %201)
  %203 = add nsw i64 %202, 1
  %204 = load i8*, i8** %9, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 %203
  store i8* %205, i8** %9, align 8
  br label %206

206:                                              ; preds = %185, %173
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* @cfheadNEXT_CABINET, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %236

211:                                              ; preds = %206
  %212 = load i8*, i8** %9, align 8
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 13
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @strcpy(i8* %212, i32 %217)
  %219 = load i8*, i8** %9, align 8
  %220 = call i64 @strlen(i8* %219)
  %221 = add nsw i64 %220, 1
  %222 = load i8*, i8** %9, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 %221
  store i8* %223, i8** %9, align 8
  %224 = load i8*, i8** %9, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 13
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @strcpy(i8* %224, i32 %229)
  %231 = load i8*, i8** %9, align 8
  %232 = call i64 @strlen(i8* %231)
  %233 = add nsw i64 %232, 1
  %234 = load i8*, i8** %9, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 %233
  store i8* %235, i8** %9, align 8
  br label %236

236:                                              ; preds = %211, %206
  %237 = load i8*, i8** %9, align 8
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %239 = bitcast %struct.TYPE_19__* %238 to i8*
  %240 = ptrtoint i8* %237 to i64
  %241 = ptrtoint i8* %239 to i64
  %242 = sub i64 %240, %241
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = icmp eq i64 %242, %244
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 12
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @strcpy(i8* %22, i32 %251)
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 12
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @strcat(i8* %22, i32 %256)
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 5
  %260 = load i32 (i8*, i32, i32, i32*, i32)*, i32 (i8*, i32, i32, i32*, i32)** %259, align 8
  %261 = load i32, i32* @_O_RDWR, align 4
  %262 = load i32, i32* @_O_CREAT, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* @_O_TRUNC, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* @_O_BINARY, align 4
  %267 = or i32 %265, %266
  %268 = load i32, i32* @_S_IREAD, align 4
  %269 = load i32, i32* @_S_IWRITE, align 4
  %270 = or i32 %268, %269
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 8
  %274 = call i32 %260(i8* %22, i32 %267, i32 %270, i32* %8, i32 %273)
  store i32 %274, i32* %10, align 4
  %275 = icmp eq i32 %274, -1
  br i1 %275, label %276, label %282

276:                                              ; preds = %236
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %278 = load i32, i32* @FCIERR_CAB_FILE, align 4
  %279 = load i32, i32* %8, align 4
  %280 = call i32 @set_error(%struct.TYPE_18__* %277, i32 %278, i32 %279)
  %281 = load i32, i32* @FALSE, align 4
  store i32 %281, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %408

282:                                              ; preds = %236
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 6
  %285 = load i32 (i32, %struct.TYPE_19__*, i32, i32*, i32)*, i32 (i32, %struct.TYPE_19__*, i32, i32*, i32)** %284, align 8
  %286 = load i32, i32* %10, align 4
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %288 = load i32, i32* %13, align 4
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 8
  %291 = load i32, i32* %290, align 8
  %292 = call i32 %285(i32 %286, %struct.TYPE_19__* %287, i32 %288, i32* %8, i32 %291)
  %293 = load i32, i32* %13, align 4
  %294 = icmp ne i32 %292, %293
  br i1 %294, label %295, label %300

295:                                              ; preds = %282
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %297 = load i32, i32* @FCIERR_CAB_FILE, align 4
  %298 = load i32, i32* %8, align 4
  %299 = call i32 @set_error(%struct.TYPE_18__* %296, i32 %297, i32 %298)
  br label %391

300:                                              ; preds = %282
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = add nsw i32 %303, %306
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %308, %307
  store i32 %309, i32* %13, align 4
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* %13, align 4
  %313 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %5, align 8
  %314 = call i32 @write_folders(%struct.TYPE_18__* %310, i32 %311, i32 %312, i32 (i32, i32, i32, i32)* %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %300
  br label %391

317:                                              ; preds = %300
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %319 = load i32, i32* %10, align 4
  %320 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %5, align 8
  %321 = call i32 @write_files(%struct.TYPE_18__* %318, i32 %319, i32 (i32, i32, i32, i32)* %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %317
  br label %391

324:                                              ; preds = %317
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %326 = load i32, i32* %10, align 4
  %327 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %5, align 8
  %328 = call i32 @write_data_blocks(%struct.TYPE_18__* %325, i32 %326, i32 (i32, i32, i32, i32)* %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %324
  br label %391

331:                                              ; preds = %324
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 7
  %334 = load i64 (i32, i32, i32, i32*, i32)*, i64 (i32, i32, i32, i32*, i32)** %333, align 8
  %335 = load i32, i32* %10, align 4
  %336 = load i32, i32* @SEEK_SET, align 4
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 8
  %339 = load i32, i32* %338, align 8
  %340 = call i64 %334(i32 %335, i32 0, i32 %336, i32* %8, i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %331
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %344 = load i32, i32* @FCIERR_CAB_FILE, align 4
  %345 = load i32, i32* %8, align 4
  %346 = call i32 @set_error(%struct.TYPE_18__* %343, i32 %344, i32 %345)
  br label %391

347:                                              ; preds = %331
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 2
  %350 = load %struct.TYPE_19__*, %struct.TYPE_19__** %349, align 8
  %351 = call i32 @memcpy(%struct.TYPE_19__* %350, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %352 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i32 0, i32 6
  %354 = load i32 (i32, %struct.TYPE_19__*, i32, i32*, i32)*, i32 (i32, %struct.TYPE_19__*, i32, i32*, i32)** %353, align 8
  %355 = load i32, i32* %10, align 4
  %356 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %357 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %356, i32 0, i32 2
  %358 = load %struct.TYPE_19__*, %struct.TYPE_19__** %357, align 8
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 8
  %361 = load i32, i32* %360, align 8
  %362 = call i32 %354(i32 %355, %struct.TYPE_19__* %358, i32 4, i32* %8, i32 %361)
  %363 = icmp ne i32 %362, 4
  br i1 %363, label %364, label %369

364:                                              ; preds = %347
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %366 = load i32, i32* @FCIERR_CAB_FILE, align 4
  %367 = load i32, i32* %8, align 4
  %368 = call i32 @set_error(%struct.TYPE_18__* %365, i32 %366, i32 %367)
  br label %391

369:                                              ; preds = %347
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %370, i32 0, i32 10
  %372 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %371, align 8
  %373 = load i32, i32* %10, align 4
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 8
  %376 = load i32, i32* %375, align 8
  %377 = call i32 %372(i32 %373, i32* %8, i32 %376)
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %379 = call i32 @reset_cabinet(%struct.TYPE_18__* %378)
  %380 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %5, align 8
  %381 = load i32, i32* @statusCabinet, align 4
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 11
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* %14, align 4
  %386 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %386, i32 0, i32 8
  %388 = load i32, i32* %387, align 8
  %389 = call i32 %380(i32 %381, i32 %384, i32 %385, i32 %388)
  %390 = load i32, i32* @TRUE, align 4
  store i32 %390, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %408

391:                                              ; preds = %364, %342, %330, %323, %316, %295
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 10
  %394 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %393, align 8
  %395 = load i32, i32* %10, align 4
  %396 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %396, i32 0, i32 8
  %398 = load i32, i32* %397, align 8
  %399 = call i32 %394(i32 %395, i32* %8, i32 %398)
  %400 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %400, i32 0, i32 9
  %402 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %401, align 8
  %403 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %403, i32 0, i32 8
  %405 = load i32, i32* %404, align 8
  %406 = call i32 %402(i8* %22, i32* %8, i32 %405)
  %407 = load i32, i32* @FALSE, align 4
  store i32 %407, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %408

408:                                              ; preds = %391, %369, %276
  %409 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %409)
  %410 = load i32, i32* %3, align 4
  ret i32 %410
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_header_size(%struct.TYPE_18__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_19__*, i8*, i32) #2

declare dso_local i8* @fci_endian_ulong(i32) #2

declare dso_local i8* @fci_endian_uword(i32) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcat(i8*, i32) #2

declare dso_local i32 @set_error(%struct.TYPE_18__*, i32, i32) #2

declare dso_local i32 @write_folders(%struct.TYPE_18__*, i32, i32, i32 (i32, i32, i32, i32)*) #2

declare dso_local i32 @write_files(%struct.TYPE_18__*, i32, i32 (i32, i32, i32, i32)*) #2

declare dso_local i32 @write_data_blocks(%struct.TYPE_18__*, i32, i32 (i32, i32, i32, i32)*) #2

declare dso_local i32 @reset_cabinet(%struct.TYPE_18__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
