; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_executebuffer.c_d3d_execute_buffer_execute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_executebuffer.c_d3d_execute_buffer_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d_execute_buffer = type { i32, i32, i32, %struct.TYPE_23__, %struct.wined3d_buffer*, %struct.wined3d_buffer*, %struct.wined3d_buffer*, %struct.TYPE_24__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.wined3d_buffer = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.d3d_device = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.d3d_viewport = type { %struct.d3d_device* }
%struct.wined3d_map_desc = type { i32* }
%struct.wined3d_box = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.wined3d_buffer_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_29__, %struct.TYPE_28__ }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.ddraw_surface = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Viewport %p active device is %p.\0A\00", align 1
@DDERR_INVALIDPARAMS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ExecuteData :\0A\00", align 1
@ddraw = common dso_local global i32 0, align 4
@WINED3D_PT_POINTLIST = common dso_local global i32 0, align 4
@D3DFVF_TLVERTEX = common dso_local global i32 0, align 4
@WINED3D_PT_LINELIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"TRIANGLE         (%d)\0A\00", align 1
@WINED3D_PT_TRIANGLELIST = common dso_local global i32 0, align 4
@WINED3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@WINED3DUSAGE_WRITEONLY = common dso_local global i32 0, align 4
@WINED3DUSAGE_STATICDECL = common dso_local global i32 0, align 4
@WINED3D_BIND_INDEX_BUFFER = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_GPU = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_R = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_W = common dso_local global i32 0, align 4
@ddraw_null_wined3d_parent_ops = common dso_local global i32 0, align 4
@WINED3D_MAP_WRITE = common dso_local global i32 0, align 4
@WINED3D_MAP_NOOVERWRITE = common dso_local global i32 0, align 4
@WINED3D_MAP_DISCARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"  v1: %d  v2: %d  v3: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"  Flags : \00", align 1
@D3DTRIFLAG_EDGEENABLE1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"EDGEENABLE1 \00", align 1
@D3DTRIFLAG_EDGEENABLE2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"EDGEENABLE2 \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"EDGEENABLE3 \00", align 1
@D3DTRIFLAG_EVEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"EVEN \00", align 1
@D3DTRIFLAG_ODD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"ODD \00", align 1
@D3DTRIFLAG_START = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"START \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"STARTFLAT(%u) \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@WINED3DFMT_R16_UINT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"MATRIXLOAD-s     (%u)\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"MATRIXMULTIPLY   (%d)\0A\00", align 1
@DDRAW_HANDLE_MATRIX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [64 x i8] c"Invalid matrix handle (a %#x -> %p, b %#x -> %p, c %#x -> %p).\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"dst %p, src1 %p, src2 %p.\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"STATETRANSFORM   (%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Invalid matrix handle %#x.\0A\00", align 1
@D3DTRANSFORMSTATE_WORLD = common dso_local global i32 0, align 4
@D3DTRANSFORMSTATE_VIEW = common dso_local global i32 0, align 4
@D3DTRANSFORMSTATE_PROJECTION = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"STATELIGHT       (%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Failed to set light state.\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"STATERENDER      (%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Failed to set render state.\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"PROCESSVERTICES  (%d)\0A\00", align 1
@D3DPROCESSVERTICES_OPMASK = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [43 x i8] c"  start %u, dest %u, count %u, flags %#x.\0A\00", align 1
@D3DPROCESSVERTICES_UPDATEEXTENTS = common dso_local global i32 0, align 4
@d3d_execute_buffer_execute.once = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [51 x i8] c"D3DPROCESSVERTICES_UPDATEEXTENTS not implemented.\0A\00", align 1
@D3DPROCESSVERTICES_NOCOLOR = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [45 x i8] c"D3DPROCESSVERTICES_NOCOLOR not implemented.\0A\00", align 1
@D3DFVF_VERTEX = common dso_local global i32 0, align 4
@WINED3D_RS_LIGHTING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@D3DFVF_LVERTEX = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [37 x i8] c"Unhandled vertex processing op %#x.\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"TEXTURELOAD    (%u)\0A\00", align 1
@DDRAW_HANDLE_SURFACE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [41 x i8] c"Invalid destination texture handle %#x.\0A\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"Invalid source texture handle %#x.\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"EXIT             (%u)\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"BRANCHFORWARD    (%d)\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c" Branch to %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"SPAN-s           (%u)\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"SETSTATUS        (%d)\0A\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"Unhandled OpCode %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3d_execute_buffer_execute(%struct.d3d_execute_buffer* %0, %struct.d3d_device* %1, %struct.d3d_viewport* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3d_execute_buffer*, align 8
  %6 = alloca %struct.d3d_device*, align 8
  %7 = alloca %struct.d3d_viewport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_map_desc, align 8
  %13 = alloca %struct.wined3d_box, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.wined3d_buffer*, align 8
  %24 = alloca %struct.wined3d_buffer_desc, align 4
  %25 = alloca %struct.TYPE_30__*, align 8
  %26 = alloca %struct.TYPE_20__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_17__*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.TYPE_17__*, align 8
  %33 = alloca %struct.TYPE_17__*, align 8
  %34 = alloca %struct.TYPE_18__*, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_31__*, align 8
  %37 = alloca %struct.ddraw_surface*, align 8
  %38 = alloca %struct.ddraw_surface*, align 8
  %39 = alloca %struct.TYPE_22__*, align 8
  store %struct.d3d_execute_buffer* %0, %struct.d3d_execute_buffer** %5, align 8
  store %struct.d3d_device* %1, %struct.d3d_device** %6, align 8
  store %struct.d3d_viewport* %2, %struct.d3d_viewport** %7, align 8
  %40 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8* %51, i8** %9, align 8
  %52 = bitcast %struct.wined3d_box* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %52, i8 0, i64 28, i1 false)
  %53 = load %struct.d3d_viewport*, %struct.d3d_viewport** %7, align 8
  %54 = getelementptr inbounds %struct.d3d_viewport, %struct.d3d_viewport* %53, i32 0, i32 0
  %55 = load %struct.d3d_device*, %struct.d3d_device** %54, align 8
  %56 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %57 = icmp ne %struct.d3d_device* %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %3
  %59 = load %struct.d3d_viewport*, %struct.d3d_viewport** %7, align 8
  %60 = load %struct.d3d_viewport*, %struct.d3d_viewport** %7, align 8
  %61 = getelementptr inbounds %struct.d3d_viewport, %struct.d3d_viewport* %60, i32 0, i32 0
  %62 = load %struct.d3d_device*, %struct.d3d_device** %61, align 8
  %63 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.d3d_viewport* %59, %struct.d3d_device* %62)
  %64 = load i32, i32* @DDERR_INVALIDPARAMS, align 4
  store i32 %64, i32* %4, align 4
  br label %1070

