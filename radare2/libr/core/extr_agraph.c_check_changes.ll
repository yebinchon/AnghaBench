; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_check_changes.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_check_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, %struct.TYPE_22__*, %struct.TYPE_24__*, i64, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i8* }
%struct.TYPE_21__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"graph.trace\00", align 1
@UT64_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"scr.color\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"graph.hints\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32, %struct.TYPE_21__*, i32*)* @check_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_changes(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_21__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %22 = icmp ne %struct.TYPE_21__* %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %20
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = icmp ne %struct.TYPE_22__* %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %33, %28, %23
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @agraph_reload_nodes(%struct.TYPE_23__* %47, %struct.TYPE_21__* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %276

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %20, %4
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @agraph_update_title(%struct.TYPE_21__* %58, %struct.TYPE_23__* %59, i32* %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %64 = icmp ne %struct.TYPE_21__* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @r_config_get_i(i64 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %79 = call i32 @fold_asm_trace(%struct.TYPE_21__* %77, %struct.TYPE_23__* %78)
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %65, %62
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %113, label %94

94:                                               ; preds = %91, %86, %81
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 12
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %99 = call i32 @is_mini(%struct.TYPE_23__* %98)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 11
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @update_node_dimension(i32 %97, i32 %99, i32 %102, i32 %105, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %94, %91
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123, %118, %113
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %128 = call i32 @agraph_set_layout(%struct.TYPE_23__* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %131 = icmp ne %struct.TYPE_21__* %130, null
  br i1 %131, label %132, label %205

132:                                              ; preds = %129
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @r_anal_get_bbaddr(i32 %135, i32 %138)
  store i64 %139, i64* %11, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* @UT64_MAX, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  store i32 0, i32* %5, align 4
  br label %276

144:                                              ; preds = %132
  %145 = load i64, i64* %11, align 8
  %146 = call i8* @get_title(i64 %145)
  store i8* %146, i8** %12, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = call %struct.TYPE_22__* @get_anode(i64 %149)
  store %struct.TYPE_22__* %150, %struct.TYPE_22__** %13, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %188

153:                                              ; preds = %144
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %158 = icmp ne %struct.TYPE_22__* %157, null
  br i1 %158, label %159, label %169

159:                                              ; preds = %156, %153
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %161 = icmp ne %struct.TYPE_22__* %160, null
  br i1 %161, label %162, label %188

162:                                              ; preds = %159
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i8*, i8** %12, align 8
  %167 = call i64 @strcmp(i32 %165, i8* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %162, %156
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = call %struct.TYPE_22__* @r_agraph_get_node(%struct.TYPE_23__* %170, i8* %171)
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 4
  store %struct.TYPE_22__* %172, %struct.TYPE_22__** %174, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %176, align 8
  %178 = icmp ne %struct.TYPE_22__* %177, null
  br i1 %178, label %179, label %187

179:                                              ; preds = %169
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %182, align 8
  %184 = call i32 @r_agraph_set_curnode(%struct.TYPE_23__* %180, %struct.TYPE_22__* %183)
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  br label %187

187:                                              ; preds = %179, %169
  br label %188

188:                                              ; preds = %187, %162, %159, %144
  %189 = load i8*, i8** %12, align 8
  %190 = call i32 @free(i8* %189)
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i8* @r_config_get_i(i64 %193, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 5
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 2
  store i8* %194, i8** %198, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i8* @r_config_get_i(i64 %201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 7
  store i8* %202, i8** %204, align 8
  br label %205

205:                                              ; preds = %188, %129
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %207, align 8
  %209 = icmp ne %struct.TYPE_22__* %208, null
  br i1 %209, label %215, label %210

210:                                              ; preds = %205
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %244

215:                                              ; preds = %210, %205
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 4
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %217, align 8
  store %struct.TYPE_22__* %218, %struct.TYPE_22__** %14, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %220 = icmp ne %struct.TYPE_22__* %219, null
  br i1 %220, label %231, label %221

221:                                              ; preds = %215
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 6
  %229 = load i64, i64* %228, align 8
  %230 = call %struct.TYPE_22__* @get_anode(i64 %229)
  store %struct.TYPE_22__* %230, %struct.TYPE_22__** %14, align 8
  br label %231

231:                                              ; preds = %226, %221, %215
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %233 = icmp ne %struct.TYPE_22__* %232, null
  br i1 %233, label %234, label %243

234:                                              ; preds = %231
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 5
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %236, align 8
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @update_seek(%struct.TYPE_24__* %237, %struct.TYPE_22__* %238, i32 %241)
  br label %243

243:                                              ; preds = %234, %231
  br label %244

244:                                              ; preds = %243, %210
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %248, %244
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 5
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 0
  store i32 %254, i32* %258, align 8
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 5
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 1
  store i32 %260, i32* %264, align 4
  br label %265

265:                                              ; preds = %252, %248
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 0
  store i32 0, i32* %267, align 8
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 2
  store i32 0, i32* %269, align 8
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 3
  store i32 0, i32* %271, align 4
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %273, align 8
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 1
  store i32 0, i32* %275, align 4
  store i32 1, i32* %5, align 4
  br label %276

276:                                              ; preds = %265, %143, %52
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @agraph_reload_nodes(%struct.TYPE_23__*, %struct.TYPE_21__*, i32*) #2

declare dso_local i32 @agraph_update_title(%struct.TYPE_21__*, %struct.TYPE_23__*, i32*) #2

declare dso_local i8* @r_config_get_i(i64, i8*) #2

declare dso_local i32 @fold_asm_trace(%struct.TYPE_21__*, %struct.TYPE_23__*) #2

declare dso_local i32 @update_node_dimension(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @is_mini(%struct.TYPE_23__*) #2

declare dso_local i32 @agraph_set_layout(%struct.TYPE_23__*) #2

declare dso_local i64 @r_anal_get_bbaddr(i32, i32) #2

declare dso_local i8* @get_title(i64) #2

declare dso_local %struct.TYPE_22__* @get_anode(i64) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local %struct.TYPE_22__* @r_agraph_get_node(%struct.TYPE_23__*, i8*) #2

declare dso_local i32 @r_agraph_set_curnode(%struct.TYPE_23__*, %struct.TYPE_22__*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @update_seek(%struct.TYPE_24__*, %struct.TYPE_22__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
