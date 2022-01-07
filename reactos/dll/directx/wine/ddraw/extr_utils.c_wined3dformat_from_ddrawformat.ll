; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_utils.c_wined3dformat_from_ddrawformat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_utils.c_wined3dformat_from_ddrawformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Convert a DirectDraw Pixelformat to a WineD3D Pixelformat\0A\00", align 1
@ddraw = common dso_local global i32 0, align 4
@DDPF_PALETTEINDEXED8 = common dso_local global i32 0, align 4
@WINED3DFMT_P8_UINT = common dso_local global i32 0, align 4
@DDPF_PALETTEINDEXED1 = common dso_local global i32 0, align 4
@DDPF_PALETTEINDEXED2 = common dso_local global i32 0, align 4
@DDPF_PALETTEINDEXED4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [106 x i8] c"DDPF_PALETTEINDEXED1 to DDPF_PALETTEINDEXED4 are not supported by WineD3D (yet). Returning WINED3DFMT_P8\0A\00", align 1
@DDPF_RGB = common dso_local global i32 0, align 4
@WINED3DFMT_B2G3R3_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_B5G6R5_UNORM = common dso_local global i32 0, align 4
@DDPF_ALPHAPIXELS = common dso_local global i32 0, align 4
@WINED3DFMT_B5G5R5A1_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_B5G5R5X1_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_B4G4R4A4_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_B4G4R4X4_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_B2G3R3A8_UNORM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"16 bit RGB Pixel format does not match.\0A\00", align 1
@WINED3DFMT_UNKNOWN = common dso_local global i32 0, align 4
@WINED3DFMT_B8G8R8_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_B8G8R8A8_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_B8G8R8X8_UNORM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"32 bit RGB pixel format does not match.\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Invalid dwRGBBitCount in Pixelformat structure.\0A\00", align 1
@DDPF_ALPHA = common dso_local global i32 0, align 4
@WINED3DFMT_A8_UNORM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"Invalid AlphaBitDepth in Alpha-Only Pixelformat.\0A\00", align 1
@DDPF_LUMINANCE = common dso_local global i32 0, align 4
@WINED3DFMT_L4A4_UNORM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Unknown Alpha / Luminance bit depth combination.\0A\00", align 1
@.str.7 = private unnamed_addr constant [91 x i8] c"A luminance Pixelformat shouldn't have 6 luminance bits. Returning D3DFMT_L6V5U5 for now.\0A\00", align 1
@WINED3DFMT_R5G5_SNORM_L6_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_L8A8_UNORM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"Unknown Alpha / Lumincase bit depth combination.\0A\00", align 1
@WINED3DFMT_L8_UNORM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"Unknown luminance-only bit depth 0x%x.\0A\00", align 1
@DDPF_ZBUFFER = common dso_local global i32 0, align 4
@DDPF_STENCILBUFFER = common dso_local global i32 0, align 4
@WINED3DFMT_S1_UINT_D15_UNORM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [59 x i8] c"Unknown depth stencil format: 16 z bits, %u stencil bits.\0A\00", align 1
@WINED3DFMT_D24_UNORM_S8_UINT = common dso_local global i32 0, align 4
@WINED3DFMT_S4X4_UINT_D24_UNORM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [59 x i8] c"Unknown depth stencil format: 32 z bits, %u stencil bits.\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"Unknown depth stencil format: %u z bits, %u stencil bits.\0A\00", align 1
@WINED3DFMT_D16_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_X8D24_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_D32_UNORM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [51 x i8] c"Unknown depth-only format: 32 z bits, mask 0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"Unknown depth-only format: %u z bits, mask 0x%08x\0A\00", align 1
@DDPF_FOURCC = common dso_local global i32 0, align 4
@DDPF_BUMPDUDV = common dso_local global i32 0, align 4
@WINED3DFMT_R8G8_SNORM = common dso_local global i32 0, align 4
@WINED3DFMT_R8G8_SNORM_L8X8_UNORM = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"Unknown Pixelformat.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wined3dformat_from_ddrawformat(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %4 = call i32 @TRACE(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @ddraw, align 4
  %6 = call i64 @TRACE_ON(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = call i32 @DDRAW_dump_pixelformat(%struct.TYPE_14__* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DDPF_PALETTEINDEXED8, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @WINED3DFMT_P8_UINT, align 4
  store i32 %19, i32* %2, align 4
  br label %528

20:                                               ; preds = %11
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DDPF_PALETTEINDEXED1, align 4
  %25 = load i32, i32* @DDPF_PALETTEINDEXED2, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DDPF_PALETTEINDEXED4, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = call i32 @FIXME(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @WINED3DFMT_P8_UINT, align 4
  store i32 %33, i32* %2, align 4
  br label %528

34:                                               ; preds = %20
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DDPF_RGB, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %217

41:                                               ; preds = %34
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %214 [
    i32 8, label %46
    i32 16, label %48
    i32 24, label %174
    i32 32, label %176
  ]

46:                                               ; preds = %41
  %47 = load i32, i32* @WINED3DFMT_B2G3R3_UNORM, align 4
  store i32 %47, i32* %2, align 4
  br label %528

48:                                               ; preds = %41
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 63488
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 2016
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 31
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @WINED3DFMT_B5G6R5_UNORM, align 4
  store i32 %67, i32* %2, align 4
  br label %528

68:                                               ; preds = %60, %54, %48
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 31744
  br i1 %73, label %74, label %103

74:                                               ; preds = %68
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 992
  br i1 %79, label %80, label %103

80:                                               ; preds = %74
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 31
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DDPF_ALPHAPIXELS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 32768
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @WINED3DFMT_B5G5R5A1_UNORM, align 4
  store i32 %100, i32* %2, align 4
  br label %528

101:                                              ; preds = %93, %86
  %102 = load i32, i32* @WINED3DFMT_B5G5R5X1_UNORM, align 4
  store i32 %102, i32* %2, align 4
  br label %528

103:                                              ; preds = %80, %74, %68
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 3840
  br i1 %108, label %109, label %138

109:                                              ; preds = %103
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 240
  br i1 %114, label %115, label %138

115:                                              ; preds = %109
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 15
  br i1 %120, label %121, label %138

121:                                              ; preds = %115
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @DDPF_ALPHAPIXELS, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %121
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 61440
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @WINED3DFMT_B4G4R4A4_UNORM, align 4
  store i32 %135, i32* %2, align 4
  br label %528

136:                                              ; preds = %128, %121
  %137 = load i32, i32* @WINED3DFMT_B4G4R4X4_UNORM, align 4
  store i32 %137, i32* %2, align 4
  br label %528

138:                                              ; preds = %115, %109, %103
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @DDPF_ALPHAPIXELS, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %171

145:                                              ; preds = %138
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 65280
  br i1 %150, label %151, label %171

151:                                              ; preds = %145
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 224
  br i1 %156, label %157, label %171

157:                                              ; preds = %151
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 28
  br i1 %162, label %163, label %171

163:                                              ; preds = %157
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @WINED3DFMT_B2G3R3A8_UNORM, align 4
  store i32 %170, i32* %2, align 4
  br label %528

171:                                              ; preds = %163, %157, %151, %145, %138
  %172 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %173 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %173, i32* %2, align 4
  br label %528

174:                                              ; preds = %41
  %175 = load i32, i32* @WINED3DFMT_B8G8R8_UNORM, align 4
  store i32 %175, i32* %2, align 4
  br label %528

176:                                              ; preds = %41
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 16711680
  br i1 %181, label %182, label %211

182:                                              ; preds = %176
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 65280
  br i1 %187, label %188, label %211

188:                                              ; preds = %182
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 255
  br i1 %193, label %194, label %211

194:                                              ; preds = %188
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @DDPF_ALPHAPIXELS, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %194
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, -16777216
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = load i32, i32* @WINED3DFMT_B8G8R8A8_UNORM, align 4
  store i32 %208, i32* %2, align 4
  br label %528

209:                                              ; preds = %201, %194
  %210 = load i32, i32* @WINED3DFMT_B8G8R8X8_UNORM, align 4
  store i32 %210, i32* %2, align 4
  br label %528

211:                                              ; preds = %188, %182, %176
  %212 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %213 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %213, i32* %2, align 4
  br label %528

214:                                              ; preds = %41
  %215 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %216 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %216, i32* %2, align 4
  br label %528

217:                                              ; preds = %34
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @DDPF_ALPHA, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %217
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  switch i32 %228, label %231 [
    i32 8, label %229
  ]

229:                                              ; preds = %224
  %230 = load i32, i32* @WINED3DFMT_A8_UNORM, align 4
  store i32 %230, i32* %2, align 4
  br label %528

231:                                              ; preds = %224
  %232 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %233 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %233, i32* %2, align 4
  br label %528

234:                                              ; preds = %217
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @DDPF_LUMINANCE, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %297

241:                                              ; preds = %234
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @DDPF_ALPHAPIXELS, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %279

248:                                              ; preds = %241
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 5
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  switch i32 %252, label %278 [
    i32 4, label %253
    i32 6, label %264
    i32 8, label %267
  ]

253:                                              ; preds = %248
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 4
  br i1 %258, label %259, label %261

259:                                              ; preds = %253
  %260 = load i32, i32* @WINED3DFMT_L4A4_UNORM, align 4
  store i32 %260, i32* %2, align 4
  br label %528

261:                                              ; preds = %253
  %262 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %263 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %263, i32* %2, align 4
  br label %528

264:                                              ; preds = %248
  %265 = call i32 @FIXME(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.7, i64 0, i64 0))
  %266 = load i32, i32* @WINED3DFMT_R5G5_SNORM_L6_UNORM, align 4
  store i32 %266, i32* %2, align 4
  br label %528

267:                                              ; preds = %248
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, 8
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = load i32, i32* @WINED3DFMT_L8A8_UNORM, align 4
  store i32 %274, i32* %2, align 4
  br label %528

275:                                              ; preds = %267
  %276 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %277 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %277, i32* %2, align 4
  br label %528

278:                                              ; preds = %248
  br label %296

279:                                              ; preds = %241
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 5
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  switch i32 %283, label %289 [
    i32 6, label %284
    i32 8, label %287
  ]

284:                                              ; preds = %279
  %285 = call i32 @FIXME(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.7, i64 0, i64 0))
  %286 = load i32, i32* @WINED3DFMT_R5G5_SNORM_L6_UNORM, align 4
  store i32 %286, i32* %2, align 4
  br label %528

287:                                              ; preds = %279
  %288 = load i32, i32* @WINED3DFMT_L8_UNORM, align 4
  store i32 %288, i32* %2, align 4
  br label %528

289:                                              ; preds = %279
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %293)
  %295 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %295, i32* %2, align 4
  br label %528