65:                                               ; preds = %3
  %66 = load %struct.d3d_viewport*, %struct.d3d_viewport** %7, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @viewport_activate(%struct.d3d_viewport* %66, i32 %67)
  %69 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ddraw, align 4
  %71 = call i64 @TRACE_ON(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %75 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %74, i32 0, i32 3
  %76 = call i32 @_dump_executedata(%struct.TYPE_23__* %75)
  br label %77

77:                                               ; preds = %73, %65
  br label %78

78:                                               ; preds = %1067, %77
  %79 = load i8*, i8** %9, align 8
  %80 = bitcast i8* %79 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %80, %struct.TYPE_21__** %15, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %17, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %16, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 12
  store i8* %88, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %1056 [
    i32 139, label %92
    i32 142, label %146
    i32 131, label %152
    i32 141, label %454
    i32 140, label %463
    i32 133, label %540
    i32 135, label %638
    i32 134, label %674
    i32 138, label %710
    i32 132, label %882
    i32 143, label %937
    i32 144, label %944
    i32 136, label %1024
    i32 137, label %1033
  ]

92:                                               ; preds = %78
  %93 = load i8*, i8** %9, align 8
  %94 = bitcast i8* %93 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %94, %struct.TYPE_19__** %18, align 8
  %95 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %96 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @WINED3D_PT_POINTLIST, align 4
  %99 = call i32 @wined3d_device_set_primitive_type(i32 %97, i32 %98, i32 0)
  %100 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %101 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %104 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %103, i32 0, i32 5
  %105 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %104, align 8
  %106 = call i32 @wined3d_device_set_stream_source(i32 %102, i32 0, %struct.wined3d_buffer* %105, i32 0, i32 4)
  %107 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %108 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %111 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @D3DFVF_TLVERTEX, align 4
  %114 = call i32 @ddraw_find_decl(i32 %112, i32 %113)
  %115 = call i32 @wined3d_device_set_vertex_declaration(i32 %109, i32 %114)
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %137, %92
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %122 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %125 = load i32, i32* %10, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %131 = load i32, i32* %10, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @wined3d_device_draw_primitive(i32 %123, i32 %129, i32 %135)
  br label %137

137:                                              ; preds = %120
  %138 = load i32, i32* %10, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %116

140:                                              ; preds = %116
  %141 = load i32, i32* %17, align 4
  %142 = zext i32 %141 to i64
  %143 = mul i64 8, %142
  %144 = load i8*, i8** %9, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 %143
  store i8* %145, i8** %9, align 8
  br label %1067

146:                                              ; preds = %78
  store i32 2, i32* %11, align 4
  %147 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %148 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @WINED3D_PT_LINELIST, align 4
  %151 = call i32 @wined3d_device_set_primitive_type(i32 %149, i32 %150, i32 0)
  br label %152

152:                                              ; preds = %78, %146
  %153 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %154 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %20, align 4
  %156 = load i32, i32* %17, align 4
  %157 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %17, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %152
  br label %1067

161:                                              ; preds = %152
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %166 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @WINED3D_PT_TRIANGLELIST, align 4
  %169 = call i32 @wined3d_device_set_primitive_type(i32 %167, i32 %168, i32 0)
  store i32 3, i32* %11, align 4
  br label %170

170:                                              ; preds = %164, %161
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %11, align 4
  %173 = mul i32 %171, %172
  store i32 %173, i32* %21, align 4
  %174 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %175 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %21, align 4
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %179, label %232

179:                                              ; preds = %170
  %180 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %181 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = mul i32 %182, 2
  %184 = load i32, i32* %21, align 4
  %185 = call i32 @max(i32 %183, i32 %184)
  store i32 %185, i32* %22, align 4
  %186 = load i32, i32* %22, align 4
  %187 = zext i32 %186 to i64
  %188 = mul i64 %187, 4
  %189 = trunc i64 %188 to i32
  %190 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %24, i32 0, i32 0
  store i32 %189, i32* %190, align 4
  %191 = load i32, i32* @WINED3DUSAGE_DYNAMIC, align 4
  %192 = load i32, i32* @WINED3DUSAGE_WRITEONLY, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @WINED3DUSAGE_STATICDECL, align 4
  %195 = or i32 %193, %194
  %196 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %24, i32 0, i32 1
  store i32 %195, i32* %196, align 4
  %197 = load i32, i32* @WINED3D_BIND_INDEX_BUFFER, align 4
  %198 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %24, i32 0, i32 5
  store i32 %197, i32* %198, align 4
  %199 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %200 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_R, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_W, align 4
  %203 = or i32 %201, %202
  %204 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %24, i32 0, i32 2
  store i32 %203, i32* %204, align 4
  %205 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %24, i32 0, i32 4
  store i32 0, i32* %205, align 4
  %206 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %24, i32 0, i32 3
  store i32 0, i32* %206, align 4
  %207 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %208 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @wined3d_buffer_create(i32 %209, %struct.wined3d_buffer_desc* %24, i32* null, i32* null, i32* @ddraw_null_wined3d_parent_ops, %struct.wined3d_buffer** %23)
  store i32 %210, i32* %14, align 4
  %211 = call i32 @FAILED(i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %179
  %214 = load i32, i32* %14, align 4
  store i32 %214, i32* %4, align 4
  br label %1070

215:                                              ; preds = %179
  %216 = load i32, i32* %22, align 4
  %217 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %218 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %220 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %219, i32 0, i32 6
  %221 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %220, align 8
  %222 = icmp ne %struct.wined3d_buffer* %221, null
  br i1 %222, label %223, label %228

223:                                              ; preds = %215
  %224 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %225 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %224, i32 0, i32 6
  %226 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %225, align 8
  %227 = call i32 @wined3d_buffer_decref(%struct.wined3d_buffer* %226)
  br label %228

228:                                              ; preds = %223, %215
  %229 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %23, align 8
  %230 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %231 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %230, i32 0, i32 6
  store %struct.wined3d_buffer* %229, %struct.wined3d_buffer** %231, align 8
  store i32 0, i32* %20, align 4
  br label %242

232:                                              ; preds = %170
  %233 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %234 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %21, align 4
  %237 = sub i32 %235, %236
  %238 = load i32, i32* %20, align 4
  %239 = icmp ult i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %232
  store i32 0, i32* %20, align 4
  br label %241

241:                                              ; preds = %240, %232
  br label %242

242:                                              ; preds = %241, %228
  %243 = load i32, i32* %20, align 4
  %244 = zext i32 %243 to i64
  %245 = mul i64 %244, 4
  %246 = trunc i64 %245 to i32
  %247 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %13, i32 0, i32 0
  store i32 %246, i32* %247, align 4
  %248 = load i32, i32* %20, align 4
  %249 = load i32, i32* %21, align 4
  %250 = add i32 %248, %249
  %251 = zext i32 %250 to i64
  %252 = mul i64 %251, 4
  %253 = trunc i64 %252 to i32
  %254 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %13, i32 0, i32 1
  store i32 %253, i32* %254, align 4
  %255 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %256 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %255, i32 0, i32 6
  %257 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %256, align 8
  %258 = call i32 @wined3d_buffer_get_resource(%struct.wined3d_buffer* %257)
  %259 = load i32, i32* @WINED3D_MAP_WRITE, align 4
  %260 = load i32, i32* %20, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %242
  %263 = load i32, i32* @WINED3D_MAP_NOOVERWRITE, align 4
  br label %266

264:                                              ; preds = %242
  %265 = load i32, i32* @WINED3D_MAP_DISCARD, align 4
  br label %266

266:                                              ; preds = %264, %262
  %267 = phi i32 [ %263, %262 ], [ %265, %264 ]
  %268 = or i32 %259, %267
  %269 = call i32 @wined3d_resource_map(i32 %258, i32 0, %struct.wined3d_map_desc* %12, %struct.wined3d_box* %13, i32 %268)
  store i32 %269, i32* %14, align 4
  %270 = call i32 @FAILED(i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %266
  %273 = load i32, i32* %14, align 4
  store i32 %273, i32* %4, align 4
  br label %1070

274:                                              ; preds = %266
  %275 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %12, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  store i32* %276, i32** %19, align 8
  store i32 0, i32* %10, align 4
  br label %277

277:                                              ; preds = %410, %274
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* %17, align 4
  %280 = icmp ult i32 %278, %279
  br i1 %280, label %281, label %413

281:                                              ; preds = %277
  %282 = load i8*, i8** %9, align 8
  %283 = bitcast i8* %282 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %283, %struct.TYPE_30__** %25, align 8
  %284 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %285 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %289 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %287, i32 %291, i32 %295)
  %297 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %298 = load i32, i32* @ddraw, align 4
  %299 = call i64 @TRACE_ON(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %369

301:                                              ; preds = %281
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @D3DTRIFLAG_EDGEENABLE1, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %301
  %309 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %310

310:                                              ; preds = %308, %301
  %311 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %312 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @D3DTRIFLAG_EDGEENABLE2, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %310
  %318 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %319

319:                                              ; preds = %317, %310
  %320 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %321 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @D3DTRIFLAG_EDGEENABLE1, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %319
  %327 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %328

328:                                              ; preds = %326, %319
  %329 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %330 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @D3DTRIFLAG_EVEN, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %336

334:                                              ; preds = %328
  %335 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %336

336:                                              ; preds = %334, %328
  %337 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %338 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @D3DTRIFLAG_ODD, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %336
  %343 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %344

344:                                              ; preds = %342, %336
  %345 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %346 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @D3DTRIFLAG_START, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %344
  %351 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %352

352:                                              ; preds = %350, %344
  %353 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %354 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %357, label %367

357:                                              ; preds = %352
  %358 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %359 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = icmp slt i32 %360, 30
  br i1 %361, label %362, label %367

362:                                              ; preds = %357
  %363 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %364 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %365)
  br label %367

367:                                              ; preds = %362, %357, %352
  %368 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %369

369:                                              ; preds = %367, %281
  %370 = load i32, i32* %11, align 4
  switch i32 %370, label %405 [
    i32 3, label %371
    i32 2, label %383
  ]

371:                                              ; preds = %369
  %372 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %373 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %372, i32 0, i32 3
  %374 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load i32*, i32** %19, align 8
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* %11, align 4
  %379 = mul i32 %377, %378
  %380 = add i32 %379, 2
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %376, i64 %381
  store i32 %375, i32* %382, align 4
  br label %383

383:                                              ; preds = %369, %371
  %384 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %385 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = load i32*, i32** %19, align 8
  %389 = load i32, i32* %10, align 4
  %390 = load i32, i32* %11, align 4
  %391 = mul i32 %389, %390
  %392 = add i32 %391, 1
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %388, i64 %393
  store i32 %387, i32* %394, align 4
  %395 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load i32*, i32** %19, align 8
  %400 = load i32, i32* %10, align 4
  %401 = load i32, i32* %11, align 4
  %402 = mul i32 %400, %401
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %399, i64 %403
  store i32 %398, i32* %404, align 4
  br label %405

405:                                              ; preds = %383, %369
  %406 = load i32, i32* %16, align 4
  %407 = load i8*, i8** %9, align 8
  %408 = zext i32 %406 to i64
  %409 = getelementptr inbounds i8, i8* %407, i64 %408
  store i8* %409, i8** %9, align 8
  br label %410

410:                                              ; preds = %405
  %411 = load i32, i32* %10, align 4
  %412 = add i32 %411, 1
  store i32 %412, i32* %10, align 4
  br label %277

413:                                              ; preds = %277
  %414 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %415 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %414, i32 0, i32 6
  %416 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %415, align 8
  %417 = call i32 @wined3d_buffer_get_resource(%struct.wined3d_buffer* %416)
  %418 = call i32 @wined3d_resource_unmap(i32 %417, i32 0)
  %419 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %420 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %423 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %422, i32 0, i32 5
  %424 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %423, align 8
  %425 = call i32 @wined3d_device_set_stream_source(i32 %421, i32 0, %struct.wined3d_buffer* %424, i32 0, i32 4)
  %426 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %427 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %426, i32 0, i32 4
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %430 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %429, i32 0, i32 5
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* @D3DFVF_TLVERTEX, align 4
  %433 = call i32 @ddraw_find_decl(i32 %431, i32 %432)
  %434 = call i32 @wined3d_device_set_vertex_declaration(i32 %428, i32 %433)
  %435 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %436 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %435, i32 0, i32 4
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %439 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %438, i32 0, i32 6
  %440 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %439, align 8
  %441 = load i32, i32* @WINED3DFMT_R16_UINT, align 4
  %442 = call i32 @wined3d_device_set_index_buffer(i32 %437, %struct.wined3d_buffer* %440, i32 %441, i32 0)
  %443 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %444 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %443, i32 0, i32 4
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* %20, align 4
  %447 = load i32, i32* %21, align 4
  %448 = call i32 @wined3d_device_draw_indexed_primitive(i32 %445, i32 %446, i32 %447)
  %449 = load i32, i32* %20, align 4
  %450 = load i32, i32* %21, align 4
  %451 = add i32 %449, %450
  %452 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %453 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %452, i32 0, i32 0
  store i32 %451, i32* %453, align 8
  br label %1067

454:                                              ; preds = %78
  %455 = load i32, i32* %17, align 4
  %456 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %455)
  %457 = load i32, i32* %17, align 4
  %458 = load i32, i32* %16, align 4
  %459 = mul i32 %457, %458
  %460 = load i8*, i8** %9, align 8
  %461 = zext i32 %459 to i64
  %462 = getelementptr inbounds i8, i8* %460, i64 %461
  store i8* %462, i8** %9, align 8
  br label %1067

463:                                              ; preds = %78
  %464 = load i32, i32* %17, align 4
  %465 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %464)
  store i32 0, i32* %10, align 4
  br label %466

