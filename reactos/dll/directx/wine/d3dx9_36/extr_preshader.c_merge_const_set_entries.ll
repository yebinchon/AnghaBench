; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_merge_const_set_entries.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_merge_const_set_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_const_tab = type { i32, %struct.d3dx_const_param_eval_output* }
%struct.d3dx_const_param_eval_output = type { i32, i32, i32, i32, i64, %struct.d3dx_parameter* }
%struct.d3dx_parameter = type { i64, i64, i32, i32, i64, i32, i32* }

@D3D_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Merging %u child parameters for %s, not merging %u, direct_copy %#x.\0A\00", align 1
@D3DXPT_VOID = common dso_local global i64 0, align 8
@D3DXPC_STRUCT = common dso_local global i64 0, align 8
@PRES_VT_COUNT = common dso_local global i64 0, align 8
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Not merging %u child parameters for %s, direct_copy %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_const_tab*, %struct.d3dx_parameter*, i32)* @merge_const_set_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_const_set_entries(%struct.d3dx_const_tab* %0, %struct.d3dx_parameter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx_const_tab*, align 8
  %6 = alloca %struct.d3dx_parameter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.d3dx_const_param_eval_output*, align 8
  %15 = alloca %struct.d3dx_const_param_eval_output*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.d3dx_const_tab* %0, %struct.d3dx_const_tab** %5, align 8
  store %struct.d3dx_parameter* %1, %struct.d3dx_parameter** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %5, align 8
  %20 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @D3D_OK, align 4
  store i32 %24, i32* %4, align 4
  br label %350

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %346, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %5, align 8
  %29 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %348

33:                                               ; preds = %26
  %34 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %5, align 8
  %35 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %34, i32 0, i32 1
  %36 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %36, i64 %38
  store %struct.d3dx_const_param_eval_output* %39, %struct.d3dx_const_param_eval_output** %14, align 8
  %40 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %41 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %40, i32 0, i32 5
  %42 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %41, align 8
  %43 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %10, align 8
  %45 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %46 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %50 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @get_offset_reg(i32 %48, i32 %51)
  store i32 %52, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %227, %33
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %5, align 8
  %57 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %230

60:                                               ; preds = %54
  %61 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %5, align 8
  %62 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %61, i32 0, i32 1
  %63 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %63, i64 %65
  store %struct.d3dx_const_param_eval_output* %66, %struct.d3dx_const_param_eval_output** %15, align 8
  %67 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %68 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %71 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %74 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %72, %75
  %77 = call i32 @get_offset_reg(i32 %69, i32 %76)
  store i32 %77, i32* %16, align 4
  %78 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %79 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %82 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @get_offset_reg(i32 %80, i32 %83)
  store i32 %84, i32* %17, align 4
  %85 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %86 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %190

90:                                               ; preds = %60
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %190

94:                                               ; preds = %90
  %95 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %96 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %99 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %190

102:                                              ; preds = %94
  %103 = load i32*, i32** %10, align 8
  %104 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %105 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %104, i32 0, i32 5
  %106 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %105, align 8
  %107 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %106, i32 0, i32 6
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %103, %108
  br i1 %109, label %110, label %190

110:                                              ; preds = %102
  %111 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %112 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %191, label %115

115:                                              ; preds = %110
  %116 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %117 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %116, i32 0, i32 5
  %118 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %117, align 8
  %119 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %122 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %121, i32 0, i32 5
  %123 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %122, align 8
  %124 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %120, %125
  br i1 %126, label %127, label %190

127:                                              ; preds = %115
  %128 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %129 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %128, i32 0, i32 5
  %130 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %129, align 8
  %131 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %134 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %133, i32 0, i32 5
  %135 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %134, align 8
  %136 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %132, %137
  br i1 %138, label %139, label %190

139:                                              ; preds = %127
  %140 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %141 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %140, i32 0, i32 5
  %142 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %141, align 8
  %143 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %146 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %145, i32 0, i32 5
  %147 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %146, align 8
  %148 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %144, %149
  br i1 %150, label %151, label %190

151:                                              ; preds = %139
  %152 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %153 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %152, i32 0, i32 5
  %154 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %153, align 8
  %155 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %158 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %157, i32 0, i32 5
  %159 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %158, align 8
  %160 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %156, %161
  br i1 %162, label %163, label %190

163:                                              ; preds = %151
  %164 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %165 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %168 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %166, %169
  br i1 %170, label %171, label %190

171:                                              ; preds = %163
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %5, align 8
  %174 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 %175, 1
  %177 = icmp eq i32 %172, %176
  br i1 %177, label %191, label %178

178:                                              ; preds = %171
  %179 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %180 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %179, i32 0, i32 5
  %181 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %180, align 8
  %182 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %185 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %184, i32 0, i32 5
  %186 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %185, align 8
  %187 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %183, %188
  br i1 %189, label %191, label %190

190:                                              ; preds = %178, %163, %151, %139, %127, %115, %102, %94, %90, %60
  br label %230

191:                                              ; preds = %178, %171, %110
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %12, align 4
  %194 = add i32 %193, %192
  store i32 %194, i32* %12, align 4
  %195 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %196 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %191
  %200 = load i32, i32* %16, align 4
  br label %217

201:                                              ; preds = %191
  %202 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %203 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %202, i32 0, i32 5
  %204 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %203, align 8
  %205 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %208 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %207, i32 0, i32 5
  %209 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %208, align 8
  %210 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = mul i32 %206, %211
  %213 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %214 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = mul i32 %212, %215
  br label %217

217:                                              ; preds = %201, %199
  %218 = phi i32 [ %200, %199 ], [ %216, %201 ]
  %219 = load i32*, i32** %10, align 8
  %220 = zext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32* %221, i32** %10, align 8
  %222 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %15, align 8
  %223 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %13, align 4
  %226 = add i32 %225, %224
  store i32 %226, i32* %13, align 4
  br label %227

227:                                              ; preds = %217
  %228 = load i32, i32* %8, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %54

230:                                              ; preds = %190, %54
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %7, align 4
  %233 = add i32 %232, 1
  %234 = icmp ugt i32 %231, %233
  br i1 %234, label %235, label %331

235:                                              ; preds = %230
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* %7, align 4
  %238 = sub i32 %236, %237
  %239 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %240 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @debugstr_a(i32 %241)
  %243 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %5, align 8
  %244 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sub i32 %245, %246
  %248 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %249 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = call i32 (i8*, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %238, i32 %242, i32 %247, i64 %250)
  %252 = load i32, i32* %13, align 4
  %253 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %254 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 4
  %255 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %256 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %300

259:                                              ; preds = %235
  %260 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %261 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %260, i32 0, i32 3
  store i32 1, i32* %261, align 4
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* %9, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %290

265:                                              ; preds = %259
  %266 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %267 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @D3DXPT_VOID, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %277

271:                                              ; preds = %265
  %272 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %273 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @D3DXPC_STRUCT, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %290, label %277

277:                                              ; preds = %271, %265
  %278 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %279 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = call i64 @table_type_from_param_type(i64 %280)
  %282 = load i64, i64* @PRES_VT_COUNT, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %277
  %285 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %285, i32* %4, align 4
  br label %350

286:                                              ; preds = %277
  %287 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %288 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %289 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %288, i32 0, i32 5
  store %struct.d3dx_parameter* %287, %struct.d3dx_parameter** %289, align 8
  br label %290

290:                                              ; preds = %286, %271, %259
  %291 = load i32, i32* %11, align 4
  %292 = load i32, i32* %12, align 4
  %293 = call i32 @get_reg_offset(i32 %291, i32 %292)
  %294 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %295 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = sub nsw i32 %293, %296
  %298 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %299 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %298, i32 0, i32 2
  store i32 %297, i32* %299, align 8
  br label %300

300:                                              ; preds = %290, %235
  %301 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %5, align 8
  %302 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %301, i32 0, i32 1
  %303 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = add i32 %304, 1
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %303, i64 %306
  %308 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %5, align 8
  %309 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %308, i32 0, i32 1
  %310 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %309, align 8
  %311 = load i32, i32* %8, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %310, i64 %312
  %314 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %5, align 8
  %315 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %8, align 4
  %318 = sub i32 %316, %317
  %319 = zext i32 %318 to i64
  %320 = mul i64 32, %319
  %321 = trunc i64 %320 to i32
  %322 = call i32 @memmove(%struct.d3dx_const_param_eval_output* %307, %struct.d3dx_const_param_eval_output* %313, i32 %321)
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* %7, align 4
  %325 = sub i32 %323, %324
  %326 = sub i32 %325, 1
  %327 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %5, align 8
  %328 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = sub i32 %329, %326
  store i32 %330, i32* %328, align 8
  br label %346

331:                                              ; preds = %230
  %332 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %5, align 8
  %333 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* %8, align 4
  %336 = sub i32 %334, %335
  %337 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %338 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @debugstr_a(i32 %339)
  %341 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %14, align 8
  %342 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %341, i32 0, i32 4
  %343 = load i64, i64* %342, align 8
  %344 = trunc i64 %343 to i32
  %345 = call i32 (i8*, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %336, i32 %340, i32 %344)
  br label %346

346:                                              ; preds = %331, %300
  %347 = load i32, i32* %8, align 4
  store i32 %347, i32* %7, align 4
  br label %26

348:                                              ; preds = %26
  %349 = load i32, i32* @D3D_OK, align 4
  store i32 %349, i32* %4, align 4
  br label %350

350:                                              ; preds = %348, %284, %23
  %351 = load i32, i32* %4, align 4
  ret i32 %351
}

declare dso_local i32 @get_offset_reg(i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i64 @table_type_from_param_type(i64) #1

declare dso_local i32 @get_reg_offset(i32, i32) #1

declare dso_local i32 @memmove(%struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
