; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_texture_activate_dimensions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_texture_activate_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32 }
%struct.wined3d_gl_info = type { %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32)*, i32 (i32)* }

@.str = private unnamed_addr constant [25 x i8] c"glDisable(GL_TEXTURE_2D)\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"glDisable(GL_TEXTURE_3D)\00", align 1
@ARB_TEXTURE_CUBE_MAP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"glDisable(GL_TEXTURE_CUBE_MAP_ARB)\00", align 1
@ARB_TEXTURE_RECTANGLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"glDisable(GL_TEXTURE_RECTANGLE_ARB)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"glEnable(GL_TEXTURE_1D)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"glDisable(GL_TEXTURE_1D)\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"glEnable(GL_TEXTURE_2D)\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"glEnable(GL_TEXTURE_RECTANGLE_ARB)\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"glEnable(GL_TEXTURE_3D)\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"glEnable(GL_TEXTURE_CUBE_MAP_ARB)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @texture_activate_dimensions(%struct.wined3d_texture* %0, %struct.wined3d_gl_info* %1) #0 {
  %3 = alloca %struct.wined3d_texture*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %3, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %4, align 8
  %5 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %6 = icmp ne %struct.wined3d_texture* %5, null
  br i1 %6, label %7, label %264

7:                                                ; preds = %2
  %8 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %263 [
    i32 132, label %11
    i32 131, label %65
    i32 128, label %119
    i32 130, label %164
    i32 129, label %218
  ]

11:                                               ; preds = %7
  %12 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %13 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = call i32 %16(i32 131)
  %18 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %20 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = call i32 %23(i32 130)
  %25 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %27 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @ARB_TEXTURE_CUBE_MAP, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %11
  %34 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %35 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = call i32 %38(i32 129)
  %40 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %33, %11
  %42 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %43 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %51 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = call i32 %54(i32 128)
  %56 = call i32 @checkGLcall(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %49, %41
  %58 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %59 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32 (i32)*, i32 (i32)** %61, align 8
  %63 = call i32 %62(i32 132)
  %64 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %263

65:                                               ; preds = %7
  %66 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %67 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = call i32 %70(i32 132)
  %72 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %73 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %74 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32 (i32)*, i32 (i32)** %76, align 8
  %78 = call i32 %77(i32 130)
  %79 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %81 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @ARB_TEXTURE_CUBE_MAP, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %65
  %88 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %89 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32 (i32)*, i32 (i32)** %91, align 8
  %93 = call i32 %92(i32 129)
  %94 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %87, %65
  %96 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %97 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %105 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32 (i32)*, i32 (i32)** %107, align 8
  %109 = call i32 %108(i32 128)
  %110 = call i32 @checkGLcall(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %103, %95
  %112 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %113 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32 (i32)*, i32 (i32)** %115, align 8
  %117 = call i32 %116(i32 131)
  %118 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %263

119:                                              ; preds = %7
  %120 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %121 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32 (i32)*, i32 (i32)** %123, align 8
  %125 = call i32 %124(i32 132)
  %126 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %127 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %128 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32 (i32)*, i32 (i32)** %130, align 8
  %132 = call i32 %131(i32 131)
  %133 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %134 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %135 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32 (i32)*, i32 (i32)** %137, align 8
  %139 = call i32 %138(i32 130)
  %140 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %142 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* @ARB_TEXTURE_CUBE_MAP, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %119
  %149 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %150 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32 (i32)*, i32 (i32)** %152, align 8
  %154 = call i32 %153(i32 129)
  %155 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %156

156:                                              ; preds = %148, %119
  %157 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %158 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32 (i32)*, i32 (i32)** %160, align 8
  %162 = call i32 %161(i32 128)
  %163 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %263

164:                                              ; preds = %7
  %165 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %166 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i64, i64* @ARB_TEXTURE_CUBE_MAP, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %164
  %173 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %174 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32 (i32)*, i32 (i32)** %176, align 8
  %178 = call i32 %177(i32 129)
  %179 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %180

180:                                              ; preds = %172, %164
  %181 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %182 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %181, i32 0, i32 1
  %183 = load i64*, i64** %182, align 8
  %184 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %180
  %189 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %190 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32 (i32)*, i32 (i32)** %192, align 8
  %194 = call i32 %193(i32 128)
  %195 = call i32 @checkGLcall(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %196

196:                                              ; preds = %188, %180
  %197 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %198 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i32 (i32)*, i32 (i32)** %200, align 8
  %202 = call i32 %201(i32 132)
  %203 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %204 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %205 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i32 (i32)*, i32 (i32)** %207, align 8
  %209 = call i32 %208(i32 131)
  %210 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %211 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %212 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i32 (i32)*, i32 (i32)** %214, align 8
  %216 = call i32 %215(i32 130)
  %217 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %263

218:                                              ; preds = %7
  %219 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %220 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load i32 (i32)*, i32 (i32)** %222, align 8
  %224 = call i32 %223(i32 132)
  %225 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %226 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %227 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32 (i32)*, i32 (i32)** %229, align 8
  %231 = call i32 %230(i32 131)
  %232 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %233 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %234 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i32 (i32)*, i32 (i32)** %236, align 8
  %238 = call i32 %237(i32 130)
  %239 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %240 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %241 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %240, i32 0, i32 1
  %242 = load i64*, i64** %241, align 8
  %243 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %244 = getelementptr inbounds i64, i64* %242, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %218
  %248 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %249 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 0
  %252 = load i32 (i32)*, i32 (i32)** %251, align 8
  %253 = call i32 %252(i32 128)
  %254 = call i32 @checkGLcall(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %255

255:                                              ; preds = %247, %218
  %256 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %257 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 1
  %260 = load i32 (i32)*, i32 (i32)** %259, align 8
  %261 = call i32 %260(i32 129)
  %262 = call i32 @checkGLcall(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %263

263:                                              ; preds = %7, %255, %196, %156, %111, %57
  br label %318

264:                                              ; preds = %2
  %265 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %266 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load i32 (i32)*, i32 (i32)** %268, align 8
  %270 = call i32 %269(i32 132)
  %271 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %272 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %273 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 1
  %276 = load i32 (i32)*, i32 (i32)** %275, align 8
  %277 = call i32 %276(i32 131)
  %278 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %279 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %280 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 0
  %283 = load i32 (i32)*, i32 (i32)** %282, align 8
  %284 = call i32 %283(i32 130)
  %285 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %286 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %287 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %286, i32 0, i32 1
  %288 = load i64*, i64** %287, align 8
  %289 = load i64, i64* @ARB_TEXTURE_CUBE_MAP, align 8
  %290 = getelementptr inbounds i64, i64* %288, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %264
  %294 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %295 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 0
  %298 = load i32 (i32)*, i32 (i32)** %297, align 8
  %299 = call i32 %298(i32 129)
  %300 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %301

301:                                              ; preds = %293, %264
  %302 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %303 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %302, i32 0, i32 1
  %304 = load i64*, i64** %303, align 8
  %305 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %306 = getelementptr inbounds i64, i64* %304, i64 %305
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %301
  %310 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %311 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 0
  %314 = load i32 (i32)*, i32 (i32)** %313, align 8
  %315 = call i32 %314(i32 128)
  %316 = call i32 @checkGLcall(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %317

317:                                              ; preds = %309, %301
  br label %318

318:                                              ; preds = %317, %263
  ret void
}

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