466:                                              ; preds = %536, %463
  %467 = load i32, i32* %10, align 4
  %468 = load i32, i32* %17, align 4
  %469 = icmp ult i32 %467, %468
  br i1 %469, label %470, label %539

470:                                              ; preds = %466
  %471 = load i8*, i8** %9, align 8
  %472 = bitcast i8* %471 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %472, %struct.TYPE_20__** %26, align 8
  %473 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %474 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %473, i32 0, i32 3
  %475 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %476 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 4
  %478 = sub nsw i32 %477, 1
  %479 = load i32, i32* @DDRAW_HANDLE_MATRIX, align 4
  %480 = call i8* @ddraw_get_object(i32* %474, i32 %478, i32 %479)
  %481 = bitcast i8* %480 to i32*
  store i32* %481, i32** %27, align 8
  %482 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %483 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %482, i32 0, i32 3
  %484 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %485 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = sub nsw i32 %486, 1
  %488 = load i32, i32* @DDRAW_HANDLE_MATRIX, align 4
  %489 = call i8* @ddraw_get_object(i32* %483, i32 %487, i32 %488)
  %490 = bitcast i8* %489 to i32*
  store i32* %490, i32** %28, align 8
  %491 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %492 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %491, i32 0, i32 3
  %493 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %494 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = sub nsw i32 %495, 1
  %497 = load i32, i32* @DDRAW_HANDLE_MATRIX, align 4
  %498 = call i8* @ddraw_get_object(i32* %492, i32 %496, i32 %497)
  %499 = bitcast i8* %498 to i32*
  store i32* %499, i32** %29, align 8
  %500 = load i32*, i32** %27, align 8
  %501 = icmp ne i32* %500, null
  br i1 %501, label %502, label %508

