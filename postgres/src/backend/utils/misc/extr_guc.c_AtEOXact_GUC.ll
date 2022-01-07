; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_AtEOXact_GUC.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_AtEOXact_GUC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32, i8*, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, double, i8*, i32 }
%struct.config_bool = type { i32*, %struct.config_generic, i32 (i32, i8*)* }
%struct.config_int = type { i32*, %struct.config_generic, i32 (i32, i8*)* }
%struct.config_real = type { double*, %struct.config_generic, i32 (double, i8*)* }
%struct.config_string = type { i8**, %struct.config_generic, i32 (i8*, i8*)* }
%struct.config_enum = type { i32*, %struct.config_generic, i32 (i32, i8*)* }

@GUCNestLevel = common dso_local global i32 0, align 4
@guc_dirty = common dso_local global i32 0, align 4
@num_guc_variables = common dso_local global i32 0, align 4
@guc_variables = common dso_local global %struct.config_generic** null, align 8
@PGC_S_SESSION = common dso_local global i32 0, align 4
@GUC_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtEOXact_GUC(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_generic*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.config_bool*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.config_int*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.config_real*, align 8
  %23 = alloca double, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.config_string*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.config_enum*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @GUCNestLevel, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @GUCNestLevel, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br label %48

48:                                               ; preds = %46, %33
  %49 = phi i1 [ true, %33 ], [ %47, %46 ]
  br label %50

50:                                               ; preds = %48, %2
  %51 = phi i1 [ false, %2 ], [ %49, %48 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  %54 = load i32, i32* @guc_dirty, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* @GUCNestLevel, align 4
  br label %542

59:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %535, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @num_guc_variables, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %538

64:                                               ; preds = %60
  %65 = load %struct.config_generic**, %struct.config_generic*** @guc_variables, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %65, i64 %67
  %69 = load %struct.config_generic*, %struct.config_generic** %68, align 8
  store %struct.config_generic* %69, %struct.config_generic** %7, align 8
  br label %70

70:                                               ; preds = %529, %132, %64
  %71 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %72 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %71, i32 0, i32 3
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %8, align 8
  %74 = icmp ne %struct.TYPE_8__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = icmp sge i32 %78, %79
  br label %81

81:                                               ; preds = %75, %70
  %82 = phi i1 [ false, %70 ], [ %80, %75 ]
  br i1 %82, label %83, label %530

83:                                               ; preds = %81
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 7
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  store i32 1, i32* %10, align 4
  br label %217

90:                                               ; preds = %83
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 135
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 1, i32* %10, align 4
  br label %216

96:                                               ; preds = %90
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %120

101:                                              ; preds = %96
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 133
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 1, i32* %11, align 4
  br label %119

107:                                              ; preds = %101
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 134
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = call i32 @discard_stack_value(%struct.config_generic* %113, %struct.TYPE_7__* %115)
  br label %118

117:                                              ; preds = %107
  store i32 1, i32* %10, align 4
  br label %118

118:                                              ; preds = %117, %112
  br label %119

119:                                              ; preds = %118, %106
  br label %215

120:                                              ; preds = %96
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %122 = icmp eq %struct.TYPE_8__* %121, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 1
  %131 = icmp slt i32 %126, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %123, %120
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %134, align 8
  br label %70

137:                                              ; preds = %123
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %213 [
    i32 135, label %141
    i32 134, label %143
    i32 136, label %160
    i32 133, label %185
  ]

141:                                              ; preds = %137
  %142 = call i32 @Assert(i32 0)
  br label %213

143:                                              ; preds = %137
  %144 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 3
  %147 = call i32 @discard_stack_value(%struct.config_generic* %144, %struct.TYPE_7__* %146)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 133
  br i1 %151, label %152, label %157

152:                                              ; preds = %143
  %153 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = call i32 @discard_stack_value(%struct.config_generic* %153, %struct.TYPE_7__* %155)
  br label %157

157:                                              ; preds = %152, %143
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i32 134, i32* %159, align 4
  br label %213

160:                                              ; preds = %137
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 134
  br i1 %164, label %165, label %179

165:                                              ; preds = %160
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 3
  %175 = bitcast %struct.TYPE_7__* %172 to i8*
  %176 = bitcast %struct.TYPE_7__* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %175, i8* align 8 %176, i64 40, i1 false)
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  store i32 133, i32* %178, align 4
  br label %184

179:                                              ; preds = %160
  %180 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  %183 = call i32 @discard_stack_value(%struct.config_generic* %180, %struct.TYPE_7__* %182)
  br label %184

184:                                              ; preds = %179, %165
  br label %213

185:                                              ; preds = %137
  %186 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  %189 = call i32 @discard_stack_value(%struct.config_generic* %186, %struct.TYPE_7__* %188)
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 133
  br i1 %198, label %199, label %204

199:                                              ; preds = %185
  %200 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 2
  %203 = call i32 @discard_stack_value(%struct.config_generic* %200, %struct.TYPE_7__* %202)
  br label %204

204:                                              ; preds = %199, %185
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = bitcast %struct.TYPE_7__* %206 to i8*
  %210 = bitcast %struct.TYPE_7__* %208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %209, i8* align 8 %210, i64 40, i1 false)
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  store i32 133, i32* %212, align 4
  br label %213

