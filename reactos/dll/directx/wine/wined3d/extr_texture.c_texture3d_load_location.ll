; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture3d_load_location.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture3d_load_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, %struct.TYPE_3__, %struct.wined3d_texture_sub_resource* }
%struct.TYPE_3__ = type { i32* }
%struct.wined3d_texture_sub_resource = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_context = type { i32 }
%struct.wined3d_const_bo_address = type { i32*, i32, i32 }
%struct.wined3d_bo_address = type { i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Implement texture loading from %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Implement WINED3D_LOCATION_SYSMEM loading from %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Implement WINED3D_LOCATION_BUFFER loading from %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Implement %s loading from %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32)* @texture3d_load_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @texture3d_load_location(%struct.wined3d_texture* %0, i32 %1, %struct.wined3d_context* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_texture*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_texture_sub_resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_const_bo_address, align 8
  %14 = alloca %struct.wined3d_const_bo_address, align 8
  %15 = alloca %struct.wined3d_bo_address, align 8
  %16 = alloca %struct.wined3d_bo_address, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.wined3d_context* %2, %struct.wined3d_context** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %18 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %17, i32 0, i32 2
  %19 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %19, i64 %21
  store %struct.wined3d_texture_sub_resource* %22, %struct.wined3d_texture_sub_resource** %10, align 8
  %23 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @wined3d_texture_prepare_location(%struct.wined3d_texture* %23, i32 %24, %struct.wined3d_context* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %241

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %230 [
    i32 129, label %33
    i32 128, label %33
    i32 130, label %134
    i32 131, label %187
  ]

33:                                               ; preds = %31, %31
  %34 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %35 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 130
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %13, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %13, i32 0, i32 1
  %42 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %43 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = ptrtoint i32* %45 to i32
  store i32 %46, i32* %41, align 8
  %47 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %13, i32 0, i32 2
  store i32 0, i32* %47, align 4
  %48 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %49 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %13, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %55 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 128
  %58 = zext i1 %57 to i32
  %59 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %54, %struct.wined3d_context* %55, i32 %58)
  %60 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @wined3d_texture_get_pitch(%struct.wined3d_texture* %60, i32 %61, i32* %11, i32* %12)
  %63 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @texture3d_upload_data(%struct.wined3d_texture* %63, i32 %64, %struct.wined3d_context* %65, i32* null, %struct.wined3d_const_bo_address* %13, i32 %66, i32 %67)
  br label %133

69:                                               ; preds = %33
  %70 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %71 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 131
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %14, i32 0, i32 0
  %77 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %78 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %76, align 8
  %82 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %14, i32 0, i32 1
  store i32 0, i32* %82, align 8
  %83 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %14, i32 0, i32 2
  store i32 0, i32* %83, align 4
  %84 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %85 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 128
  %88 = zext i1 %87 to i32
  %89 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %84, %struct.wined3d_context* %85, i32 %88)
  %90 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @wined3d_texture_get_pitch(%struct.wined3d_texture* %90, i32 %91, i32* %11, i32* %12)
  %93 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @texture3d_upload_data(%struct.wined3d_texture* %93, i32 %94, %struct.wined3d_context* %95, i32* null, %struct.wined3d_const_bo_address* %14, i32 %96, i32 %97)
  br label %132

99:                                               ; preds = %69
  %100 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %101 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, 129
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %109 = load i32, i32* @TRUE, align 4
  %110 = call i32 @texture3d_srgb_transfer(%struct.wined3d_texture* %106, i32 %107, %struct.wined3d_context* %108, i32 %109)
  br label %131

111:                                              ; preds = %99
  %112 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %113 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 128
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %121 = load i32, i32* @FALSE, align 4
  %122 = call i32 @texture3d_srgb_transfer(%struct.wined3d_texture* %118, i32 %119, %struct.wined3d_context* %120, i32 %121)
  br label %130