502:                                              ; preds = %470
  %503 = load i32*, i32** %28, align 8
  %504 = icmp ne i32* %503, null
  br i1 %504, label %505, label %508

505:                                              ; preds = %502
  %506 = load i32*, i32** %29, align 8
  %507 = icmp ne i32* %506, null
  br i1 %507, label %522, label %508

508:                                              ; preds = %505, %502, %470
  %509 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %510 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 4
  %512 = load i32*, i32** %27, align 8
  %513 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %514 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = load i32*, i32** %28, align 8
  %517 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %518 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 4
  %520 = load i32*, i32** %29, align 8
  %521 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0), i32 %511, i32* %512, i32 %515, i32* %516, i32 %519, i32* %520)
  br label %531

522:                                              ; preds = %505
  %523 = load i32*, i32** %27, align 8
  %524 = load i32*, i32** %28, align 8
  %525 = load i32*, i32** %29, align 8
  %526 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32* %523, i32* %524, i32* %525)
  %527 = load i32*, i32** %27, align 8
  %528 = load i32*, i32** %29, align 8
  %529 = load i32*, i32** %28, align 8
  %530 = call i32 @multiply_matrix(i32* %527, i32* %528, i32* %529)
  br label %531

531:                                              ; preds = %522, %508
  %532 = load i32, i32* %16, align 4
  %533 = load i8*, i8** %9, align 8
  %534 = zext i32 %532 to i64
  %535 = getelementptr inbounds i8, i8* %533, i64 %534
  store i8* %535, i8** %9, align 8
  br label %536

536:                                              ; preds = %531
  %537 = load i32, i32* %10, align 4
  %538 = add i32 %537, 1
  store i32 %538, i32* %10, align 4
  br label %466

539:                                              ; preds = %466
  br label %1067

540:                                              ; preds = %78
  %541 = load i32, i32* %17, align 4
  %542 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %541)
  store i32 0, i32* %10, align 4
  br label %543

543:                                              ; preds = %634, %540
  %544 = load i32, i32* %10, align 4
  %545 = load i32, i32* %17, align 4
  %546 = icmp ult i32 %544, %545
  br i1 %546, label %547, label %637

547:                                              ; preds = %543
  %548 = load i8*, i8** %9, align 8
  %549 = bitcast i8* %548 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %549, %struct.TYPE_17__** %30, align 8
  %550 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %551 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %550, i32 0, i32 3
  %552 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %553 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %553, i32 0, i32 0
  %555 = load i32*, i32** %554, align 8
  %556 = getelementptr inbounds i32, i32* %555, i64 0
  %557 = load i32, i32* %556, align 4
  %558 = sub nsw i32 %557, 1
  %559 = load i32, i32* @DDRAW_HANDLE_MATRIX, align 4
  %560 = call i8* @ddraw_get_object(i32* %551, i32 %558, i32 %559)
  %561 = bitcast i8* %560 to i32*
  store i32* %561, i32** %31, align 8
  %562 = load i32*, i32** %31, align 8
  %563 = icmp ne i32* %562, null
  br i1 %563, label %572, label %564

564:                                              ; preds = %547
  %565 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %566 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %566, i32 0, i32 0
  %568 = load i32*, i32** %567, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 0
  %570 = load i32, i32* %569, align 4
  %571 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %570)
  br label %629

572:                                              ; preds = %547
  %573 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %574 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %573, i32 0, i32 1
  %575 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %574, i32 0, i32 2
  %576 = load i32, i32* %575, align 8
  %577 = load i32, i32* @D3DTRANSFORMSTATE_WORLD, align 4
  %578 = icmp eq i32 %576, %577
  br i1 %578, label %579, label %588

579:                                              ; preds = %572
  %580 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %581 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %580, i32 0, i32 0
  %582 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %581, i32 0, i32 0
  %583 = load i32*, i32** %582, align 8
  %584 = getelementptr inbounds i32, i32* %583, i64 0
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %587 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %586, i32 0, i32 0
  store i32 %585, i32* %587, align 4
  br label %588

588:                                              ; preds = %579, %572
  %589 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %590 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %589, i32 0, i32 1
  %591 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %590, i32 0, i32 2
  %592 = load i32, i32* %591, align 8
  %593 = load i32, i32* @D3DTRANSFORMSTATE_VIEW, align 4
  %594 = icmp eq i32 %592, %593
  br i1 %594, label %595, label %604

595:                                              ; preds = %588
  %596 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %597 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %596, i32 0, i32 0
  %598 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %597, i32 0, i32 0
  %599 = load i32*, i32** %598, align 8
  %600 = getelementptr inbounds i32, i32* %599, i64 0
  %601 = load i32, i32* %600, align 4
  %602 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %603 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %602, i32 0, i32 1
  store i32 %601, i32* %603, align 4
  br label %604