213:                                              ; preds = %137, %204, %184, %157, %141
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214, %119
  br label %216

216:                                              ; preds = %215, %95
  br label %217

217:                                              ; preds = %216, %89
  store i32 0, i32* %12, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %511

223:                                              ; preds = %220, %217
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %223
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 2
  %229 = bitcast %struct.TYPE_7__* %13 to i8*
  %230 = bitcast %struct.TYPE_7__* %228 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %229, i8* align 8 %230, i64 40, i1 false)
  %231 = load i32, i32* @PGC_S_SESSION, align 4
  store i32 %231, i32* %14, align 4
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 8
  store i32 %234, i32* %15, align 4
  br label %246

235:                                              ; preds = %223
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 3
  %238 = bitcast %struct.TYPE_7__* %13 to i8*
  %239 = bitcast %struct.TYPE_7__* %237 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %238, i8* align 8 %239, i64 40, i1 false)
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %14, align 4
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  store i32 %245, i32* %15, align 4
  br label %246

246:                                              ; preds = %235, %226
  %247 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %248 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  switch i32 %249, label %494 [
    i32 132, label %250
    i32 130, label %296
    i32 129, label %342
    i32 128, label %388
    i32 131, label %448
  ]

250:                                              ; preds = %246
  %251 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %252 = bitcast %struct.config_generic* %251 to %struct.config_bool*
  store %struct.config_bool* %252, %struct.config_bool** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  store i32 %255, i32* %17, align 4
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  store i8* %257, i8** %18, align 8
  %258 = load %struct.config_bool*, %struct.config_bool** %16, align 8
  %259 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %17, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %271, label %264

264:                                              ; preds = %250
  %265 = load %struct.config_bool*, %struct.config_bool** %16, align 8
  %266 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = load i8*, i8** %18, align 8
  %270 = icmp ne i8* %268, %269
  br i1 %270, label %271, label %295

271:                                              ; preds = %264, %250
  %272 = load %struct.config_bool*, %struct.config_bool** %16, align 8
  %273 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %272, i32 0, i32 2
  %274 = load i32 (i32, i8*)*, i32 (i32, i8*)** %273, align 8
  %275 = icmp ne i32 (i32, i8*)* %274, null
  br i1 %275, label %276, label %283