123:                                              ; preds = %111
  %124 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %125 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @wined3d_debug_location(i32 %126)
  %128 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %5, align 4
  br label %241

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %105
  br label %132

132:                                              ; preds = %131, %75
  br label %133

133:                                              ; preds = %132, %39
  br label %239

134:                                              ; preds = %31
  %135 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %136 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, 129
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %179

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %15, i32 0, i32 0
  store i32* null, i32** %141, align 8
  %142 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %15, i32 0, i32 1
  %143 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %144 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = ptrtoint i32* %146 to i32
  store i32 %147, i32* %142, align 8
  %148 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %15, i32 0, i32 2
  store i32 0, i32* %148, align 4
  %149 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %150 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %15, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %151
  store i32 %154, i32* %152, align 4
  %155 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %156 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, 129
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %140
  %161 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %162 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %163 = load i32, i32* @FALSE, align 4
  %164 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %161, %struct.wined3d_context* %162, i32 %163)
  br label %170

165:                                              ; preds = %140
  %166 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %167 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %168 = load i32, i32* @TRUE, align 4
  %169 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %166, %struct.wined3d_context* %167, i32 %168)
  br label %170

170:                                              ; preds = %165, %160
  %171 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %174 = call i32 @texture3d_download_data(%struct.wined3d_texture* %171, i32 %172, %struct.wined3d_context* %173, %struct.wined3d_bo_address* %15)
  %175 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %176 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  br label %186

179:                                              ; preds = %134
  %180 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %181 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @wined3d_debug_location(i32 %182)
  %184 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @FALSE, align 4
  store i32 %185, i32* %5, align 4
  br label %241

186:                                              ; preds = %170
  br label %239

187:                                              ; preds = %31
  %188 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %189 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, 129
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %222

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %16, i32 0, i32 0
  %195 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %196 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to i32*
  store i32* %199, i32** %194, align 8
  %200 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %16, i32 0, i32 1
  store i32 0, i32* %200, align 8
  %201 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %16, i32 0, i32 2
  store i32 0, i32* %201, align 4
  %202 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %203 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, 129
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %193
  %208 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %209 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %210 = load i32, i32* @FALSE, align 4
  %211 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %208, %struct.wined3d_context* %209, i32 %210)
  br label %217

212:                                              ; preds = %193
  %213 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %214 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %215 = load i32, i32* @TRUE, align 4
  %216 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %213, %struct.wined3d_context* %214, i32 %215)
  br label %217

217:                                              ; preds = %212, %207
  %218 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %219 = load i32, i32* %7, align 4
  %220 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %221 = call i32 @texture3d_download_data(%struct.wined3d_texture* %218, i32 %219, %struct.wined3d_context* %220, %struct.wined3d_bo_address* %16)
  br label %229

222:                                              ; preds = %187
  %223 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %224 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @wined3d_debug_location(i32 %225)
  %227 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @FALSE, align 4
  store i32 %228, i32* %5, align 4
  br label %241

229:                                              ; preds = %217
  br label %239

230:                                              ; preds = %31
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @wined3d_debug_location(i32 %231)
  %233 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %10, align 8
  %234 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @wined3d_debug_location(i32 %235)
  %237 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %232, i32 %236)
  %238 = load i32, i32* @FALSE, align 4
  store i32 %238, i32* %5, align 4
  br label %241

239:                                              ; preds = %229, %186, %133
  %240 = load i32, i32* @TRUE, align 4
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %239, %230, %222, %179, %123, %29
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local i32 @wined3d_texture_prepare_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_get_pitch(%struct.wined3d_texture*, i32, i32*, i32*) #1

declare dso_local i32 @texture3d_upload_data(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32*, %struct.wined3d_const_bo_address*, i32, i32) #1

declare dso_local i32 @texture3d_srgb_transfer(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @FIXME(i8*, i32, ...) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

declare dso_local i32 @texture3d_download_data(%struct.wined3d_texture*, i32, %struct.wined3d_context*, %struct.wined3d_bo_address*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
