; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_find_decl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_find_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_buffer = type { i32, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_stream_info = type { i32 }
%struct.wined3d_state = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@WINED3D_BUFFER_HASDESC = common dso_local global i32 0, align 4
@WINED3DUSAGE_STATICDECL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No fixup required.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Finding vertex buffer conversion information\0A\00", align 1
@WINED3D_FFP_POSITION = common dso_local global i32 0, align 4
@WINED3D_BUFFER_FIXUP_XYZRHW = common dso_local global i32 0, align 4
@WINED3D_FFP_BLENDWEIGHT = common dso_local global i32 0, align 4
@WINED3D_FFP_BLENDINDICES = common dso_local global i32 0, align 4
@WINED3D_FFP_NORMAL = common dso_local global i32 0, align 4
@WINED3D_FFP_DIFFUSE = common dso_local global i32 0, align 4
@WINED3D_FFP_SPECULAR = common dso_local global i32 0, align 4
@WINED3D_FFP_TEXCOORD0 = common dso_local global i32 0, align 4
@WINED3D_FFP_TEXCOORD1 = common dso_local global i32 0, align 4
@WINED3D_FFP_TEXCOORD2 = common dso_local global i32 0, align 4
@WINED3D_FFP_TEXCOORD3 = common dso_local global i32 0, align 4
@WINED3D_FFP_TEXCOORD4 = common dso_local global i32 0, align 4
@WINED3D_FFP_TEXCOORD5 = common dso_local global i32 0, align 4
@WINED3D_FFP_TEXCOORD6 = common dso_local global i32 0, align 4
@WINED3D_FFP_TEXCOORD7 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [86 x i8] c"no converted attributes found, old conversion map exists, and no declaration change?\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Conversion information changed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_buffer*, %struct.wined3d_stream_info*, %struct.wined3d_state*, i32)* @buffer_find_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_find_decl(%struct.wined3d_buffer* %0, %struct.wined3d_stream_info* %1, %struct.wined3d_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_buffer*, align 8
  %7 = alloca %struct.wined3d_stream_info*, align 8
  %8 = alloca %struct.wined3d_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.wined3d_buffer* %0, %struct.wined3d_buffer** %6, align 8
  store %struct.wined3d_stream_info* %1, %struct.wined3d_stream_info** %7, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %14 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @WINED3D_BUFFER_HASDESC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %21 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @WINED3DUSAGE_STATICDECL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %267

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %30
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @heap_free(i32* %42)
  %44 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %5, align 4
  br label %267

49:                                               ; preds = %33
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %5, align 4
  br label %267

51:                                               ; preds = %30
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %54 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %55 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %56 = load i32, i32* @WINED3D_FFP_POSITION, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %53, %struct.wined3d_stream_info* %54, %struct.wined3d_state* %55, i32 %56, i32 %57, i64* %10)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %60, %51
  %64 = phi i1 [ true, %51 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* @WINED3D_BUFFER_FIXUP_XYZRHW, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %71 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %72 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %73 = load i32, i32* @WINED3D_FFP_BLENDWEIGHT, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %70, %struct.wined3d_stream_info* %71, %struct.wined3d_state* %72, i32 %73, i32 %74, i64* %10)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %63
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %77, %63
  %81 = phi i1 [ true, %63 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %84 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %85 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %86 = load i32, i32* @WINED3D_FFP_BLENDINDICES, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %83, %struct.wined3d_stream_info* %84, %struct.wined3d_state* %85, i32 %86, i32 %87, i64* %10)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %80
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %90, %80
  %94 = phi i1 [ true, %80 ], [ %92, %90 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %11, align 4
  %96 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %97 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %98 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %99 = load i32, i32* @WINED3D_FFP_NORMAL, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %96, %struct.wined3d_stream_info* %97, %struct.wined3d_state* %98, i32 %99, i32 %100, i64* %10)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br label %106

106:                                              ; preds = %103, %93
  %107 = phi i1 [ true, %93 ], [ %105, %103 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %11, align 4
  %109 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %110 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %111 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %112 = load i32, i32* @WINED3D_FFP_DIFFUSE, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %109, %struct.wined3d_stream_info* %110, %struct.wined3d_state* %111, i32 %112, i32 %113, i64* %10)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br label %119

119:                                              ; preds = %116, %106
  %120 = phi i1 [ true, %106 ], [ %118, %116 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %11, align 4
  %122 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %123 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %124 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %125 = load i32, i32* @WINED3D_FFP_SPECULAR, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %122, %struct.wined3d_stream_info* %123, %struct.wined3d_state* %124, i32 %125, i32 %126, i64* %10)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %119
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br label %132

132:                                              ; preds = %129, %119
  %133 = phi i1 [ true, %119 ], [ %131, %129 ]
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %11, align 4
  %135 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %136 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %137 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %138 = load i32, i32* @WINED3D_FFP_TEXCOORD0, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %135, %struct.wined3d_stream_info* %136, %struct.wined3d_state* %137, i32 %138, i32 %139, i64* %10)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %132
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br label %145