276:                                              ; preds = %271
  %277 = load %struct.config_bool*, %struct.config_bool** %16, align 8
  %278 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %277, i32 0, i32 2
  %279 = load i32 (i32, i8*)*, i32 (i32, i8*)** %278, align 8
  %280 = load i32, i32* %17, align 4
  %281 = load i8*, i8** %18, align 8
  %282 = call i32 %279(i32 %280, i8* %281)
  br label %283

283:                                              ; preds = %276, %271
  %284 = load i32, i32* %17, align 4
  %285 = load %struct.config_bool*, %struct.config_bool** %16, align 8
  %286 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  store i32 %284, i32* %287, align 4
  %288 = load %struct.config_bool*, %struct.config_bool** %16, align 8
  %289 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %288, i32 0, i32 1
  %290 = load %struct.config_bool*, %struct.config_bool** %16, align 8
  %291 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %291, i32 0, i32 1
  %293 = load i8*, i8** %18, align 8
  %294 = call i32 @set_extra_field(%struct.config_generic* %289, i8** %292, i8* %293)
  store i32 1, i32* %12, align 4
  br label %295

295:                                              ; preds = %283, %264
  br label %494

296:                                              ; preds = %246
  %297 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %298 = bitcast %struct.config_generic* %297 to %struct.config_int*
  store %struct.config_int* %298, %struct.config_int** %19, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %20, align 4
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8
  store i8* %303, i8** %21, align 8
  %304 = load %struct.config_int*, %struct.config_int** %19, align 8
  %305 = getelementptr inbounds %struct.config_int, %struct.config_int* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %20, align 4
  %309 = icmp ne i32 %307, %308
  br i1 %309, label %317, label %310

310:                                              ; preds = %296
  %311 = load %struct.config_int*, %struct.config_int** %19, align 8
  %312 = getelementptr inbounds %struct.config_int, %struct.config_int* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %312, i32 0, i32 1
  %314 = load i8*, i8** %313, align 8
  %315 = load i8*, i8** %21, align 8
  %316 = icmp ne i8* %314, %315
  br i1 %316, label %317, label %341

317:                                              ; preds = %310, %296
  %318 = load %struct.config_int*, %struct.config_int** %19, align 8
  %319 = getelementptr inbounds %struct.config_int, %struct.config_int* %318, i32 0, i32 2
  %320 = load i32 (i32, i8*)*, i32 (i32, i8*)** %319, align 8
  %321 = icmp ne i32 (i32, i8*)* %320, null
  br i1 %321, label %322, label %329

322:                                              ; preds = %317
  %323 = load %struct.config_int*, %struct.config_int** %19, align 8
  %324 = getelementptr inbounds %struct.config_int, %struct.config_int* %323, i32 0, i32 2
  %325 = load i32 (i32, i8*)*, i32 (i32, i8*)** %324, align 8
  %326 = load i32, i32* %20, align 4
  %327 = load i8*, i8** %21, align 8
  %328 = call i32 %325(i32 %326, i8* %327)
  br label %329

329:                                              ; preds = %322, %317
  %330 = load i32, i32* %20, align 4
  %331 = load %struct.config_int*, %struct.config_int** %19, align 8
  %332 = getelementptr inbounds %struct.config_int, %struct.config_int* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  store i32 %330, i32* %333, align 4
  %334 = load %struct.config_int*, %struct.config_int** %19, align 8
  %335 = getelementptr inbounds %struct.config_int, %struct.config_int* %334, i32 0, i32 1
  %336 = load %struct.config_int*, %struct.config_int** %19, align 8
  %337 = getelementptr inbounds %struct.config_int, %struct.config_int* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %337, i32 0, i32 1
  %339 = load i8*, i8** %21, align 8
  %340 = call i32 @set_extra_field(%struct.config_generic* %335, i8** %338, i8* %339)
  store i32 1, i32* %12, align 4
  br label %341

341:                                              ; preds = %329, %310
  br label %494

