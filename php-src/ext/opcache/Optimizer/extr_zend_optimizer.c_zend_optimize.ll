; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_optimizer.c_zend_optimize.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_optimizer.c_zend_optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32 }

@ZEND_EVAL_CODE = common dso_local global i64 0, align 8
@ZEND_DUMP_BEFORE_OPTIMIZER = common dso_local global i32 0, align 4
@ZEND_DUMP_LIVE_RANGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"before optimizer\00", align 1
@ZEND_OPTIMIZER_PASS_1 = common dso_local global i32 0, align 4
@ZEND_DUMP_AFTER_PASS_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"after pass 1\00", align 1
@ZEND_OPTIMIZER_PASS_3 = common dso_local global i32 0, align 4
@ZEND_DUMP_AFTER_PASS_3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"after pass 3\00", align 1
@ZEND_OPTIMIZER_PASS_4 = common dso_local global i32 0, align 4
@ZEND_DUMP_AFTER_PASS_4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"after pass 4\00", align 1
@ZEND_OPTIMIZER_PASS_5 = common dso_local global i32 0, align 4
@ZEND_DUMP_AFTER_PASS_5 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"after pass 5\00", align 1
@ZEND_OPTIMIZER_PASS_6 = common dso_local global i32 0, align 4
@ZEND_OPTIMIZER_PASS_7 = common dso_local global i32 0, align 4
@ZEND_DUMP_AFTER_PASS_6 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"after pass 6\00", align 1
@ZEND_OPTIMIZER_PASS_9 = common dso_local global i32 0, align 4
@ZEND_DUMP_AFTER_PASS_9 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"after pass 9\00", align 1
@ZEND_OPTIMIZER_PASS_10 = common dso_local global i32 0, align 4
@ZEND_DUMP_AFTER_PASS_10 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"after pass 10\00", align 1
@ZEND_OPTIMIZER_PASS_11 = common dso_local global i32 0, align 4
@ZEND_DUMP_AFTER_PASS_11 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"after pass 11\00", align 1
@ZEND_OPTIMIZER_PASS_13 = common dso_local global i32 0, align 4
@ZEND_DUMP_AFTER_PASS_13 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"after pass 13\00", align 1
@ZEND_DUMP_AFTER_OPTIMIZER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"after optimizer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*)* @zend_optimize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_optimize(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %5 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ZEND_EVAL_CODE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %266