604:                                              ; preds = %595, %588
  %605 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %606 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %605, i32 0, i32 1
  %607 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %606, i32 0, i32 2
  %608 = load i32, i32* %607, align 8
  %609 = load i32, i32* @D3DTRANSFORMSTATE_PROJECTION, align 4
  %610 = icmp eq i32 %608, %609
  br i1 %610, label %611, label %620

611:                                              ; preds = %604
  %612 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %613 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %613, i32 0, i32 0
  %615 = load i32*, i32** %614, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 0
  %617 = load i32, i32* %616, align 4
  %618 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %619 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %618, i32 0, i32 2
  store i32 %617, i32* %619, align 4
  br label %620

620:                                              ; preds = %611, %604
  %621 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %622 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %621, i32 0, i32 6
  %623 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %624 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %623, i32 0, i32 1
  %625 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 8
  %627 = load i32*, i32** %31, align 8
  %628 = call i32 @IDirect3DDevice3_SetTransform(i32* %622, i32 %626, i32* %627)
  br label %629

629:                                              ; preds = %620, %564
  %630 = load i32, i32* %16, align 4
  %631 = load i8*, i8** %9, align 8
  %632 = zext i32 %630 to i64
  %633 = getelementptr inbounds i8, i8* %631, i64 %632
  store i8* %633, i8** %9, align 8
  br label %634

634:                                              ; preds = %629
  %635 = load i32, i32* %10, align 4
  %636 = add i32 %635, 1
  store i32 %636, i32* %10, align 4
  br label %543

637:                                              ; preds = %543
  br label %1067

638:                                              ; preds = %78
  %639 = load i32, i32* %17, align 4
  %640 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 %639)
  store i32 0, i32* %10, align 4
  br label %641

641:                                              ; preds = %670, %638
  %642 = load i32, i32* %10, align 4
  %643 = load i32, i32* %17, align 4
  %644 = icmp ult i32 %642, %643
  br i1 %644, label %645, label %673

645:                                              ; preds = %641
  %646 = load i8*, i8** %9, align 8
  %647 = bitcast i8* %646 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %647, %struct.TYPE_17__** %32, align 8
  %648 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %649 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %648, i32 0, i32 6
  %650 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %651 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %650, i32 0, i32 1
  %652 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %651, i32 0, i32 1
  %653 = load i32, i32* %652, align 4
  %654 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %655 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %654, i32 0, i32 0
  %656 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %655, i32 0, i32 0
  %657 = load i32*, i32** %656, align 8
  %658 = getelementptr inbounds i32, i32* %657, i64 0
  %659 = load i32, i32* %658, align 4
  %660 = call i32 @IDirect3DDevice3_SetLightState(i32* %649, i32 %653, i32 %659)
  %661 = call i32 @FAILED(i32 %660)
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %665

663:                                              ; preds = %645
  %664 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0))
  br label %665

665:                                              ; preds = %663, %645
  %666 = load i32, i32* %16, align 4
  %667 = load i8*, i8** %9, align 8
  %668 = zext i32 %666 to i64
  %669 = getelementptr inbounds i8, i8* %667, i64 %668
  store i8* %669, i8** %9, align 8
  br label %670

670:                                              ; preds = %665
  %671 = load i32, i32* %10, align 4
  %672 = add i32 %671, 1
  store i32 %672, i32* %10, align 4
  br label %641

673:                                              ; preds = %641
  br label %1067

674:                                              ; preds = %78
  %675 = load i32, i32* %17, align 4
  %676 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 %675)
  store i32 0, i32* %10, align 4
  br label %677

677:                                              ; preds = %706, %674
  %678 = load i32, i32* %10, align 4
  %679 = load i32, i32* %17, align 4
  %680 = icmp ult i32 %678, %679
  br i1 %680, label %681, label %709

681:                                              ; preds = %677
  %682 = load i8*, i8** %9, align 8
  %683 = bitcast i8* %682 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %683, %struct.TYPE_17__** %33, align 8
  %684 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %685 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %684, i32 0, i32 6
  %686 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %687 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %686, i32 0, i32 1
  %688 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %687, i32 0, i32 0
  %689 = load i32, i32* %688, align 8
  %690 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %691 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %690, i32 0, i32 0
  %692 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %691, i32 0, i32 0
  %693 = load i32*, i32** %692, align 8
  %694 = getelementptr inbounds i32, i32* %693, i64 0
  %695 = load i32, i32* %694, align 4
  %696 = call i32 @IDirect3DDevice3_SetRenderState(i32* %685, i32 %689, i32 %695)
  %697 = call i32 @FAILED(i32 %696)
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %701

699:                                              ; preds = %681
  %700 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  br label %701

701:                                              ; preds = %699, %681
  %702 = load i32, i32* %16, align 4
  %703 = load i8*, i8** %9, align 8
  %704 = zext i32 %702 to i64
  %705 = getelementptr inbounds i8, i8* %703, i64 %704
  store i8* %705, i8** %9, align 8
  br label %706

706:                                              ; preds = %701
  %707 = load i32, i32* %10, align 4
  %708 = add i32 %707, 1
  store i32 %708, i32* %10, align 4
  br label %677

709:                                              ; preds = %677
  br label %1067

710:                                              ; preds = %78
  %711 = load i32, i32* %17, align 4
  %712 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %711)
  store i32 0, i32* %10, align 4
  br label %713

713:                                              ; preds = %878, %710
  %714 = load i32, i32* %10, align 4
  %715 = load i32, i32* %17, align 4
  %716 = icmp ult i32 %714, %715
  br i1 %716, label %717, label %881

717:                                              ; preds = %713
  %718 = load i8*, i8** %9, align 8
  %719 = bitcast i8* %718 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %719, %struct.TYPE_18__** %34, align 8
  %720 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %721 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %720, i32 0, i32 0
  %722 = load i32, i32* %721, align 4
  %723 = load i32, i32* @D3DPROCESSVERTICES_OPMASK, align 4
  %724 = and i32 %722, %723
  store i32 %724, i32* %35, align 4
  %725 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %726 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %725, i32 0, i32 1
  %727 = load i32, i32* %726, align 4
  %728 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %729 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %728, i32 0, i32 2
  %730 = load i32, i32* %729, align 4
  %731 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %732 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %731, i32 0, i32 3
  %733 = load i32, i32* %732, align 4
  %734 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %735 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %734, i32 0, i32 0
  %736 = load i32, i32* %735, align 4
  %737 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i32 %727, i32 %730, i32 %733, i32 %736)
  %738 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %739 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %738, i32 0, i32 0
  %740 = load i32, i32* %739, align 4
  %741 = load i32, i32* @D3DPROCESSVERTICES_UPDATEEXTENTS, align 4
  %742 = and i32 %740, %741
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %744, label %751