342:                                              ; preds = %246
  %343 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %344 = bitcast %struct.config_generic* %343 to %struct.config_real*
  store %struct.config_real* %344, %struct.config_real** %22, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 2
  %347 = load double, double* %346, align 8
  store double %347, double* %23, align 8
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  store i8* %349, i8** %24, align 8
  %350 = load %struct.config_real*, %struct.config_real** %22, align 8
  %351 = getelementptr inbounds %struct.config_real, %struct.config_real* %350, i32 0, i32 0
  %352 = load double*, double** %351, align 8
  %353 = load double, double* %352, align 8
  %354 = load double, double* %23, align 8
  %355 = fcmp une double %353, %354
  br i1 %355, label %363, label %356

356:                                              ; preds = %342
  %357 = load %struct.config_real*, %struct.config_real** %22, align 8
  %358 = getelementptr inbounds %struct.config_real, %struct.config_real* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %358, i32 0, i32 1
  %360 = load i8*, i8** %359, align 8
  %361 = load i8*, i8** %24, align 8
  %362 = icmp ne i8* %360, %361
  br i1 %362, label %363, label %387

363:                                              ; preds = %356, %342
  %364 = load %struct.config_real*, %struct.config_real** %22, align 8
  %365 = getelementptr inbounds %struct.config_real, %struct.config_real* %364, i32 0, i32 2
  %366 = load i32 (double, i8*)*, i32 (double, i8*)** %365, align 8
  %367 = icmp ne i32 (double, i8*)* %366, null
  br i1 %367, label %368, label %375

368:                                              ; preds = %363
  %369 = load %struct.config_real*, %struct.config_real** %22, align 8
  %370 = getelementptr inbounds %struct.config_real, %struct.config_real* %369, i32 0, i32 2
  %371 = load i32 (double, i8*)*, i32 (double, i8*)** %370, align 8
  %372 = load double, double* %23, align 8
  %373 = load i8*, i8** %24, align 8
  %374 = call i32 %371(double %372, i8* %373)
  br label %375

375:                                              ; preds = %368, %363
  %376 = load double, double* %23, align 8
  %377 = load %struct.config_real*, %struct.config_real** %22, align 8
  %378 = getelementptr inbounds %struct.config_real, %struct.config_real* %377, i32 0, i32 0
  %379 = load double*, double** %378, align 8
  store double %376, double* %379, align 8
  %380 = load %struct.config_real*, %struct.config_real** %22, align 8
  %381 = getelementptr inbounds %struct.config_real, %struct.config_real* %380, i32 0, i32 1
  %382 = load %struct.config_real*, %struct.config_real** %22, align 8
  %383 = getelementptr inbounds %struct.config_real, %struct.config_real* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %383, i32 0, i32 1
  %385 = load i8*, i8** %24, align 8
  %386 = call i32 @set_extra_field(%struct.config_generic* %381, i8** %384, i8* %385)
  store i32 1, i32* %12, align 4
  br label %387

387:                                              ; preds = %375, %356
  br label %494

388:                                              ; preds = %246
  %389 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %390 = bitcast %struct.config_generic* %389 to %struct.config_string*
  store %struct.config_string* %390, %struct.config_string** %25, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 3
  %393 = load i8*, i8** %392, align 8
  store i8* %393, i8** %26, align 8
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %395 = load i8*, i8** %394, align 8
  store i8* %395, i8** %27, align 8
  %396 = load %struct.config_string*, %struct.config_string** %25, align 8
  %397 = getelementptr inbounds %struct.config_string, %struct.config_string* %396, i32 0, i32 0
  %398 = load i8**, i8*** %397, align 8
  %399 = load i8*, i8** %398, align 8
  %400 = load i8*, i8** %26, align 8
  %401 = icmp ne i8* %399, %400
  br i1 %401, label %409, label %402

402:                                              ; preds = %388
  %403 = load %struct.config_string*, %struct.config_string** %25, align 8
  %404 = getelementptr inbounds %struct.config_string, %struct.config_string* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %404, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  %407 = load i8*, i8** %27, align 8
  %408 = icmp ne i8* %406, %407
  br i1 %408, label %409, label %435

