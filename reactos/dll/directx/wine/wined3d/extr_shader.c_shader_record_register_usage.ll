; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_record_register_usage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_record_register_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wined3d_shader_register = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Shader using float constant %u which is not supported.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Shader using integer constant %u which is not supported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Shader using bool constant %u which is not supported.\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Not recording register of type %#x and [%#x][%#x].\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_register*, i32, i32)* @shader_record_register_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_record_register_usage(%struct.wined3d_shader* %0, %struct.wined3d_shader_reg_maps* %1, %struct.wined3d_shader_register* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %9 = alloca %struct.wined3d_shader_register*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %7, align 8
  store %struct.wined3d_shader_reg_maps* %1, %struct.wined3d_shader_reg_maps** %8, align 8
  store %struct.wined3d_shader_register* %2, %struct.wined3d_shader_register** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %338 [
    i32 128, label %15
    i32 129, label %44
    i32 133, label %56
    i32 130, label %112
    i32 132, label %135
    i32 136, label %164
    i32 134, label %253
    i32 135, label %288
    i32 137, label %323
    i32 131, label %335
  ]

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %43

31:                                               ; preds = %15
  %32 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %31, %19
  br label %355

44:                                               ; preds = %5
  %45 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %46 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %53 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %355

56:                                               ; preds = %5
  %57 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %65, i32 0, i32 3
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %56
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %67
  %72 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %73 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %81 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 -1, i32* %83, align 8
  br label %98

84:                                               ; preds = %71
  %85 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %86 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  %92 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %93 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %91
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %84, %79
  br label %111

99:                                               ; preds = %67
  %100 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %101 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 1, %105
  %107 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %108 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %99, %98
  br label %355

112:                                              ; preds = %5
  %113 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %114 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %122 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %121, i32 0, i32 5
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %112
  %124 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %125 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %124, i32 0, i32 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %133 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %132, i32 0, i32 6
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %123
  br label %355

135:                                              ; preds = %5
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %135
  %140 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %141 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %139
  %148 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %149 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %148, i32 0, i32 7
  store i32 1, i32* %149, align 4
  br label %162

150:                                              ; preds = %139
  %151 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %152 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %151, i32 0, i32 1
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %160 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %159, i32 0, i32 8
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %150
  br label %162

162:                                              ; preds = %161, %147
  br label %163

163:                                              ; preds = %162, %135
  br label %355

164:                                              ; preds = %5
  %165 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %166 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %165, i32 0, i32 1
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %216

172:                                              ; preds = %164
  %173 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %174 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %173, i32 0, i32 1
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %180 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %179, i32 0, i32 9
  %181 = load i32, i32* %180, align 4
  %182 = icmp ult i32 %178, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %172
  %184 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %185 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %184, i32 0, i32 1
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %191 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %190, i32 0, i32 9
  store i32 %189, i32* %191, align 4
  br label %192

192:                                              ; preds = %183, %172
  %193 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %194 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %193, i32 0, i32 1
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %200 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 4
  %202 = icmp ugt i32 %198, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %192
  %204 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %205 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %204, i32 0, i32 1
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %211 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %210, i32 0, i32 10
  store i32 %209, i32* %211, align 4
  br label %212

212:                                              ; preds = %203, %192
  %213 = load i32, i32* @TRUE, align 4
  %214 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %215 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %214, i32 0, i32 16
  store i32 %213, i32* %215, align 4
  br label %252

216:                                              ; preds = %164
  %217 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %218 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %217, i32 0, i32 1
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i64 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %224 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %223, i32 0, i32 0
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i32 @min(i32 %227, i32 %228)
  %230 = icmp uge i32 %222, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %216
  %232 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %233 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %232, i32 0, i32 1
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @WARN(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* @FALSE, align 4
  store i32 %239, i32* %6, align 4
  br label %357

240:                                              ; preds = %216
  %241 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %242 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %241, i32 0, i32 15
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %245 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %244, i32 0, i32 1
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i64 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @wined3d_insert_bits(i32 %243, i32 %249, i32 1, i32 1)
  br label %251

251:                                              ; preds = %240
  br label %252

252:                                              ; preds = %251, %212
  br label %355

253:                                              ; preds = %5
  %254 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %255 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %254, i32 0, i32 1
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %261 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %260, i32 0, i32 0
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp uge i32 %259, %264
  br i1 %265, label %266, label %275

266:                                              ; preds = %253
  %267 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %268 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %267, i32 0, i32 1
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @WARN(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %272)
  %274 = load i32, i32* @FALSE, align 4
  store i32 %274, i32* %6, align 4
  br label %357

275:                                              ; preds = %253
  %276 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %277 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %276, i32 0, i32 1
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i64 0
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = shl i32 1, %281
  %283 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %284 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %283, i32 0, i32 11
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %275
  br label %355

288:                                              ; preds = %5
  %289 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %290 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %289, i32 0, i32 1
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i64 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %296 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %295, i32 0, i32 0
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp uge i32 %294, %299
  br i1 %300, label %301, label %310

301:                                              ; preds = %288
  %302 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %303 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %302, i32 0, i32 1
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i64 0
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @WARN(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %307)
  %309 = load i32, i32* @FALSE, align 4
  store i32 %309, i32* %6, align 4
  br label %357

310:                                              ; preds = %288
  %311 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %312 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %311, i32 0, i32 1
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i64 0
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = shl i32 1, %316
  %318 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %319 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %318, i32 0, i32 12
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 4
  br label %322

322:                                              ; preds = %310
  br label %355

323:                                              ; preds = %5
  %324 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %325 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %324, i32 0, i32 1
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i64 0
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = shl i32 1, %329
  %331 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %332 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %331, i32 0, i32 13
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 4
  br label %355

335:                                              ; preds = %5
  %336 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %337 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %336, i32 0, i32 14
  store i32 1, i32* %337, align 4
  br label %355

338:                                              ; preds = %5
  %339 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %340 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %343 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %342, i32 0, i32 1
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i64 0
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %9, align 8
  %349 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %348, i32 0, i32 1
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i64 1
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @TRACE(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %341, i32 %347, i32 %353)
  br label %355

355:                                              ; preds = %338, %335, %323, %322, %287, %252, %163, %134, %111, %44, %43
  %356 = load i32, i32* @TRUE, align 4
  store i32 %356, i32* %6, align 4
  br label %357

357:                                              ; preds = %355, %301, %266, %231
  %358 = load i32, i32* %6, align 4
  ret i32 %358
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @wined3d_insert_bits(i32, i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