744:                                              ; preds = %717
  %745 = load i32, i32* @d3d_execute_buffer_execute.once, align 4
  %746 = add nsw i32 %745, 1
  store i32 %746, i32* @d3d_execute_buffer_execute.once, align 4
  %747 = icmp ne i32 %745, 0
  br i1 %747, label %750, label %748

748:                                              ; preds = %744
  %749 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0))
  br label %750

750:                                              ; preds = %748, %744
  br label %751

751:                                              ; preds = %750, %717
  %752 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %753 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %752, i32 0, i32 0
  %754 = load i32, i32* %753, align 4
  %755 = load i32, i32* @D3DPROCESSVERTICES_NOCOLOR, align 4
  %756 = and i32 %754, %755
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %760

758:                                              ; preds = %751
  %759 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0))
  br label %760

760:                                              ; preds = %758, %751
  %761 = load i32, i32* %35, align 4
  switch i32 %761, label %870 [
    i32 128, label %762
    i32 129, label %762
    i32 130, label %825
  ]

762:                                              ; preds = %760, %760
  %763 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %764 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %763, i32 0, i32 4
  %765 = load i32, i32* %764, align 4
  %766 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %767 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %766, i32 0, i32 4
  %768 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %767, align 8
  %769 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %770 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %769, i32 0, i32 2
  %771 = load i32, i32* %770, align 8
  %772 = call i32 @wined3d_device_set_stream_source(i32 %765, i32 0, %struct.wined3d_buffer* %768, i32 %771, i32 4)
  %773 = load i32, i32* %35, align 4
  %774 = icmp eq i32 %773, 128
  br i1 %774, label %775, label %791

775:                                              ; preds = %762
  %776 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %777 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %776, i32 0, i32 4
  %778 = load i32, i32* %777, align 4
  %779 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %780 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %779, i32 0, i32 5
  %781 = load i32, i32* %780, align 4
  %782 = load i32, i32* @D3DFVF_VERTEX, align 4
  %783 = call i32 @ddraw_find_decl(i32 %781, i32 %782)
  %784 = call i32 @wined3d_device_set_vertex_declaration(i32 %778, i32 %783)
  %785 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %786 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %785, i32 0, i32 4
  %787 = load i32, i32* %786, align 4
  %788 = load i32, i32* @WINED3D_RS_LIGHTING, align 4
  %789 = load i32, i32* @TRUE, align 4
  %790 = call i32 @wined3d_device_set_render_state(i32 %787, i32 %788, i32 %789)
  br label %807

791:                                              ; preds = %762
  %792 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %793 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %792, i32 0, i32 4
  %794 = load i32, i32* %793, align 4
  %795 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %796 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %795, i32 0, i32 5
  %797 = load i32, i32* %796, align 4
  %798 = load i32, i32* @D3DFVF_LVERTEX, align 4
  %799 = call i32 @ddraw_find_decl(i32 %797, i32 %798)
  %800 = call i32 @wined3d_device_set_vertex_declaration(i32 %794, i32 %799)
  %801 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %802 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %801, i32 0, i32 4
  %803 = load i32, i32* %802, align 4
  %804 = load i32, i32* @WINED3D_RS_LIGHTING, align 4
  %805 = load i32, i32* @FALSE, align 4
  %806 = call i32 @wined3d_device_set_render_state(i32 %803, i32 %804, i32 %805)
  br label %807

807:                                              ; preds = %791, %775
  %808 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %809 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %808, i32 0, i32 4
  %810 = load i32, i32* %809, align 4
  %811 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %812 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %811, i32 0, i32 1
  %813 = load i32, i32* %812, align 4
  %814 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %815 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %814, i32 0, i32 2
  %816 = load i32, i32* %815, align 4
  %817 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %818 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %817, i32 0, i32 3
  %819 = load i32, i32* %818, align 4
  %820 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %821 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %820, i32 0, i32 5
  %822 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %821, align 8
  %823 = load i32, i32* @D3DFVF_TLVERTEX, align 4
  %824 = call i32 @wined3d_device_process_vertices(i32 %810, i32 %813, i32 %816, i32 %819, %struct.wined3d_buffer* %822, i32* null, i32 0, i32 %823)
  br label %873

825:                                              ; preds = %760
  %826 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %827 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %826, i32 0, i32 2
  %828 = load i32, i32* %827, align 8
  %829 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %830 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %829, i32 0, i32 1
  %831 = load i32, i32* %830, align 4
  %832 = add nsw i32 %828, %831
  %833 = sext i32 %832 to i64
  %834 = mul i64 %833, 4
  %835 = trunc i64 %834 to i32
  %836 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %13, i32 0, i32 0
  store i32 %835, i32* %836, align 4
  %837 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %13, i32 0, i32 0
  %838 = load i32, i32* %837, align 4
  %839 = zext i32 %838 to i64
  %840 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %841 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %840, i32 0, i32 3
  %842 = load i32, i32* %841, align 4
  %843 = sext i32 %842 to i64
  %844 = mul i64 %843, 4
  %845 = add i64 %839, %844
  %846 = trunc i64 %845 to i32
  %847 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %13, i32 0, i32 1
  store i32 %846, i32* %847, align 4
  %848 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %13, i32 0, i32 4
  store i32 0, i32* %848, align 4
  %849 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %13, i32 0, i32 5
  store i32 0, i32* %849, align 4
  %850 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %13, i32 0, i32 3
  store i32 1, i32* %850, align 4
  %851 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %13, i32 0, i32 2
  store i32 1, i32* %851, align 4
  %852 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %853 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %852, i32 0, i32 4
  %854 = load i32, i32* %853, align 4
  %855 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %856 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %855, i32 0, i32 5
  %857 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %856, align 8
  %858 = call i32 @wined3d_buffer_get_resource(%struct.wined3d_buffer* %857)
  %859 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %860 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %859, i32 0, i32 2
  %861 = load i32, i32* %860, align 4
  %862 = sext i32 %861 to i64
  %863 = mul i64 %862, 4
  %864 = trunc i64 %863 to i32
  %865 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %866 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %865, i32 0, i32 4
  %867 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %866, align 8
  %868 = call i32 @wined3d_buffer_get_resource(%struct.wined3d_buffer* %867)
  %869 = call i32 @wined3d_device_copy_sub_resource_region(i32 %854, i32 %858, i32 0, i32 %864, i32 0, i32 0, i32 %868, i32 0, %struct.wined3d_box* %13)
  br label %873

870:                                              ; preds = %760
  %871 = load i32, i32* %35, align 4
  %872 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i32 %871)
  br label %873