409:                                              ; preds = %402, %388
  %410 = load %struct.config_string*, %struct.config_string** %25, align 8
  %411 = getelementptr inbounds %struct.config_string, %struct.config_string* %410, i32 0, i32 2
  %412 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %411, align 8
  %413 = icmp ne i32 (i8*, i8*)* %412, null
  br i1 %413, label %414, label %421

414:                                              ; preds = %409
  %415 = load %struct.config_string*, %struct.config_string** %25, align 8
  %416 = getelementptr inbounds %struct.config_string, %struct.config_string* %415, i32 0, i32 2
  %417 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %416, align 8
  %418 = load i8*, i8** %26, align 8
  %419 = load i8*, i8** %27, align 8
  %420 = call i32 %417(i8* %418, i8* %419)
  br label %421

421:                                              ; preds = %414, %409
  %422 = load %struct.config_string*, %struct.config_string** %25, align 8
  %423 = load %struct.config_string*, %struct.config_string** %25, align 8
  %424 = getelementptr inbounds %struct.config_string, %struct.config_string* %423, i32 0, i32 0
  %425 = load i8**, i8*** %424, align 8
  %426 = load i8*, i8** %26, align 8
  %427 = call i32 @set_string_field(%struct.config_string* %422, i8** %425, i8* %426)
  %428 = load %struct.config_string*, %struct.config_string** %25, align 8
  %429 = getelementptr inbounds %struct.config_string, %struct.config_string* %428, i32 0, i32 1
  %430 = load %struct.config_string*, %struct.config_string** %25, align 8
  %431 = getelementptr inbounds %struct.config_string, %struct.config_string* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %431, i32 0, i32 1
  %433 = load i8*, i8** %27, align 8
  %434 = call i32 @set_extra_field(%struct.config_generic* %429, i8** %432, i8* %433)
  store i32 1, i32* %12, align 4
  br label %435

435:                                              ; preds = %421, %402
  %436 = load %struct.config_string*, %struct.config_string** %25, align 8
  %437 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i32 0, i32 3
  %439 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 3
  %441 = call i32 @set_string_field(%struct.config_string* %436, i8** %440, i8* null)
  %442 = load %struct.config_string*, %struct.config_string** %25, align 8
  %443 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i32 0, i32 2
  %445 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 3
  %447 = call i32 @set_string_field(%struct.config_string* %442, i8** %446, i8* null)
  br label %494

448:                                              ; preds = %246
  %449 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %450 = bitcast %struct.config_generic* %449 to %struct.config_enum*
  store %struct.config_enum* %450, %struct.config_enum** %28, align 8
  %451 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 4
  %453 = load i32, i32* %452, align 8
  store i32 %453, i32* %29, align 4
  %454 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %455 = load i8*, i8** %454, align 8
  store i8* %455, i8** %30, align 8
  %456 = load %struct.config_enum*, %struct.config_enum** %28, align 8
  %457 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %456, i32 0, i32 0
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* %29, align 4
  %461 = icmp ne i32 %459, %460
  br i1 %461, label %469, label %462

462:                                              ; preds = %448
  %463 = load %struct.config_enum*, %struct.config_enum** %28, align 8
  %464 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %464, i32 0, i32 1
  %466 = load i8*, i8** %465, align 8
  %467 = load i8*, i8** %30, align 8
  %468 = icmp ne i8* %466, %467
  br i1 %468, label %469, label %493

469:                                              ; preds = %462, %448
  %470 = load %struct.config_enum*, %struct.config_enum** %28, align 8
  %471 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %470, i32 0, i32 2
  %472 = load i32 (i32, i8*)*, i32 (i32, i8*)** %471, align 8
  %473 = icmp ne i32 (i32, i8*)* %472, null
  br i1 %473, label %474, label %481

