; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_iterators.c_spl_recursive_it_move_forward_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_iterators.c_spl_recursive_it_move_forward_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32, i32, i32, %struct.TYPE_19__*, i64, %struct.TYPE_22__*, i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* (%struct.TYPE_22__*, i32*, i32)* }

@exception = common dso_local global i32 0, align 4
@RIT_CATCH_GET_CHILD = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"callHasChildren\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"haschildren\00", align 1
@IS_UNDEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"nextelement\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"callGetChildren\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"getchildren\00", align 1
@IS_OBJECT = common dso_local global i32 0, align 4
@spl_ce_RecursiveIterator = common dso_local global i32 0, align 4
@spl_ce_UnexpectedValueException = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [86 x i8] c"Objects returned by RecursiveIterator::getChildren() must implement RecursiveIterator\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"beginchildren\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"endchildren\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32*)* @spl_recursive_it_move_forward_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spl_recursive_it_move_forward_ex(%struct.TYPE_23__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = call i32 @SPL_FETCH_SUB_ITERATOR(%struct.TYPE_21__* %13, %struct.TYPE_23__* %14)
  br label %16

16:                                               ; preds = %563, %2
  %17 = load i32, i32* @exception, align 4
  %18 = call i64 @EG(i32 %17)
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %564

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %495, %341, %195, %180, %171, %21
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %5, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %496 [
    i32 131, label %41
    i32 129, label %64
    i32 128, label %84
    i32 130, label %245
    i32 132, label %293
  ]