873:                                              ; preds = %870, %825, %807
  %874 = load i32, i32* %16, align 4
  %875 = load i8*, i8** %9, align 8
  %876 = zext i32 %874 to i64
  %877 = getelementptr inbounds i8, i8* %875, i64 %876
  store i8* %877, i8** %9, align 8
  br label %878

878:                                              ; preds = %873
  %879 = load i32, i32* %10, align 4
  %880 = add i32 %879, 1
  store i32 %880, i32* %10, align 4
  br label %713

881:                                              ; preds = %713
  br label %1067

882:                                              ; preds = %78
  %883 = load i32, i32* %17, align 4
  %884 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 %883)
  store i32 0, i32* %10, align 4
  br label %885

885:                                              ; preds = %933, %882
  %886 = load i32, i32* %10, align 4
  %887 = load i32, i32* %17, align 4
  %888 = icmp ult i32 %886, %887
  br i1 %888, label %889, label %936

889:                                              ; preds = %885
  %890 = load i8*, i8** %9, align 8
  %891 = bitcast i8* %890 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %891, %struct.TYPE_31__** %36, align 8
  %892 = load i32, i32* %16, align 4
  %893 = load i8*, i8** %9, align 8
  %894 = zext i32 %892 to i64
  %895 = getelementptr inbounds i8, i8* %893, i64 %894
  store i8* %895, i8** %9, align 8
  %896 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %897 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %896, i32 0, i32 3
  %898 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %899 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %898, i32 0, i32 0
  %900 = load i32, i32* %899, align 4
  %901 = sub i32 %900, 1
  %902 = load i32, i32* @DDRAW_HANDLE_SURFACE, align 4
  %903 = call i8* @ddraw_get_object(i32* %897, i32 %901, i32 %902)
  %904 = bitcast i8* %903 to %struct.ddraw_surface*
  store %struct.ddraw_surface* %904, %struct.ddraw_surface** %37, align 8
  %905 = icmp ne %struct.ddraw_surface* %904, null
  br i1 %905, label %911, label %906

906:                                              ; preds = %889
  %907 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %908 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %907, i32 0, i32 0
  %909 = load i32, i32* %908, align 4
  %910 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i64 0, i64 0), i32 %909)
  br label %933

911:                                              ; preds = %889
  %912 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %913 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %912, i32 0, i32 3
  %914 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %915 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %914, i32 0, i32 1
  %916 = load i32, i32* %915, align 4
  %917 = sub i32 %916, 1
  %918 = load i32, i32* @DDRAW_HANDLE_SURFACE, align 4
  %919 = call i8* @ddraw_get_object(i32* %913, i32 %917, i32 %918)
  %920 = bitcast i8* %919 to %struct.ddraw_surface*
  store %struct.ddraw_surface* %920, %struct.ddraw_surface** %38, align 8
  %921 = icmp ne %struct.ddraw_surface* %920, null
  br i1 %921, label %927, label %922

922:                                              ; preds = %911
  %923 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %924 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %923, i32 0, i32 1
  %925 = load i32, i32* %924, align 4
  %926 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0), i32 %925)
  br label %933

927:                                              ; preds = %911
  %928 = load %struct.ddraw_surface*, %struct.ddraw_surface** %37, align 8
  %929 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %928, i32 0, i32 0
  %930 = load %struct.ddraw_surface*, %struct.ddraw_surface** %38, align 8
  %931 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %930, i32 0, i32 0
  %932 = call i32 @IDirect3DTexture2_Load(i32* %929, i32* %931)
  br label %933

933:                                              ; preds = %927, %922, %906
  %934 = load i32, i32* %10, align 4
  %935 = add i32 %934, 1
  store i32 %935, i32* %10, align 4
  br label %885

936:                                              ; preds = %885
  br label %1067

937:                                              ; preds = %78
  %938 = load i32, i32* %17, align 4
  %939 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 %938)
  %940 = load i32, i32* %16, align 4
  %941 = load i8*, i8** %9, align 8
  %942 = zext i32 %940 to i64
  %943 = getelementptr inbounds i8, i8* %941, i64 %942
  store i8* %943, i8** %9, align 8
  br label %1068

944:                                              ; preds = %78
  %945 = load i32, i32* %17, align 4
  %946 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 %945)
  store i32 0, i32* %10, align 4
  br label %947

947:                                              ; preds = %1020, %944
  %948 = load i32, i32* %10, align 4
  %949 = load i32, i32* %17, align 4
  %950 = icmp ult i32 %948, %949
  br i1 %950, label %951, label %1023

951:                                              ; preds = %947
  %952 = load i8*, i8** %9, align 8
  %953 = bitcast i8* %952 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %953, %struct.TYPE_22__** %39, align 8
  %954 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %955 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %954, i32 0, i32 3
  %956 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %955, i32 0, i32 1
  %957 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %956, i32 0, i32 0
  %958 = load i32, i32* %957, align 4
  %959 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %960 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %959, i32 0, i32 0
  %961 = load i32, i32* %960, align 4
  %962 = and i32 %958, %961
  %963 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %964 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %963, i32 0, i32 1
  %965 = load i32, i32* %964, align 4
  %966 = icmp eq i32 %962, %965
  br i1 %966, label %967, label %991

967:                                              ; preds = %951
  %968 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %969 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %968, i32 0, i32 3
  %970 = load i32, i32* %969, align 4
  %971 = icmp ne i32 %970, 0
  br i1 %971, label %990, label %972

972:                                              ; preds = %967
  %973 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %974 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %973, i32 0, i32 2
  %975 = load i32, i32* %974, align 4
  %976 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 %975)
  %977 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %978 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %977, i32 0, i32 2
  %979 = load i32, i32* %978, align 4
  %980 = icmp ne i32 %979, 0
  br i1 %980, label %981, label %989

981:                                              ; preds = %972
  %982 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %983 = bitcast %struct.TYPE_21__* %982 to i8*
  %984 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %985 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %984, i32 0, i32 2
  %986 = load i32, i32* %985, align 4
  %987 = zext i32 %986 to i64
  %988 = getelementptr inbounds i8, i8* %983, i64 %987
  store i8* %988, i8** %9, align 8
  br label %1023

989:                                              ; preds = %972
  br label %990

990:                                              ; preds = %989, %967
  br label %1015

991:                                              ; preds = %951
  %992 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %993 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %992, i32 0, i32 3
  %994 = load i32, i32* %993, align 4
  %995 = icmp ne i32 %994, 0
  br i1 %995, label %996, label %1014

996:                                              ; preds = %991
  %997 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %998 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %997, i32 0, i32 2
  %999 = load i32, i32* %998, align 4
  %1000 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 %999)
  %1001 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %1002 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1001, i32 0, i32 2
  %1003 = load i32, i32* %1002, align 4
  %1004 = icmp ne i32 %1003, 0
  br i1 %1004, label %1005, label %1013