474:                                              ; preds = %469
  %475 = load %struct.config_enum*, %struct.config_enum** %28, align 8
  %476 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %475, i32 0, i32 2
  %477 = load i32 (i32, i8*)*, i32 (i32, i8*)** %476, align 8
  %478 = load i32, i32* %29, align 4
  %479 = load i8*, i8** %30, align 8
  %480 = call i32 %477(i32 %478, i8* %479)
  br label %481

481:                                              ; preds = %474, %469
  %482 = load i32, i32* %29, align 4
  %483 = load %struct.config_enum*, %struct.config_enum** %28, align 8
  %484 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %483, i32 0, i32 0
  %485 = load i32*, i32** %484, align 8
  store i32 %482, i32* %485, align 4
  %486 = load %struct.config_enum*, %struct.config_enum** %28, align 8
  %487 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %486, i32 0, i32 1
  %488 = load %struct.config_enum*, %struct.config_enum** %28, align 8
  %489 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %489, i32 0, i32 1
  %491 = load i8*, i8** %30, align 8
  %492 = call i32 @set_extra_field(%struct.config_generic* %487, i8** %490, i8* %491)
  store i32 1, i32* %12, align 4
  br label %493

493:                                              ; preds = %481, %462
  br label %494

494:                                              ; preds = %246, %493, %435, %387, %341, %295
  %495 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %496 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %497 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %496, i32 0, i32 3
  %498 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %497, i32 0, i32 0
  %499 = call i32 @set_extra_field(%struct.config_generic* %495, i8** %498, i8* null)
  %500 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %501 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %501, i32 0, i32 2
  %503 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %502, i32 0, i32 0
  %504 = call i32 @set_extra_field(%struct.config_generic* %500, i8** %503, i8* null)
  %505 = load i32, i32* %14, align 4
  %506 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %507 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %506, i32 0, i32 5
  store i32 %505, i32* %507, align 4
  %508 = load i32, i32* %15, align 4
  %509 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %510 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %509, i32 0, i32 4
  store i32 %508, i32* %510, align 8
  br label %511

511:                                              ; preds = %494, %220
  %512 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %513 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %514 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %513, i32 0, i32 3
  store %struct.TYPE_8__* %512, %struct.TYPE_8__** %514, align 8
  %515 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %516 = call i32 @pfree(%struct.TYPE_8__* %515)
  %517 = load i32, i32* %12, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %529

519:                                              ; preds = %511
  %520 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %521 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* @GUC_REPORT, align 4
  %524 = and i32 %522, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %529

526:                                              ; preds = %519
  %527 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %528 = call i32 @ReportGUCOption(%struct.config_generic* %527)
  br label %529

529:                                              ; preds = %526, %519, %511
  br label %70

530:                                              ; preds = %81
  %531 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %532 = icmp ne %struct.TYPE_8__* %531, null
  br i1 %532, label %533, label %534

533:                                              ; preds = %530
  store i32 1, i32* %5, align 4
  br label %534

534:                                              ; preds = %533, %530
  br label %535

535:                                              ; preds = %534
  %536 = load i32, i32* %6, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %6, align 4
  br label %60

538:                                              ; preds = %60
  %539 = load i32, i32* %5, align 4
  store i32 %539, i32* @guc_dirty, align 4
  %540 = load i32, i32* %4, align 4
  %541 = sub nsw i32 %540, 1
  store i32 %541, i32* @GUCNestLevel, align 4
  br label %542

542:                                              ; preds = %538, %56
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @discard_stack_value(%struct.config_generic*, %struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_extra_field(%struct.config_generic*, i8**, i8*) #1

declare dso_local i32 @set_string_field(%struct.config_string*, i8**, i8*) #1

declare dso_local i32 @pfree(%struct.TYPE_8__*) #1

declare dso_local i32 @ReportGUCOption(%struct.config_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