11:                                               ; preds = %2
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ZEND_DUMP_BEFORE_OPTIMIZER, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %20 = load i32, i32* @ZEND_DUMP_LIVE_RANGES, align 4
  %21 = call i32 @zend_dump_op_array(%struct.TYPE_24__* %19, i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %22

22:                                               ; preds = %18, %11
  %23 = load i32, i32* @ZEND_OPTIMIZER_PASS_1, align 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = call i32 @zend_optimizer_pass1(%struct.TYPE_24__* %30, %struct.TYPE_23__* %31)
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ZEND_DUMP_AFTER_PASS_1, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %41 = call i32 @zend_dump_op_array(%struct.TYPE_24__* %40, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %42

42:                                               ; preds = %39, %29
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i32, i32* @ZEND_OPTIMIZER_PASS_3, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %53 = call i32 @zend_optimizer_pass3(%struct.TYPE_24__* %51, %struct.TYPE_23__* %52)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ZEND_DUMP_AFTER_PASS_3, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %62 = call i32 @zend_dump_op_array(%struct.TYPE_24__* %61, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %63

63:                                               ; preds = %60, %50
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32, i32* @ZEND_OPTIMIZER_PASS_4, align 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %74 = call i32 @zend_optimize_func_calls(%struct.TYPE_24__* %72, %struct.TYPE_23__* %73)
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ZEND_DUMP_AFTER_PASS_4, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %83 = call i32 @zend_dump_op_array(%struct.TYPE_24__* %82, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* null)
  br label %84

84:                                               ; preds = %81, %71
  br label %85

85:                                               ; preds = %84, %64
  %86 = load i32, i32* @ZEND_OPTIMIZER_PASS_5, align 4
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %95 = call i32 @zend_optimize_cfg(%struct.TYPE_24__* %93, %struct.TYPE_23__* %94)
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ZEND_DUMP_AFTER_PASS_5, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %104 = call i32 @zend_dump_op_array(%struct.TYPE_24__* %103, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* null)
  br label %105

105:                                              ; preds = %102, %92
  br label %106

106:                                              ; preds = %105, %85
  %107 = load i32, i32* @ZEND_OPTIMIZER_PASS_6, align 4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %106
  %114 = load i32, i32* @ZEND_OPTIMIZER_PASS_7, align 4
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %134, label %120

120:                                              ; preds = %113
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %123 = call i32 @zend_optimize_dfa(%struct.TYPE_24__* %121, %struct.TYPE_23__* %122)
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ZEND_DUMP_AFTER_PASS_6, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %120
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %132 = call i32 @zend_dump_op_array(%struct.TYPE_24__* %131, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* null)
  br label %133

133:                                              ; preds = %130, %120
  br label %134

134:                                              ; preds = %133, %113, %106
  %135 = load i32, i32* @ZEND_OPTIMIZER_PASS_9, align 4
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %134
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %144 = call i32 @zend_optimize_temporary_variables(%struct.TYPE_24__* %142, %struct.TYPE_23__* %143)
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ZEND_DUMP_AFTER_PASS_9, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %141
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %153 = call i32 @zend_dump_op_array(%struct.TYPE_24__* %152, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* null)
  br label %154

154:                                              ; preds = %151, %141
  br label %155

155:                                              ; preds = %154, %134
  %156 = load i32, i32* @ZEND_OPTIMIZER_PASS_10, align 4
  %157 = load i32, i32* @ZEND_OPTIMIZER_PASS_5, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %158, %161
  %163 = load i32, i32* @ZEND_OPTIMIZER_PASS_10, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %155
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %168 = call i32 @zend_optimizer_nop_removal(%struct.TYPE_24__* %166, %struct.TYPE_23__* %167)
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ZEND_DUMP_AFTER_PASS_10, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %165
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %177 = call i32 @zend_dump_op_array(%struct.TYPE_24__* %176, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* null)
  br label %178

178:                                              ; preds = %175, %165
  br label %179

179:                                              ; preds = %178, %155
  %180 = load i32, i32* @ZEND_OPTIMIZER_PASS_11, align 4
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %180, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %214

186:                                              ; preds = %179
  %187 = load i32, i32* @ZEND_OPTIMIZER_PASS_6, align 4
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %187, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %186
  %194 = load i32, i32* @ZEND_OPTIMIZER_PASS_7, align 4
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %194, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %214, label %200

200:                                              ; preds = %193, %186
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %203 = call i32 @zend_optimizer_compact_literals(%struct.TYPE_24__* %201, %struct.TYPE_23__* %202)
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @ZEND_DUMP_AFTER_PASS_11, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %200
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %212 = call i32 @zend_dump_op_array(%struct.TYPE_24__* %211, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32* null)
  br label %213

213:                                              ; preds = %210, %200
  br label %214

214:                                              ; preds = %213, %193, %179
  %215 = load i32, i32* @ZEND_OPTIMIZER_PASS_13, align 4
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %215, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %248

221:                                              ; preds = %214
  %222 = load i32, i32* @ZEND_OPTIMIZER_PASS_6, align 4
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %222, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %221
  %229 = load i32, i32* @ZEND_OPTIMIZER_PASS_7, align 4
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %229, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %248, label %235

235:                                              ; preds = %228, %221
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %237 = call i32 @zend_optimizer_compact_vars(%struct.TYPE_24__* %236)
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @ZEND_DUMP_AFTER_PASS_13, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %235
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %246 = call i32 @zend_dump_op_array(%struct.TYPE_24__* %245, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32* null)
  br label %247

247:                                              ; preds = %244, %235
  br label %248

248:                                              ; preds = %247, %228, %214
  %249 = load i32, i32* @ZEND_OPTIMIZER_PASS_7, align 4
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = and i32 %249, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %248
  br label %266

256:                                              ; preds = %248
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @ZEND_DUMP_AFTER_OPTIMIZER, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %256
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %265 = call i32 @zend_dump_op_array(%struct.TYPE_24__* %264, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32* null)
  br label %266

266:                                              ; preds = %10, %255, %263, %256
  ret void
}

declare dso_local i32 @zend_dump_op_array(%struct.TYPE_24__*, i32, i8*, i32*) #1

declare dso_local i32 @zend_optimizer_pass1(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_optimizer_pass3(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_optimize_func_calls(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_optimize_cfg(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_optimize_dfa(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_optimize_temporary_variables(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_optimizer_nop_removal(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_optimizer_compact_literals(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_optimizer_compact_vars(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
