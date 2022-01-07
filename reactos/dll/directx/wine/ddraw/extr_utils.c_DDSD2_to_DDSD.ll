; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_utils.c_DDSD2_to_DDSD.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_utils.c_DDSD2_to_DDSD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, %struct.TYPE_29__, i32, i32, i32, %struct.TYPE_27__, i32, i32, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_23__, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_28__, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_24__, %struct.TYPE_22__, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }

@DDSD_WIDTH = common dso_local global i32 0, align 4
@DDSD_HEIGHT = common dso_local global i32 0, align 4
@DDSD_PIXELFORMAT = common dso_local global i32 0, align 4
@DDSD_CAPS = common dso_local global i32 0, align 4
@DDSCAPS_ZBUFFER = common dso_local global i32 0, align 4
@DDSD_ZBUFFERBITDEPTH = common dso_local global i32 0, align 4
@DDSD_PITCH = common dso_local global i32 0, align 4
@DDSD_BACKBUFFERCOUNT = common dso_local global i32 0, align 4
@DDSD_ALPHABITDEPTH = common dso_local global i32 0, align 4
@DDSD_CKDESTOVERLAY = common dso_local global i32 0, align 4
@DDSD_CKDESTBLT = common dso_local global i32 0, align 4
@DDSD_CKSRCOVERLAY = common dso_local global i32 0, align 4
@DDSD_CKSRCBLT = common dso_local global i32 0, align 4
@DDSD_MIPMAPCOUNT = common dso_local global i32 0, align 4
@DDSD_REFRESHRATE = common dso_local global i32 0, align 4
@DDSD_LINEARSIZE = common dso_local global i32 0, align 4
@DDSD_TEXTURESTAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Does not exist in DDSURFACEDESC: DDSD_TEXTURESTAGE\0A\00", align 1
@DDSD_FVF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Does not exist in DDSURFACEDESC: DDSD_FVF\0A\00", align 1
@DDSD_SRCVBHANDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Does not exist in DDSURFACEDESC: DDSD_SRCVBHANDLE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DDSD2_to_DDSD(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %5 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %6 = call i32 @memset(%struct.TYPE_20__* %5, i32 0, i32 72)
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 72, i32* %8, align 4
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DDSD_WIDTH, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 14
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DDSD_HEIGHT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 13
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DDSD_PIXELFORMAT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %90

46:                                               ; preds = %39
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 12
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 11
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = bitcast %struct.TYPE_22__* %48 to i8*
  %53 = bitcast %struct.TYPE_22__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DDSD_CAPS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %46
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 10
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DDSCAPS_ZBUFFER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %60
  %69 = load i32, i32* @DDSD_PIXELFORMAT, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @DDSD_ZBUFFERBITDEPTH, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 11
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %68, %60, %46
  br label %90

90:                                               ; preds = %89, %39
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 10
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 11
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DDSD_PITCH, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %90
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %104, %90
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DDSD_BACKBUFFERCOUNT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 10
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %112
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @DDSD_ZBUFFERBITDEPTH, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 4
  br label %141

141:                                              ; preds = %133, %126
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @DDSD_ALPHABITDEPTH, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 9
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %148, %141
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 8
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @DDSD_CKDESTOVERLAY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %154
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %166, %154
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @DDSD_CKDESTBLT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %173
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 6
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %180, %173
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @DDSD_CKSRCOVERLAY, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 5
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %193, %186
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @DDSD_CKSRCBLT, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %199
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 4
  br label %212

212:                                              ; preds = %206, %199
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @DDSD_MIPMAPCOUNT, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %212
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 1
  store i32 %223, i32* %226, align 4
  br label %227

227:                                              ; preds = %219, %212
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @DDSD_REFRESHRATE, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %227
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 0
  store i32 %238, i32* %241, align 4
  br label %242

242:                                              ; preds = %234, %227
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @DDSD_LINEARSIZE, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %242
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  store i32 %253, i32* %256, align 4
  br label %257

257:                                              ; preds = %249, %242
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @DDSD_TEXTURESTAGE, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %257
  %265 = call i32 @WARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %257
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @DDSD_FVF, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %266
  %274 = call i32 @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %275

275:                                              ; preds = %273, %266
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @DDSD_SRCVBHANDLE, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %275
  %283 = call i32 @WARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %284

284:                                              ; preds = %282, %275
  %285 = load i32, i32* @DDSD_TEXTURESTAGE, align 4
  %286 = load i32, i32* @DDSD_FVF, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @DDSD_SRCVBHANDLE, align 4
  %289 = or i32 %287, %288
  %290 = xor i32 %289, -1
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, %290
  store i32 %294, i32* %292, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