296:                                              ; preds = %278
  br label %521

297:                                              ; preds = %234
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @DDPF_ZBUFFER, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %419

304:                                              ; preds = %297
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @DDPF_STENCILBUFFER, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %366

311:                                              ; preds = %304
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  switch i32 %315, label %355 [
    i32 16, label %316
    i32 32, label %331
  ]

316:                                              ; preds = %311
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %324

322:                                              ; preds = %316
  %323 = load i32, i32* @WINED3DFMT_S1_UINT_D15_UNORM, align 4
  store i32 %323, i32* %2, align 4
  br label %528

324:                                              ; preds = %316
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 4
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i32 %328)
  %330 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %330, i32* %2, align 4
  br label %528

331:                                              ; preds = %311
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp eq i32 %335, 8
  br i1 %336, label %337, label %339

337:                                              ; preds = %331
  %338 = load i32, i32* @WINED3DFMT_D24_UNORM_S8_UINT, align 4
  store i32 %338, i32* %2, align 4
  br label %528

339:                                              ; preds = %331
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 4
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = icmp eq i32 %343, 4
  br i1 %344, label %345, label %347

345:                                              ; preds = %339
  %346 = load i32, i32* @WINED3DFMT_S4X4_UINT_D24_UNORM, align 4
  store i32 %346, i32* %2, align 4
  br label %528