145:                                              ; preds = %142, %132
  %146 = phi i1 [ true, %132 ], [ %144, %142 ]
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %11, align 4
  %148 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %149 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %150 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %151 = load i32, i32* @WINED3D_FFP_TEXCOORD1, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %148, %struct.wined3d_stream_info* %149, %struct.wined3d_state* %150, i32 %151, i32 %152, i64* %10)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %145
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br label %158

158:                                              ; preds = %155, %145
  %159 = phi i1 [ true, %145 ], [ %157, %155 ]
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %11, align 4
  %161 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %162 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %163 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %164 = load i32, i32* @WINED3D_FFP_TEXCOORD2, align 4
  %165 = load i32, i32* %9, align 4
  %166 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %161, %struct.wined3d_stream_info* %162, %struct.wined3d_state* %163, i32 %164, i32 %165, i64* %10)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %158
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br label %171

171:                                              ; preds = %168, %158
  %172 = phi i1 [ true, %158 ], [ %170, %168 ]
  %173 = zext i1 %172 to i32
  store i32 %173, i32* %11, align 4
  %174 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %175 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %176 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %177 = load i32, i32* @WINED3D_FFP_TEXCOORD3, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %174, %struct.wined3d_stream_info* %175, %struct.wined3d_state* %176, i32 %177, i32 %178, i64* %10)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %171
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br label %184

184:                                              ; preds = %181, %171
  %185 = phi i1 [ true, %171 ], [ %183, %181 ]
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %11, align 4
  %187 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %188 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %189 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %190 = load i32, i32* @WINED3D_FFP_TEXCOORD4, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %187, %struct.wined3d_stream_info* %188, %struct.wined3d_state* %189, i32 %190, i32 %191, i64* %10)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %184
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br label %197

197:                                              ; preds = %194, %184
  %198 = phi i1 [ true, %184 ], [ %196, %194 ]
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %11, align 4
  %200 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %201 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %202 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %203 = load i32, i32* @WINED3D_FFP_TEXCOORD5, align 4
  %204 = load i32, i32* %9, align 4
  %205 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %200, %struct.wined3d_stream_info* %201, %struct.wined3d_state* %202, i32 %203, i32 %204, i64* %10)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %197
  %208 = load i32, i32* %11, align 4
  %209 = icmp ne i32 %208, 0
  br label %210

210:                                              ; preds = %207, %197
  %211 = phi i1 [ true, %197 ], [ %209, %207 ]
  %212 = zext i1 %211 to i32
  store i32 %212, i32* %11, align 4
  %213 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %214 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %215 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %216 = load i32, i32* @WINED3D_FFP_TEXCOORD6, align 4
  %217 = load i32, i32* %9, align 4
  %218 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %213, %struct.wined3d_stream_info* %214, %struct.wined3d_state* %215, i32 %216, i32 %217, i64* %10)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %210
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %221, 0
  br label %223

223:                                              ; preds = %220, %210
  %224 = phi i1 [ true, %210 ], [ %222, %220 ]
  %225 = zext i1 %224 to i32
  store i32 %225, i32* %11, align 4
  %226 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %227 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %228 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %229 = load i32, i32* @WINED3D_FFP_TEXCOORD7, align 4
  %230 = load i32, i32* %9, align 4
  %231 = call i64 @buffer_check_attribute(%struct.wined3d_buffer* %226, %struct.wined3d_stream_info* %227, %struct.wined3d_state* %228, i32 %229, i32 %230, i64* %10)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %223
  %234 = load i32, i32* %11, align 4
  %235 = icmp ne i32 %234, 0
  br label %236

236:                                              ; preds = %233, %223
  %237 = phi i1 [ true, %223 ], [ %235, %233 ]
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %11, align 4
  %239 = load i64, i64* %10, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %260, label %241

241:                                              ; preds = %236
  %242 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %243 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %260

246:                                              ; preds = %241
  %247 = load i32, i32* %11, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %246
  %250 = call i32 @ERR(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0))
  br label %251

251:                                              ; preds = %249, %246
  %252 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %253 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @heap_free(i32* %254)
  %256 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %257 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %256, i32 0, i32 2
  store i32* null, i32** %257, align 8
  %258 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %259 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %258, i32 0, i32 1
  store i64 0, i64* %259, align 8
  br label %260

260:                                              ; preds = %251, %241, %236
  %261 = load i32, i32* %11, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %260
  %264 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %265

265:                                              ; preds = %263, %260
  %266 = load i32, i32* %11, align 4
  store i32 %266, i32* %5, align 4
  br label %267

267:                                              ; preds = %265, %49, %39, %27
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i64 @buffer_check_attribute(%struct.wined3d_buffer*, %struct.wined3d_stream_info*, %struct.wined3d_state*, i32, i32, i64*) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
