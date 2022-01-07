; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_init_constructors.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_init_constructors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FunctionW = common dso_local global i32 0, align 4
@PROPF_WRITABLE = common dso_local global i32 0, align 4
@ObjectW = common dso_local global i32 0, align 4
@ArrayW = common dso_local global i32 0, align 4
@BooleanW = common dso_local global i32 0, align 4
@DateW = common dso_local global i32 0, align 4
@EnumeratorW = common dso_local global i32 0, align 4
@ErrorW = common dso_local global i32 0, align 4
@EvalErrorW = common dso_local global i32 0, align 4
@RangeErrorW = common dso_local global i32 0, align 4
@ReferenceErrorW = common dso_local global i32 0, align 4
@RegExpErrorW = common dso_local global i32 0, align 4
@SyntaxErrorW = common dso_local global i32 0, align 4
@TypeErrorW = common dso_local global i32 0, align 4
@URIErrorW = common dso_local global i32 0, align 4
@NumberW = common dso_local global i32 0, align 4
@RegExpW = common dso_local global i32 0, align 4
@StringW = common dso_local global i32 0, align 4
@VBArrayW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*)* @init_constructors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_constructors(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @init_function_constr(%struct.TYPE_14__* %7, i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @FAILED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %413

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FunctionW, align 4
  %20 = load i32, i32* @PROPF_WRITABLE, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 18
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @jsval_obj(i32 %23)
  %25 = call i32 @jsdisp_define_data_property(i32 %18, i32 %19, i32 %20, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %413

31:                                               ; preds = %15
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 17
  %36 = call i32 @create_object_constr(%struct.TYPE_14__* %32, i32* %33, i32* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %413

42:                                               ; preds = %31
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ObjectW, align 4
  %47 = load i32, i32* @PROPF_WRITABLE, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 17
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @jsval_obj(i32 %50)
  %52 = call i32 @jsdisp_define_data_property(i32 %45, i32 %46, i32 %47, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @FAILED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %413

58:                                               ; preds = %42
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 16
  %63 = call i32 @create_array_constr(%struct.TYPE_14__* %59, i32* %60, i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @FAILED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %413

69:                                               ; preds = %58
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ArrayW, align 4
  %74 = load i32, i32* @PROPF_WRITABLE, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 16
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @jsval_obj(i32 %77)
  %79 = call i32 @jsdisp_define_data_property(i32 %72, i32 %73, i32 %74, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @FAILED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %413

85:                                               ; preds = %69
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 15
  %90 = call i32 @create_bool_constr(%struct.TYPE_14__* %86, i32* %87, i32* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @FAILED(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %413

96:                                               ; preds = %85
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BooleanW, align 4
  %101 = load i32, i32* @PROPF_WRITABLE, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 15
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @jsval_obj(i32 %104)
  %106 = call i32 @jsdisp_define_data_property(i32 %99, i32 %100, i32 %101, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i64 @FAILED(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %413

112:                                              ; preds = %96
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 14
  %117 = call i32 @create_date_constr(%struct.TYPE_14__* %113, i32* %114, i32* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i64 @FAILED(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %413

123:                                              ; preds = %112
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DateW, align 4
  %128 = load i32, i32* @PROPF_WRITABLE, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 14
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @jsval_obj(i32 %131)
  %133 = call i32 @jsdisp_define_data_property(i32 %126, i32 %127, i32 %128, i32 %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i64 @FAILED(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %123
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %3, align 4
  br label %413

139:                                              ; preds = %123
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 13
  %144 = call i32 @create_enumerator_constr(%struct.TYPE_14__* %140, i32* %141, i32* %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i64 @FAILED(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %3, align 4
  br label %413

150:                                              ; preds = %139
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @EnumeratorW, align 4
  %155 = load i32, i32* @PROPF_WRITABLE, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 13
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @jsval_obj(i32 %158)
  %160 = call i32 @jsdisp_define_data_property(i32 %153, i32 %154, i32 %155, i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i64 @FAILED(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %150
  %165 = load i32, i32* %6, align 4
  store i32 %165, i32* %3, align 4
  br label %413

166:                                              ; preds = %150
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %168 = load i32*, i32** %5, align 8
  %169 = call i32 @init_error_constr(%struct.TYPE_14__* %167, i32* %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = call i64 @FAILED(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %3, align 4
  br label %413

175:                                              ; preds = %166
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @ErrorW, align 4
  %180 = load i32, i32* @PROPF_WRITABLE, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 12
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @jsval_obj(i32 %183)
  %185 = call i32 @jsdisp_define_data_property(i32 %178, i32 %179, i32 %180, i32 %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = call i64 @FAILED(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %175
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %3, align 4
  br label %413

191:                                              ; preds = %175
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @EvalErrorW, align 4
  %196 = load i32, i32* @PROPF_WRITABLE, align 4
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 11
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @jsval_obj(i32 %199)
  %201 = call i32 @jsdisp_define_data_property(i32 %194, i32 %195, i32 %196, i32 %200)
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = call i64 @FAILED(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %191
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %3, align 4
  br label %413

207:                                              ; preds = %191
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @RangeErrorW, align 4
  %212 = load i32, i32* @PROPF_WRITABLE, align 4
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 10
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @jsval_obj(i32 %215)
  %217 = call i32 @jsdisp_define_data_property(i32 %210, i32 %211, i32 %212, i32 %216)
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = call i64 @FAILED(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %207
  %222 = load i32, i32* %6, align 4
  store i32 %222, i32* %3, align 4
  br label %413

223:                                              ; preds = %207
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @ReferenceErrorW, align 4
  %228 = load i32, i32* @PROPF_WRITABLE, align 4
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @jsval_obj(i32 %231)
  %233 = call i32 @jsdisp_define_data_property(i32 %226, i32 %227, i32 %228, i32 %232)
  store i32 %233, i32* %6, align 4
  %234 = load i32, i32* %6, align 4
  %235 = call i64 @FAILED(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %223
  %238 = load i32, i32* %6, align 4
  store i32 %238, i32* %3, align 4
  br label %413

239:                                              ; preds = %223
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @RegExpErrorW, align 4
  %244 = load i32, i32* @PROPF_WRITABLE, align 4
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @jsval_obj(i32 %247)
  %249 = call i32 @jsdisp_define_data_property(i32 %242, i32 %243, i32 %244, i32 %248)
  store i32 %249, i32* %6, align 4
  %250 = load i32, i32* %6, align 4
  %251 = call i64 @FAILED(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %239
  %254 = load i32, i32* %6, align 4
  store i32 %254, i32* %3, align 4
  br label %413

255:                                              ; preds = %239
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @SyntaxErrorW, align 4
  %260 = load i32, i32* @PROPF_WRITABLE, align 4
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 7
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @jsval_obj(i32 %263)
  %265 = call i32 @jsdisp_define_data_property(i32 %258, i32 %259, i32 %260, i32 %264)
  store i32 %265, i32* %6, align 4
  %266 = load i32, i32* %6, align 4
  %267 = call i64 @FAILED(i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %255
  %270 = load i32, i32* %6, align 4
  store i32 %270, i32* %3, align 4
  br label %413

271:                                              ; preds = %255
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @TypeErrorW, align 4
  %276 = load i32, i32* @PROPF_WRITABLE, align 4
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @jsval_obj(i32 %279)
  %281 = call i32 @jsdisp_define_data_property(i32 %274, i32 %275, i32 %276, i32 %280)
  store i32 %281, i32* %6, align 4
  %282 = load i32, i32* %6, align 4
  %283 = call i64 @FAILED(i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %271
  %286 = load i32, i32* %6, align 4
  store i32 %286, i32* %3, align 4
  br label %413

287:                                              ; preds = %271
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @URIErrorW, align 4
  %292 = load i32, i32* @PROPF_WRITABLE, align 4
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @jsval_obj(i32 %295)
  %297 = call i32 @jsdisp_define_data_property(i32 %290, i32 %291, i32 %292, i32 %296)
  store i32 %297, i32* %6, align 4
  %298 = load i32, i32* %6, align 4
  %299 = call i64 @FAILED(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %287
  %302 = load i32, i32* %6, align 4
  store i32 %302, i32* %3, align 4
  br label %413

303:                                              ; preds = %287
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %305 = load i32*, i32** %5, align 8
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 4
  %308 = call i32 @create_number_constr(%struct.TYPE_14__* %304, i32* %305, i32* %307)
  store i32 %308, i32* %6, align 4
  %309 = load i32, i32* %6, align 4
  %310 = call i64 @FAILED(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %303
  %313 = load i32, i32* %6, align 4
  store i32 %313, i32* %3, align 4
  br label %413

314:                                              ; preds = %303
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @NumberW, align 4
  %319 = load i32, i32* @PROPF_WRITABLE, align 4
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @jsval_obj(i32 %322)
  %324 = call i32 @jsdisp_define_data_property(i32 %317, i32 %318, i32 %319, i32 %323)
  store i32 %324, i32* %6, align 4
  %325 = load i32, i32* %6, align 4
  %326 = call i64 @FAILED(i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %314
  %329 = load i32, i32* %6, align 4
  store i32 %329, i32* %3, align 4
  br label %413

330:                                              ; preds = %314
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %332 = load i32*, i32** %5, align 8
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 3
  %335 = call i32 @create_regexp_constr(%struct.TYPE_14__* %331, i32* %332, i32* %334)
  store i32 %335, i32* %6, align 4
  %336 = load i32, i32* %6, align 4
  %337 = call i64 @FAILED(i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %330
  %340 = load i32, i32* %6, align 4
  store i32 %340, i32* %3, align 4
  br label %413

341:                                              ; preds = %330
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @RegExpW, align 4
  %346 = load i32, i32* @PROPF_WRITABLE, align 4
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @jsval_obj(i32 %349)
  %351 = call i32 @jsdisp_define_data_property(i32 %344, i32 %345, i32 %346, i32 %350)
  store i32 %351, i32* %6, align 4
  %352 = load i32, i32* %6, align 4
  %353 = call i64 @FAILED(i32 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %341
  %356 = load i32, i32* %6, align 4
  store i32 %356, i32* %3, align 4
  br label %413

357:                                              ; preds = %341
  %358 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %359 = load i32*, i32** %5, align 8
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 2
  %362 = call i32 @create_string_constr(%struct.TYPE_14__* %358, i32* %359, i32* %361)
  store i32 %362, i32* %6, align 4
  %363 = load i32, i32* %6, align 4
  %364 = call i64 @FAILED(i32 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %357
  %367 = load i32, i32* %6, align 4
  store i32 %367, i32* %3, align 4
  br label %413

368:                                              ; preds = %357
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @StringW, align 4
  %373 = load i32, i32* @PROPF_WRITABLE, align 4
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @jsval_obj(i32 %376)
  %378 = call i32 @jsdisp_define_data_property(i32 %371, i32 %372, i32 %373, i32 %377)
  store i32 %378, i32* %6, align 4
  %379 = load i32, i32* %6, align 4
  %380 = call i64 @FAILED(i32 %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %368
  %383 = load i32, i32* %6, align 4
  store i32 %383, i32* %3, align 4
  br label %413

384:                                              ; preds = %368
  %385 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %386 = load i32*, i32** %5, align 8
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 0
  %389 = call i32 @create_vbarray_constr(%struct.TYPE_14__* %385, i32* %386, i32* %388)
  store i32 %389, i32* %6, align 4
  %390 = load i32, i32* %6, align 4
  %391 = call i64 @FAILED(i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %384
  %394 = load i32, i32* %6, align 4
  store i32 %394, i32* %3, align 4
  br label %413

395:                                              ; preds = %384
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @VBArrayW, align 4
  %400 = load i32, i32* @PROPF_WRITABLE, align 4
  %401 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @jsval_obj(i32 %403)
  %405 = call i32 @jsdisp_define_data_property(i32 %398, i32 %399, i32 %400, i32 %404)
  store i32 %405, i32* %6, align 4
  %406 = load i32, i32* %6, align 4
  %407 = call i64 @FAILED(i32 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %411

409:                                              ; preds = %395
  %410 = load i32, i32* %6, align 4
  store i32 %410, i32* %3, align 4
  br label %413

411:                                              ; preds = %395
  %412 = load i32, i32* @S_OK, align 4
  store i32 %412, i32* %3, align 4
  br label %413

413:                                              ; preds = %411, %409, %393, %382, %366, %355, %339, %328, %312, %301, %285, %269, %253, %237, %221, %205, %189, %173, %164, %148, %137, %121, %110, %94, %83, %67, %56, %40, %29, %13
  %414 = load i32, i32* %3, align 4
  ret i32 %414
}

declare dso_local i32 @init_function_constr(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsdisp_define_data_property(i32, i32, i32, i32) #1

declare dso_local i32 @jsval_obj(i32) #1

declare dso_local i32 @create_object_constr(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @create_array_constr(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @create_bool_constr(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @create_date_constr(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @create_enumerator_constr(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @init_error_constr(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @create_number_constr(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @create_regexp_constr(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @create_string_constr(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @create_vbarray_constr(%struct.TYPE_14__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