347:                                              ; preds = %339
  br label %348

348:                                              ; preds = %347
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i32 %352)
  %354 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %354, i32* %2, align 4
  br label %528

355:                                              ; preds = %311
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 4
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i32 %359, i32 %363)
  %365 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %365, i32* %2, align 4
  br label %528

366:                                              ; preds = %304
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 5
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  switch i32 %370, label %408 [
    i32 16, label %371
    i32 24, label %373
    i32 32, label %375
  ]

371:                                              ; preds = %366
  %372 = load i32, i32* @WINED3DFMT_D16_UNORM, align 4
  store i32 %372, i32* %2, align 4
  br label %528

373:                                              ; preds = %366
  %374 = load i32, i32* @WINED3DFMT_X8D24_UNORM, align 4
  store i32 %374, i32* %2, align 4
  br label %528

375:                                              ; preds = %366
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %379, 16777215
  br i1 %380, label %381, label %383

381:                                              ; preds = %375
  %382 = load i32, i32* @WINED3DFMT_X8D24_UNORM, align 4
  store i32 %382, i32* %2, align 4
  br label %528

383:                                              ; preds = %375
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = icmp eq i32 %387, -256
  br i1 %388, label %389, label %391

389:                                              ; preds = %383
  %390 = load i32, i32* @WINED3DFMT_X8D24_UNORM, align 4
  store i32 %390, i32* %2, align 4
  br label %528