41:                                               ; preds = %22
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %45, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %48 = call i32 %46(%struct.TYPE_21__* %47)
  %49 = load i32, i32* @exception, align 4
  %50 = call i64 @EG(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %41
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @RIT_CATCH_GET_CHILD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %564

60:                                               ; preds = %52
  %61 = call i32 (...) @zend_clear_exception()
  br label %62

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %22, %63
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %71 = call i32 %69(%struct.TYPE_21__* %70)
  %72 = load i32, i32* @FAILURE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %496

75:                                               ; preds = %64
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  store i32 128, i32* %83, align 8
  br label %84

84:                                               ; preds = %22, %75
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %86, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %92, align 8
  store %struct.TYPE_22__* %93, %struct.TYPE_22__** %7, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  store i32* %101, i32** %6, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 10
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %84
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @Z_OBJ_P(i32* %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 6
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 10
  %114 = call i32 @zend_call_method_with_0_params(i32 %108, %struct.TYPE_22__* %111, i64* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %8)
  br label %120

115:                                              ; preds = %84
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @Z_OBJ_P(i32* %116)
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %119 = call i32 @zend_call_method_with_0_params(i32 %117, %struct.TYPE_22__* %118, i64* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  br label %120

120:                                              ; preds = %115, %106
  %121 = load i32, i32* @exception, align 4
  %122 = call i64 @EG(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %120
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @RIT_CATCH_GET_CHILD, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %124
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  store i32 131, i32* %139, align 8
  br label %564

140:                                              ; preds = %124
  %141 = call i32 (...) @zend_clear_exception()
  br label %142

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %142, %120
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @Z_TYPE(i32 %144)
  %146 = load i32, i32* @IS_UNDEF, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %207

148:                                              ; preds = %143
  %149 = call i32 @zend_is_true(i32* %8)
  store i32 %149, i32* %11, align 4
  %150 = call i32 @zval_ptr_dtor(i32* %8)
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %206

153:                                              ; preds = %148
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %167, label %158

158:                                              ; preds = %153
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ugt i64 %162, %165
  br i1 %166, label %167, label %190

167:                                              ; preds = %158, %153
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  switch i32 %170, label %189 [
    i32 134, label %171
    i32 135, label %171
    i32 133, label %180
  ]

171:                                              ; preds = %167, %167
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %173, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  store i32 132, i32* %179, align 8
  br label %22

180:                                              ; preds = %167
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %182, align 8
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  store i32 130, i32* %188, align 8
  br label %22

189:                                              ; preds = %167
  br label %205

190:                                              ; preds = %158
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 134
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %197, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  store i32 131, i32* %203, align 8
  br label %22

204:                                              ; preds = %190
  br label %205

205:                                              ; preds = %204, %189
  br label %206

206:                                              ; preds = %205, %148
  br label %207

207:                                              ; preds = %206, %143
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 9
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %207
  %213 = load i32*, i32** %4, align 8
  %214 = call i32 @Z_OBJ_P(i32* %213)
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 6
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %216, align 8
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 9
  %220 = call i32 @zend_call_method_with_0_params(i32 %214, %struct.TYPE_22__* %217, i64* %219, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %221

221:                                              ; preds = %212, %207
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 4
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %223, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 0
  store i32 131, i32* %229, align 8
  %230 = load i32, i32* @exception, align 4
  %231 = call i64 @EG(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %221
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @RIT_CATCH_GET_CHILD, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %233
  br label %564

241:                                              ; preds = %233
  %242 = call i32 (...) @zend_clear_exception()
  br label %243

243:                                              ; preds = %241
  br label %244

244:                                              ; preds = %243, %221
  br label %564

245:                                              ; preds = %22
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 9
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %269

250:                                              ; preds = %245
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %253, 133
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = icmp eq i32 %258, 135
  br i1 %259, label %260, label %269

260:                                              ; preds = %255, %250
  %261 = load i32*, i32** %4, align 8
  %262 = call i32 @Z_OBJ_P(i32* %261)
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 6
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %264, align 8
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 9
  %268 = call i32 @zend_call_method_with_0_params(i32 %262, %struct.TYPE_22__* %265, i64* %267, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %269

269:                                              ; preds = %260, %255, %245
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = icmp eq i32 %272, 133
  br i1 %273, label %274, label %283

274:                                              ; preds = %269
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 4
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %276, align 8
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  store i32 132, i32* %282, align 8
  br label %292

283:                                              ; preds = %269
  %284 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %284, i32 0, i32 4
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %285, align 8
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 0
  store i32 131, i32* %291, align 8
  br label %292

292:                                              ; preds = %283, %274
  br label %564

293:                                              ; preds = %22
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 4
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %295, align 8
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %301, align 8
  store %struct.TYPE_22__* %302, %struct.TYPE_22__** %7, align 8
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 4
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %304, align 8
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 1
  store i32* %310, i32** %6, align 8
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 8
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %324

315:                                              ; preds = %293
  %316 = load i32*, i32** %4, align 8
  %317 = call i32 @Z_OBJ_P(i32* %316)
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 6
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %319, align 8
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 8
  %323 = call i32 @zend_call_method_with_0_params(i32 %317, %struct.TYPE_22__* %320, i64* %322, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  br label %329

324:                                              ; preds = %293
  %325 = load i32*, i32** %6, align 8
  %326 = call i32 @Z_OBJ_P(i32* %325)
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %328 = call i32 @zend_call_method_with_0_params(i32 %326, %struct.TYPE_22__* %327, i64* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  br label %329

329:                                              ; preds = %324, %315
  %330 = load i32, i32* @exception, align 4
  %331 = call i64 @EG(i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %352

333:                                              ; preds = %329
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @RIT_CATCH_GET_CHILD, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %333
  br label %564

341:                                              ; preds = %333
  %342 = call i32 (...) @zend_clear_exception()
  %343 = call i32 @zval_ptr_dtor(i32* %9)
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %344, i32 0, i32 4
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %345, align 8
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %350, i32 0, i32 0
  store i32 131, i32* %351, align 8
  br label %22

352:                                              ; preds = %329
  %353 = load i32, i32* %9, align 4
  %354 = call i32 @Z_TYPE(i32 %353)
  %355 = load i32, i32* @IS_UNDEF, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %371, label %357

357:                                              ; preds = %352
  %358 = load i32, i32* %9, align 4
  %359 = call i32 @Z_TYPE(i32 %358)
  %360 = load i32, i32* @IS_OBJECT, align 4
  %361 = icmp ne i32 %359, %360
  br i1 %361, label %371, label %362

362:                                              ; preds = %357
  %363 = load i32, i32* %9, align 4
  %364 = call %struct.TYPE_22__* @Z_OBJCE(i32 %363)
  store %struct.TYPE_22__* %364, %struct.TYPE_22__** %7, align 8
  %365 = icmp ne %struct.TYPE_22__* %364, null
  br i1 %365, label %366, label %371

366:                                              ; preds = %362
  %367 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %368 = load i32, i32* @spl_ce_RecursiveIterator, align 4
  %369 = call i32 @instanceof_function(%struct.TYPE_22__* %367, i32 %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %375, label %371

371:                                              ; preds = %366, %362, %357, %352
  %372 = call i32 @zval_ptr_dtor(i32* %9)
  %373 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %374 = call i32 @zend_throw_exception(i32 %373, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %564

375:                                              ; preds = %366
  %376 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = icmp eq i32 %378, 135
  br i1 %379, label %380, label %389

380:                                              ; preds = %375
  %381 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %381, i32 0, i32 4
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %382, align 8
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 0
  store i32 130, i32* %388, align 8
  br label %398

389:                                              ; preds = %375
  %390 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %390, i32 0, i32 4
  %392 = load %struct.TYPE_19__*, %struct.TYPE_19__** %391, align 8
  %393 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %392, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %396, i32 0, i32 0
  store i32 131, i32* %397, align 8
  br label %398

398:                                              ; preds = %389, %380
  %399 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %400 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i32 0, i32 4
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %400, align 8
  %402 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = add i64 %404, 1
  store i64 %405, i64* %403, align 8
  %406 = add i64 %405, 1
  %407 = mul i64 4, %406
  %408 = trunc i64 %407 to i32
  %409 = call %struct.TYPE_19__* @erealloc(%struct.TYPE_19__* %401, i32 %408)
  %410 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %410, i32 0, i32 4
  store %struct.TYPE_19__* %409, %struct.TYPE_19__** %411, align 8
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 0
  %414 = load %struct.TYPE_21__* (%struct.TYPE_22__*, i32*, i32)*, %struct.TYPE_21__* (%struct.TYPE_22__*, i32*, i32)** %413, align 8
  %415 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %416 = call %struct.TYPE_21__* %414(%struct.TYPE_22__* %415, i32* %9, i32 0)
  store %struct.TYPE_21__* %416, %struct.TYPE_21__** %10, align 8
  %417 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %417, i32 0, i32 4
  %419 = load %struct.TYPE_19__*, %struct.TYPE_19__** %418, align 8
  %420 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %419, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %423, i32 0, i32 1
  %425 = call i32 @ZVAL_COPY_VALUE(i32* %424, i32* %9)
  %426 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %427 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %427, i32 0, i32 4
  %429 = load %struct.TYPE_19__*, %struct.TYPE_19__** %428, align 8
  %430 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %429, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %433, i32 0, i32 3
  store %struct.TYPE_21__* %426, %struct.TYPE_21__** %434, align 8
  %435 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %436 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %437 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %436, i32 0, i32 4
  %438 = load %struct.TYPE_19__*, %struct.TYPE_19__** %437, align 8
  %439 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %438, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 2
  store %struct.TYPE_22__* %435, %struct.TYPE_22__** %443, align 8
  %444 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %444, i32 0, i32 4
  %446 = load %struct.TYPE_19__*, %struct.TYPE_19__** %445, align 8
  %447 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %446, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %450, i32 0, i32 0
  store i32 129, i32* %451, align 8
  %452 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %453 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %452, i32 0, i32 0
  %454 = load %struct.TYPE_20__*, %struct.TYPE_20__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i32 0, i32 0
  %456 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %455, align 8
  %457 = icmp ne i32 (%struct.TYPE_21__*)* %456, null
  br i1 %457, label %458, label %466

458:                                              ; preds = %398
  %459 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %460 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %459, i32 0, i32 0
  %461 = load %struct.TYPE_20__*, %struct.TYPE_20__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %461, i32 0, i32 0
  %463 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %462, align 8
  %464 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %465 = call i32 %463(%struct.TYPE_21__* %464)
  br label %466

466:                                              ; preds = %458, %398
  %467 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %467, i32 0, i32 7
  %469 = load i64, i64* %468, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %495

471:                                              ; preds = %466
  %472 = load i32*, i32** %4, align 8
  %473 = call i32 @Z_OBJ_P(i32* %472)
  %474 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %474, i32 0, i32 6
  %476 = load %struct.TYPE_22__*, %struct.TYPE_22__** %475, align 8
  %477 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %478 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %477, i32 0, i32 7
  %479 = call i32 @zend_call_method_with_0_params(i32 %473, %struct.TYPE_22__* %476, i64* %478, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %480 = load i32, i32* @exception, align 4
  %481 = call i64 @EG(i32 %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %494

483:                                              ; preds = %471
  %484 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %485 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* @RIT_CATCH_GET_CHILD, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %491, label %490

490:                                              ; preds = %483
  br label %564

491:                                              ; preds = %483
  %492 = call i32 (...) @zend_clear_exception()
  br label %493

493:                                              ; preds = %491
  br label %494

494:                                              ; preds = %493, %471
  br label %495

495:                                              ; preds = %494, %466
  br label %22

496:                                              ; preds = %22, %74
  %497 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %498 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = icmp ugt i64 %499, 0
  br i1 %500, label %501, label %562

501:                                              ; preds = %496
  %502 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %503 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %502, i32 0, i32 5
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %530

506:                                              ; preds = %501
  %507 = load i32*, i32** %4, align 8
  %508 = call i32 @Z_OBJ_P(i32* %507)
  %509 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %510 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %509, i32 0, i32 6
  %511 = load %struct.TYPE_22__*, %struct.TYPE_22__** %510, align 8
  %512 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %513 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %512, i32 0, i32 5
  %514 = call i32 @zend_call_method_with_0_params(i32 %508, %struct.TYPE_22__* %511, i64* %513, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %515 = load i32, i32* @exception, align 4
  %516 = call i64 @EG(i32 %515)
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %529

518:                                              ; preds = %506
  %519 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %520 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* @RIT_CATCH_GET_CHILD, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %526, label %525

525:                                              ; preds = %518
  br label %564

526:                                              ; preds = %518
  %527 = call i32 (...) @zend_clear_exception()
  br label %528

528:                                              ; preds = %526
  br label %529

529:                                              ; preds = %528, %506
  br label %530

530:                                              ; preds = %529, %501
  %531 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %532 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %531, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = icmp ugt i64 %533, 0
  br i1 %534, label %535, label %561

535:                                              ; preds = %530
  %536 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %537 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %536, i32 0, i32 4
  %538 = load %struct.TYPE_19__*, %struct.TYPE_19__** %537, align 8
  %539 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %540 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %539, i32 0, i32 0
  %541 = load i64, i64* %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %538, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %542, i32 0, i32 1
  %544 = call i32 @ZVAL_COPY_VALUE(i32* %12, i32* %543)
  %545 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %546 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %545, i32 0, i32 4
  %547 = load %struct.TYPE_19__*, %struct.TYPE_19__** %546, align 8
  %548 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %549 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %548, i32 0, i32 0
  %550 = load i64, i64* %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %547, i64 %550
  %552 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %551, i32 0, i32 1
  %553 = call i32 @ZVAL_UNDEF(i32* %552)
  %554 = call i32 @zval_ptr_dtor(i32* %12)
  %555 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %556 = call i32 @zend_iterator_dtor(%struct.TYPE_21__* %555)
  %557 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %558 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %557, i32 0, i32 0
  %559 = load i64, i64* %558, align 8
  %560 = add i64 %559, -1
  store i64 %560, i64* %558, align 8
  br label %561

561:                                              ; preds = %535, %530
  br label %563

562:                                              ; preds = %496
  br label %564

563:                                              ; preds = %561
  br label %16

564:                                              ; preds = %59, %131, %240, %244, %292, %340, %371, %490, %525, %562, %16
  ret void
}

declare dso_local i32 @SPL_FETCH_SUB_ITERATOR(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i64 @EG(i32) #1

declare dso_local i32 @zend_clear_exception(...) #1

declare dso_local i32 @zend_call_method_with_0_params(i32, %struct.TYPE_22__*, i64*, i8*, i32*) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local i32 @Z_TYPE(i32) #1

declare dso_local i32 @zend_is_true(i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local %struct.TYPE_22__* @Z_OBJCE(i32) #1

declare dso_local i32 @instanceof_function(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @zend_throw_exception(i32, i8*, i32) #1

declare dso_local %struct.TYPE_19__* @erealloc(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @zend_iterator_dtor(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
