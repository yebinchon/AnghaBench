; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_debug_d3dusage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_debug_d3dusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_buffer = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@WINED3DUSAGE_RENDERTARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"WINED3DUSAGE_RENDERTARGET\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@WINED3DUSAGE_DEPTHSTENCIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"WINED3DUSAGE_DEPTHSTENCIL\00", align 1
@WINED3DUSAGE_WRITEONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"WINED3DUSAGE_WRITEONLY\00", align 1
@WINED3DUSAGE_SOFTWAREPROCESSING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"WINED3DUSAGE_SOFTWAREPROCESSING\00", align 1
@WINED3DUSAGE_DONOTCLIP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"WINED3DUSAGE_DONOTCLIP\00", align 1
@WINED3DUSAGE_POINTS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"WINED3DUSAGE_POINTS\00", align 1
@WINED3DUSAGE_RTPATCHES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"WINED3DUSAGE_RTPATCHES\00", align 1
@WINED3DUSAGE_NPATCHES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"WINED3DUSAGE_NPATCHES\00", align 1
@WINED3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"WINED3DUSAGE_DYNAMIC\00", align 1
@WINED3DUSAGE_RESTRICTED_CONTENT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"WINED3DUSAGE_RESTRICTED_CONTENT\00", align 1
@WINED3DUSAGE_RESTRICT_SHARED_RESOURCE_DRIVER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [45 x i8] c"WINED3DUSAGE_RESTRICT_SHARED_RESOURCE_DRIVER\00", align 1
@WINED3DUSAGE_RESTRICT_SHARED_RESOURCE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"WINED3DUSAGE_RESTRICT_SHARED_RESOURCE\00", align 1
@WINED3DUSAGE_DMAP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"WINED3DUSAGE_DMAP\00", align 1
@WINED3DUSAGE_TEXTAPI = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"WINED3DUSAGE_TEXTAPI\00", align 1
@WINED3DUSAGE_LEGACY_CUBEMAP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"WINED3DUSAGE_LEGACY_CUBEMAP\00", align 1
@WINED3DUSAGE_TEXTURE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"WINED3DUSAGE_TEXTURE\00", align 1
@WINED3DUSAGE_OWNDC = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"WINED3DUSAGE_OWNDC\00", align 1
@WINED3DUSAGE_STATICDECL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"WINED3DUSAGE_STATICDECL\00", align 1
@WINED3DUSAGE_OVERLAY = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"WINED3DUSAGE_OVERLAY\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Unrecognized usage flag(s) %#x.\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @debug_d3dusage(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.debug_buffer, align 4
  store i64 %0, i64* %2, align 8
  %4 = call i32 @init_debug_buffer(%struct.debug_buffer* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load i64, i64* %2, align 8
  %6 = load i32, i32* @WINED3DUSAGE_RENDERTARGET, align 4
  %7 = sext i32 %6 to i64
  %8 = and i64 %5, %7
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* @WINED3DUSAGE_RENDERTARGET, align 4
  %13 = xor i32 %12, -1
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %2, align 8
  %16 = and i64 %15, %14
  store i64 %16, i64* %2, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i64, i64* %2, align 8
  %19 = load i32, i32* @WINED3DUSAGE_DEPTHSTENCIL, align 4
  %20 = sext i32 %19 to i64
  %21 = and i64 %18, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @WINED3DUSAGE_DEPTHSTENCIL, align 4
  %26 = xor i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %2, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i64, i64* %2, align 8
  %32 = load i32, i32* @WINED3DUSAGE_WRITEONLY, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %31, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @WINED3DUSAGE_WRITEONLY, align 4
  %39 = xor i32 %38, -1
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %2, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i64, i64* %2, align 8
  %45 = load i32, i32* @WINED3DUSAGE_SOFTWAREPROCESSING, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %44, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @WINED3DUSAGE_SOFTWAREPROCESSING, align 4
  %52 = xor i32 %51, -1
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %2, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %49, %43
  %57 = load i64, i64* %2, align 8
  %58 = load i32, i32* @WINED3DUSAGE_DONOTCLIP, align 4
  %59 = sext i32 %58 to i64
  %60 = and i64 %57, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @WINED3DUSAGE_DONOTCLIP, align 4
  %65 = xor i32 %64, -1
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %2, align 8
  %68 = and i64 %67, %66
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %62, %56
  %70 = load i64, i64* %2, align 8
  %71 = load i32, i32* @WINED3DUSAGE_POINTS, align 4
  %72 = sext i32 %71 to i64
  %73 = and i64 %70, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @WINED3DUSAGE_POINTS, align 4
  %78 = xor i32 %77, -1
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %2, align 8
  %81 = and i64 %80, %79
  store i64 %81, i64* %2, align 8
  br label %82

82:                                               ; preds = %75, %69
  %83 = load i64, i64* %2, align 8
  %84 = load i32, i32* @WINED3DUSAGE_RTPATCHES, align 4
  %85 = sext i32 %84 to i64
  %86 = and i64 %83, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @WINED3DUSAGE_RTPATCHES, align 4
  %91 = xor i32 %90, -1
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %2, align 8
  %94 = and i64 %93, %92
  store i64 %94, i64* %2, align 8
  br label %95

95:                                               ; preds = %88, %82
  %96 = load i64, i64* %2, align 8
  %97 = load i32, i32* @WINED3DUSAGE_NPATCHES, align 4
  %98 = sext i32 %97 to i64
  %99 = and i64 %96, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @WINED3DUSAGE_NPATCHES, align 4
  %104 = xor i32 %103, -1
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %2, align 8
  %107 = and i64 %106, %105
  store i64 %107, i64* %2, align 8
  br label %108

108:                                              ; preds = %101, %95
  %109 = load i64, i64* %2, align 8
  %110 = load i32, i32* @WINED3DUSAGE_DYNAMIC, align 4
  %111 = sext i32 %110 to i64
  %112 = and i64 %109, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* @WINED3DUSAGE_DYNAMIC, align 4
  %117 = xor i32 %116, -1
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %2, align 8
  %120 = and i64 %119, %118
  store i64 %120, i64* %2, align 8
  br label %121

121:                                              ; preds = %114, %108
  %122 = load i64, i64* %2, align 8
  %123 = load i32, i32* @WINED3DUSAGE_RESTRICTED_CONTENT, align 4
  %124 = sext i32 %123 to i64
  %125 = and i64 %122, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32, i32* @WINED3DUSAGE_RESTRICTED_CONTENT, align 4
  %130 = xor i32 %129, -1
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %2, align 8
  %133 = and i64 %132, %131
  store i64 %133, i64* %2, align 8
  br label %134

134:                                              ; preds = %127, %121
  %135 = load i64, i64* %2, align 8
  %136 = load i32, i32* @WINED3DUSAGE_RESTRICT_SHARED_RESOURCE_DRIVER, align 4
  %137 = sext i32 %136 to i64
  %138 = and i64 %135, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i32, i32* @WINED3DUSAGE_RESTRICT_SHARED_RESOURCE_DRIVER, align 4
  %143 = xor i32 %142, -1
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %2, align 8
  %146 = and i64 %145, %144
  store i64 %146, i64* %2, align 8
  br label %147

147:                                              ; preds = %140, %134
  %148 = load i64, i64* %2, align 8
  %149 = load i32, i32* @WINED3DUSAGE_RESTRICT_SHARED_RESOURCE, align 4
  %150 = sext i32 %149 to i64
  %151 = and i64 %148, %150
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %155 = load i32, i32* @WINED3DUSAGE_RESTRICT_SHARED_RESOURCE, align 4
  %156 = xor i32 %155, -1
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %2, align 8
  %159 = and i64 %158, %157
  store i64 %159, i64* %2, align 8
  br label %160

160:                                              ; preds = %153, %147
  %161 = load i64, i64* %2, align 8
  %162 = load i32, i32* @WINED3DUSAGE_DMAP, align 4
  %163 = sext i32 %162 to i64
  %164 = and i64 %161, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  %167 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %168 = load i32, i32* @WINED3DUSAGE_DMAP, align 4
  %169 = xor i32 %168, -1
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* %2, align 8
  %172 = and i64 %171, %170
  store i64 %172, i64* %2, align 8
  br label %173

173:                                              ; preds = %166, %160
  %174 = load i64, i64* %2, align 8
  %175 = load i32, i32* @WINED3DUSAGE_TEXTAPI, align 4
  %176 = sext i32 %175 to i64
  %177 = and i64 %174, %176
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %181 = load i32, i32* @WINED3DUSAGE_TEXTAPI, align 4
  %182 = xor i32 %181, -1
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %2, align 8
  %185 = and i64 %184, %183
  store i64 %185, i64* %2, align 8
  br label %186

186:                                              ; preds = %179, %173
  %187 = load i64, i64* %2, align 8
  %188 = load i32, i32* @WINED3DUSAGE_LEGACY_CUBEMAP, align 4
  %189 = sext i32 %188 to i64
  %190 = and i64 %187, %189
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %186
  %193 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %194 = load i32, i32* @WINED3DUSAGE_LEGACY_CUBEMAP, align 4
  %195 = xor i32 %194, -1
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %2, align 8
  %198 = and i64 %197, %196
  store i64 %198, i64* %2, align 8
  br label %199

199:                                              ; preds = %192, %186
  %200 = load i64, i64* %2, align 8
  %201 = load i32, i32* @WINED3DUSAGE_TEXTURE, align 4
  %202 = sext i32 %201 to i64
  %203 = and i64 %200, %202
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %199
  %206 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %207 = load i32, i32* @WINED3DUSAGE_TEXTURE, align 4
  %208 = xor i32 %207, -1
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* %2, align 8
  %211 = and i64 %210, %209
  store i64 %211, i64* %2, align 8
  br label %212

212:                                              ; preds = %205, %199
  %213 = load i64, i64* %2, align 8
  %214 = load i32, i32* @WINED3DUSAGE_OWNDC, align 4
  %215 = sext i32 %214 to i64
  %216 = and i64 %213, %215
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %212
  %219 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %220 = load i32, i32* @WINED3DUSAGE_OWNDC, align 4
  %221 = xor i32 %220, -1
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %2, align 8
  %224 = and i64 %223, %222
  store i64 %224, i64* %2, align 8
  br label %225

225:                                              ; preds = %218, %212
  %226 = load i64, i64* %2, align 8
  %227 = load i32, i32* @WINED3DUSAGE_STATICDECL, align 4
  %228 = sext i32 %227 to i64
  %229 = and i64 %226, %228
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %225
  %232 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %233 = load i32, i32* @WINED3DUSAGE_STATICDECL, align 4
  %234 = xor i32 %233, -1
  %235 = sext i32 %234 to i64
  %236 = load i64, i64* %2, align 8
  %237 = and i64 %236, %235
  store i64 %237, i64* %2, align 8
  br label %238

238:                                              ; preds = %231, %225
  %239 = load i64, i64* %2, align 8
  %240 = load i32, i32* @WINED3DUSAGE_OVERLAY, align 4
  %241 = sext i32 %240 to i64
  %242 = and i64 %239, %241
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %238
  %245 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %246 = load i32, i32* @WINED3DUSAGE_OVERLAY, align 4
  %247 = xor i32 %246, -1
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* %2, align 8
  %250 = and i64 %249, %248
  store i64 %250, i64* %2, align 8
  br label %251

251:                                              ; preds = %244, %238
  %252 = load i64, i64* %2, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i64, i64* %2, align 8
  %256 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i64 %255)
  br label %257

257:                                              ; preds = %254, %251
  %258 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %3, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 %259)
  ret i8* %260
}

declare dso_local i32 @init_debug_buffer(%struct.debug_buffer*, i8*) #1

declare dso_local i32 @debug_append(...) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i8* @wine_dbg_sprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