391:                                              ; preds = %383
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = icmp eq i32 %395, -1
  br i1 %396, label %397, label %399

397:                                              ; preds = %391
  %398 = load i32, i32* @WINED3DFMT_D32_UNORM, align 4
  store i32 %398, i32* %2, align 4
  br label %528

399:                                              ; preds = %391
  br label %400

400:                                              ; preds = %399
  br label %401

401:                                              ; preds = %400
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %405)
  %407 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %407, i32* %2, align 4
  br label %528

408:                                              ; preds = %366
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 3
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i32 %412, i32 %416)
  %418 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %418, i32* %2, align 4
  br label %528

419:                                              ; preds = %297
  %420 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @DDPF_FOURCC, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %419
  %427 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  store i32 %429, i32* %2, align 4
  br label %528

430:                                              ; preds = %419
  %431 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @DDPF_BUMPDUDV, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %518

437:                                              ; preds = %430
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 5
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 4
  %442 = icmp eq i32 %441, 16
  br i1 %442, label %443, label %463

443:                                              ; preds = %437
  %444 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 4
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 4
  %448 = icmp eq i32 %447, 255
  br i1 %448, label %449, label %463

449:                                              ; preds = %443
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 3
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = icmp eq i32 %453, 65280
  br i1 %454, label %455, label %463

455:                                              ; preds = %449
  %456 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %463

461:                                              ; preds = %455
  %462 = load i32, i32* @WINED3DFMT_R8G8_SNORM, align 4
  store i32 %462, i32* %2, align 4
  br label %528

463:                                              ; preds = %455, %449, %443, %437
  %464 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %464, i32 0, i32 5
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 4
  %467 = load i32, i32* %466, align 4
  %468 = icmp eq i32 %467, 16
  br i1 %468, label %469, label %489

469:                                              ; preds = %463
  %470 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %471 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %470, i32 0, i32 4
  %472 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 4
  %474 = icmp eq i32 %473, 31
  br i1 %474, label %475, label %489

475:                                              ; preds = %469
  %476 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %476, i32 0, i32 3
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 4
  %480 = icmp eq i32 %479, 992
  br i1 %480, label %481, label %489

481:                                              ; preds = %475
  %482 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = icmp eq i32 %485, 64512
  br i1 %486, label %487, label %489

487:                                              ; preds = %481
  %488 = load i32, i32* @WINED3DFMT_R5G5_SNORM_L6_UNORM, align 4
  store i32 %488, i32* %2, align 4
  br label %528

489:                                              ; preds = %481, %475, %469, %463
  %490 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %490, i32 0, i32 5
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i32 0, i32 4
  %493 = load i32, i32* %492, align 4
  %494 = icmp eq i32 %493, 32
  br i1 %494, label %495, label %515

495:                                              ; preds = %489
  %496 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %496, i32 0, i32 4
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 4
  %500 = icmp eq i32 %499, 255
  br i1 %500, label %501, label %515

501:                                              ; preds = %495
  %502 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %503 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %502, i32 0, i32 3
  %504 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 4
  %506 = icmp eq i32 %505, 65280
  br i1 %506, label %507, label %515

507:                                              ; preds = %501
  %508 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = icmp eq i32 %511, 16711680
  br i1 %512, label %513, label %515

513:                                              ; preds = %507
  %514 = load i32, i32* @WINED3DFMT_R8G8_SNORM_L8X8_UNORM, align 4
  store i32 %514, i32* %2, align 4
  br label %528

515:                                              ; preds = %507, %501, %495, %489
  br label %516

516:                                              ; preds = %515
  br label %517

517:                                              ; preds = %516
  br label %518

518:                                              ; preds = %517, %430
  br label %519

519:                                              ; preds = %518
  br label %520

520:                                              ; preds = %519
  br label %521

521:                                              ; preds = %520, %296
  br label %522

522:                                              ; preds = %521
  br label %523

523:                                              ; preds = %522
  br label %524

524:                                              ; preds = %523
  br label %525

525:                                              ; preds = %524
  %526 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %527 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %527, i32* %2, align 4
  br label %528

528:                                              ; preds = %525, %513, %487, %461, %426, %408, %401, %397, %389, %381, %373, %371, %355, %348, %345, %337, %324, %322, %289, %287, %284, %275, %273, %264, %261, %259, %231, %229, %214, %211, %209, %207, %174, %171, %169, %136, %134, %101, %99, %66, %46, %31, %18
  %529 = load i32, i32* %2, align 4
  ret i32 %529
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @DDRAW_dump_pixelformat(%struct.TYPE_14__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @WARN(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