1005:                                             ; preds = %996
  %1006 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %1007 = bitcast %struct.TYPE_21__* %1006 to i8*
  %1008 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %1009 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1008, i32 0, i32 2
  %1010 = load i32, i32* %1009, align 4
  %1011 = zext i32 %1010 to i64
  %1012 = getelementptr inbounds i8, i8* %1007, i64 %1011
  store i8* %1012, i8** %9, align 8
  br label %1023

1013:                                             ; preds = %996
  br label %1014

1014:                                             ; preds = %1013, %991
  br label %1015

1015:                                             ; preds = %1014, %990
  %1016 = load i32, i32* %16, align 4
  %1017 = load i8*, i8** %9, align 8
  %1018 = zext i32 %1016 to i64
  %1019 = getelementptr inbounds i8, i8* %1017, i64 %1018
  store i8* %1019, i8** %9, align 8
  br label %1020

1020:                                             ; preds = %1015
  %1021 = load i32, i32* %10, align 4
  %1022 = add i32 %1021, 1
  store i32 %1022, i32* %10, align 4
  br label %947

1023:                                             ; preds = %1005, %981, %947
  br label %1067

1024:                                             ; preds = %78
  %1025 = load i32, i32* %17, align 4
  %1026 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 %1025)
  %1027 = load i32, i32* %17, align 4
  %1028 = load i32, i32* %16, align 4
  %1029 = mul i32 %1027, %1028
  %1030 = load i8*, i8** %9, align 8
  %1031 = zext i32 %1029 to i64
  %1032 = getelementptr inbounds i8, i8* %1030, i64 %1031
  store i8* %1032, i8** %9, align 8
  br label %1067

1033:                                             ; preds = %78
  %1034 = load i32, i32* %17, align 4
  %1035 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 %1034)
  store i32 0, i32* %10, align 4
  br label %1036

1036:                                             ; preds = %1052, %1033
  %1037 = load i32, i32* %10, align 4
  %1038 = load i32, i32* %17, align 4
  %1039 = icmp ult i32 %1037, %1038
  br i1 %1039, label %1040, label %1055

1040:                                             ; preds = %1036
  %1041 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %1042 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %1041, i32 0, i32 3
  %1043 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1042, i32 0, i32 1
  %1044 = load i8*, i8** %9, align 8
  %1045 = bitcast i8* %1044 to %struct.TYPE_32__*
  %1046 = bitcast %struct.TYPE_32__* %1043 to i8*
  %1047 = bitcast %struct.TYPE_32__* %1045 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1046, i8* align 4 %1047, i64 4, i1 false)
  %1048 = load i32, i32* %16, align 4
  %1049 = load i8*, i8** %9, align 8
  %1050 = zext i32 %1048 to i64
  %1051 = getelementptr inbounds i8, i8* %1049, i64 %1050
  store i8* %1051, i8** %9, align 8
  br label %1052

1052:                                             ; preds = %1040
  %1053 = load i32, i32* %10, align 4
  %1054 = add i32 %1053, 1
  store i32 %1054, i32* %10, align 4
  br label %1036

1055:                                             ; preds = %1036
  br label %1067

1056:                                             ; preds = %78
  %1057 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %1058 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1057, i32 0, i32 2
  %1059 = load i32, i32* %1058, align 4
  %1060 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 %1059)
  %1061 = load i32, i32* %17, align 4
  %1062 = load i32, i32* %16, align 4
  %1063 = mul i32 %1061, %1062
  %1064 = load i8*, i8** %9, align 8
  %1065 = zext i32 %1063 to i64
  %1066 = getelementptr inbounds i8, i8* %1064, i64 %1065
  store i8* %1066, i8** %9, align 8
  br label %1067

1067:                                             ; preds = %1056, %1055, %1024, %1023, %936, %881, %709, %673, %637, %539, %454, %413, %160, %140
  br label %78

1068:                                             ; preds = %937
  %1069 = load i32, i32* @D3D_OK, align 4
  store i32 %1069, i32* %4, align 4
  br label %1070

1070:                                             ; preds = %1068, %272, %213, %58
  %1071 = load i32, i32* %4, align 4
  ret i32 %1071
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WARN(i8*, ...) #2

declare dso_local i32 @viewport_activate(%struct.d3d_viewport*, i32) #2

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i64 @TRACE_ON(i32) #2

declare dso_local i32 @_dump_executedata(%struct.TYPE_23__*) #2

declare dso_local i32 @wined3d_device_set_primitive_type(i32, i32, i32) #2

declare dso_local i32 @wined3d_device_set_stream_source(i32, i32, %struct.wined3d_buffer*, i32, i32) #2

declare dso_local i32 @wined3d_device_set_vertex_declaration(i32, i32) #2

declare dso_local i32 @ddraw_find_decl(i32, i32) #2

declare dso_local i32 @wined3d_device_draw_primitive(i32, i32, i32) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @FAILED(i32) #2

declare dso_local i32 @wined3d_buffer_create(i32, %struct.wined3d_buffer_desc*, i32*, i32*, i32*, %struct.wined3d_buffer**) #2

declare dso_local i32 @wined3d_buffer_decref(%struct.wined3d_buffer*) #2

declare dso_local i32 @wined3d_resource_map(i32, i32, %struct.wined3d_map_desc*, %struct.wined3d_box*, i32) #2

declare dso_local i32 @wined3d_buffer_get_resource(%struct.wined3d_buffer*) #2

declare dso_local i32 @wined3d_resource_unmap(i32, i32) #2

declare dso_local i32 @wined3d_device_set_index_buffer(i32, %struct.wined3d_buffer*, i32, i32) #2

declare dso_local i32 @wined3d_device_draw_indexed_primitive(i32, i32, i32) #2

declare dso_local i8* @ddraw_get_object(i32*, i32, i32) #2

declare dso_local i32 @ERR(i8*, i32, ...) #2

declare dso_local i32 @multiply_matrix(i32*, i32*, i32*) #2

declare dso_local i32 @IDirect3DDevice3_SetTransform(i32*, i32, i32*) #2

declare dso_local i32 @IDirect3DDevice3_SetLightState(i32*, i32, i32) #2

declare dso_local i32 @IDirect3DDevice3_SetRenderState(i32*, i32, i32) #2

declare dso_local i32 @FIXME(i8*, ...) #2

declare dso_local i32 @wined3d_device_set_render_state(i32, i32, i32) #2

declare dso_local i32 @wined3d_device_process_vertices(i32, i32, i32, i32, %struct.wined3d_buffer*, i32*, i32, i32) #2

declare dso_local i32 @wined3d_device_copy_sub_resource_region(i32, i32, i32, i32, i32, i32, i32, i32, %struct.wined3d_box*) #2

declare dso_local i32 @IDirect3DTexture2_Load(i32*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
