; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_WrapToolbar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_WrapToolbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64, i32, i64, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i32, i64 }

@TBSTYLE_WRAPABLE = common dso_local global i32 0, align 4
@TBSTYLE_EX_VERTICAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"start ButtonWidth=%d, BitmapWidth=%d, width=%d, nIndent=%d\0A\00", align 1
@TBSTATE_WRAP = common dso_local global i32 0, align 4
@TBSTATE_HIDDEN = common dso_local global i32 0, align 4
@BTNS_SEP = common dso_local global i32 0, align 4
@CCS_VERT = common dso_local global i32 0, align 4
@SEPARATOR_WIDTH = common dso_local global i64 0, align 8
@DDARROW_WIDTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"wrap point 1 btn %d style %02x\0A\00", align 1
@BTNS_DROPDOWN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"wrap point 2 btn %d style %02x, x=%d, cx=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"wrap point 3 btn %d style %02x, x=%d, cx=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"wrap point 4 btn %d style %02x, x=%d, cx=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"wrap point 5 btn %d style %02x, x=%d, cx=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"wrap point 6 btn %d style %02x, x=%d, cx=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @TOOLBAR_WrapToolbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLBAR_WrapToolbar(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TBSTYLE_WRAPABLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TBSTYLE_EX_VERTICAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %478

25:                                               ; preds = %17, %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %3, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %4, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %35, %39
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %9, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i8*, i64, i32, ...) @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %47, i64 %48, i64 %51)
  store i64 0, i64* %6, align 8
  br label %53

53:                                               ; preds = %475, %25
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %478

59:                                               ; preds = %53
  %60 = load i32, i32* @TBSTATE_WRAP, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %61
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TBSTATE_HIDDEN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  br label %475

77:                                               ; preds = %59
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %5, align 8
  br label %128

90:                                               ; preds = %77
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BTNS_SEP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %90
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CCS_VERT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %99
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = load i64, i64* %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  br label %121

119:                                              ; preds = %106
  %120 = load i64, i64* @SEPARATOR_WIDTH, align 8
  br label %121

121:                                              ; preds = %119, %113
  %122 = phi i64 [ %118, %113 ], [ %120, %119 ]
  store i64 %122, i64* %5, align 8
  br label %127

123:                                              ; preds = %99, %90
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %5, align 8
  br label %127

127:                                              ; preds = %123, %121
  br label %128

128:                                              ; preds = %127, %84
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = load i64, i64* %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %146, label %135

135:                                              ; preds = %128
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = load i64, i64* %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %138
  %140 = call i64 @button_has_ddarrow(%struct.TYPE_8__* %136, %struct.TYPE_9__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i64, i64* @DDARROW_WIDTH, align 8
  %144 = load i64, i64* %5, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %5, align 8
  br label %146

146:                                              ; preds = %142, %135, %128
  %147 = load i64, i64* %9, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %196

149:                                              ; preds = %146
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = load i64, i64* %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @BTNS_SEP, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %196

158:                                              ; preds = %149
  %159 = load i64, i64* %6, align 8
  %160 = add i64 %159, 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ult i64 %160, %163
  br i1 %164, label %165, label %196

165:                                              ; preds = %158
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %167 = load i64, i64* %6, align 8
  %168 = add i64 %167, 1
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @BTNS_SEP, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %165
  %176 = load i64, i64* %6, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %178 = load i64, i64* %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i8*, i64, i32, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %176, i32 %181)
  %183 = load i32, i32* @TBSTATE_WRAP, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %185 = load i64, i64* %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %183
  store i32 %189, i32* %187, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %4, align 8
  %193 = load i64, i64* %6, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %6, align 8
  %195 = load i64, i64* @FALSE, align 8
  store i64 %195, i64* %9, align 8
  br label %475

196:                                              ; preds = %165, %158, %149, %146
  %197 = load i64, i64* %4, align 8
  %198 = load i64, i64* %5, align 8
  %199 = add i64 %197, %198
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = sub i64 %202, %206
  %208 = udiv i64 %207, 2
  %209 = sub i64 %199, %208
  %210 = load i64, i64* %8, align 8
  %211 = icmp ugt i64 %209, %210
  br i1 %211, label %222, label %212

212:                                              ; preds = %196
  %213 = load i64, i64* %4, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %213, %216
  br i1 %217, label %218, label %461

218:                                              ; preds = %212
  %219 = load i64, i64* %5, align 8
  %220 = load i64, i64* %8, align 8
  %221 = icmp ugt i64 %219, %220
  br i1 %221, label %222, label %461

222:                                              ; preds = %218, %196
  %223 = load i64, i64* @FALSE, align 8
  store i64 %223, i64* %10, align 8
  br label %224

224:                                              ; preds = %259, %222
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %226 = load i64, i64* %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @BTNS_SEP, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %224
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %235 = load i64, i64* %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @BTNS_DROPDOWN, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %233, %224
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %244 = load i64, i64* %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @TBSTATE_HIDDEN, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %242, %233
  %252 = load i64, i64* %6, align 8
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 5
  %255 = load i64, i64* %254, align 8
  %256 = icmp ult i64 %252, %255
  br label %257

257:                                              ; preds = %251, %242
  %258 = phi i1 [ false, %242 ], [ %256, %251 ]
  br i1 %258, label %259, label %263

259:                                              ; preds = %257
  %260 = load i64, i64* %6, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %6, align 8
  %262 = load i64, i64* @TRUE, align 8
  store i64 %262, i64* %10, align 8
  br label %224

263:                                              ; preds = %257
  %264 = load i64, i64* %10, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %295

266:                                              ; preds = %263
  %267 = load i64, i64* %6, align 8
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  %271 = icmp ult i64 %267, %270
  br i1 %271, label %272, label %295

272:                                              ; preds = %266
  %273 = load i64, i64* %6, align 8
  %274 = add i64 %273, -1
  store i64 %274, i64* %6, align 8
  %275 = load i64, i64* %6, align 8
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %277 = load i64, i64* %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = load i64, i64* %4, align 8
  %282 = load i64, i64* %5, align 8
  %283 = call i32 (i8*, i64, i32, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %275, i32 %280, i64 %281, i64 %282)
  %284 = load i32, i32* @TBSTATE_WRAP, align 4
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %286 = load i64, i64* %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = or i32 %289, %284
  store i32 %290, i32* %288, align 8
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %4, align 8
  %294 = load i64, i64* @FALSE, align 8
  store i64 %294, i64* %9, align 8
  br label %475

295:                                              ; preds = %266, %263
  %296 = load i64, i64* %6, align 8
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 5
  %299 = load i64, i64* %298, align 8
  %300 = icmp uge i64 %296, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %295
  br label %478

302:                                              ; preds = %295
  br label %303

303:                                              ; preds = %302
  %304 = load i64, i64* %6, align 8
  %305 = sub i64 %304, 1
  store i64 %305, i64* %7, align 8
  br label %306

306:                                              ; preds = %363, %303
  %307 = load i64, i64* %7, align 8
  %308 = icmp uge i64 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %306
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %311 = load i64, i64* %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @TBSTATE_WRAP, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  %318 = xor i1 %317, true
  br label %319

319:                                              ; preds = %309, %306
  %320 = phi i1 [ false, %306 ], [ %318, %309 ]
  br i1 %320, label %321, label %366

321:                                              ; preds = %319
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %323 = load i64, i64* %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @BTNS_SEP, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %362

330:                                              ; preds = %321
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %332 = load i64, i64* %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @TBSTATE_HIDDEN, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %362, label %339

339:                                              ; preds = %330
  %340 = load i64, i64* @TRUE, align 8
  store i64 %340, i64* %10, align 8
  %341 = load i64, i64* %7, align 8
  store i64 %341, i64* %6, align 8
  %342 = load i64, i64* %6, align 8
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %344 = load i64, i64* %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = load i64, i64* %4, align 8
  %349 = load i64, i64* %5, align 8
  %350 = call i32 (i8*, i64, i32, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %342, i32 %347, i64 %348, i64 %349)
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %4, align 8
  %354 = load i32, i32* @TBSTATE_WRAP, align 4
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %356 = load i64, i64* %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = or i32 %359, %354
  store i32 %360, i32* %358, align 8
  %361 = load i64, i64* @FALSE, align 8
  store i64 %361, i64* %9, align 8
  br label %366

362:                                              ; preds = %330, %321
  br label %363

363:                                              ; preds = %362
  %364 = load i64, i64* %7, align 8
  %365 = add i64 %364, -1
  store i64 %365, i64* %7, align 8
  br label %306

366:                                              ; preds = %339, %319
  %367 = load i64, i64* %10, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %424, label %369

369:                                              ; preds = %366
  %370 = load i64, i64* %6, align 8
  %371 = sub i64 %370, 1
  store i64 %371, i64* %7, align 8
  br label %372

372:                                              ; preds = %420, %369
  %373 = load i64, i64* %7, align 8
  %374 = icmp uge i64 %373, 0
  br i1 %374, label %375, label %385

375:                                              ; preds = %372
  %376 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %377 = load i64, i64* %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @TBSTATE_WRAP, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  %384 = xor i1 %383, true
  br label %385

385:                                              ; preds = %375, %372
  %386 = phi i1 [ false, %372 ], [ %384, %375 ]
  br i1 %386, label %387, label %423

387:                                              ; preds = %385
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %389 = load i64, i64* %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @TBSTATE_HIDDEN, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %387
  br label %420

397:                                              ; preds = %387
  %398 = load i64, i64* @TRUE, align 8
  store i64 %398, i64* %10, align 8
  %399 = load i64, i64* %7, align 8
  store i64 %399, i64* %6, align 8
  %400 = load i64, i64* %6, align 8
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %402 = load i64, i64* %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 8
  %406 = load i64, i64* %4, align 8
  %407 = load i64, i64* %5, align 8
  %408 = call i32 (i8*, i64, i32, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %400, i32 %405, i64 %406, i64 %407)
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %4, align 8
  %412 = load i32, i32* @TBSTATE_WRAP, align 4
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %414 = load i64, i64* %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = or i32 %417, %412
  store i32 %418, i32* %416, align 8
  %419 = load i64, i64* @TRUE, align 8
  store i64 %419, i64* %9, align 8
  br label %423

420:                                              ; preds = %396
  %421 = load i64, i64* %7, align 8
  %422 = add i64 %421, -1
  store i64 %422, i64* %7, align 8
  br label %372

423:                                              ; preds = %397, %385
  br label %424

424:                                              ; preds = %423, %366
  %425 = load i64, i64* %10, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %460, label %427

427:                                              ; preds = %424
  %428 = load i64, i64* %6, align 8
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %430 = load i64, i64* %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = load i64, i64* %4, align 8
  %435 = load i64, i64* %5, align 8
  %436 = call i32 (i8*, i64, i32, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %428, i32 %433, i64 %434, i64 %435)
  %437 = load i32, i32* @TBSTATE_WRAP, align 4
  %438 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %439 = load i64, i64* %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = or i32 %442, %437
  store i32 %443, i32* %441, align 8
  %444 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 2
  %446 = load i64, i64* %445, align 8
  store i64 %446, i64* %4, align 8
  %447 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %448 = load i64, i64* %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @BTNS_SEP, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %457

455:                                              ; preds = %427
  %456 = load i64, i64* @FALSE, align 8
  store i64 %456, i64* %9, align 8
  br label %459

457:                                              ; preds = %427
  %458 = load i64, i64* @TRUE, align 8
  store i64 %458, i64* %9, align 8
  br label %459

459:                                              ; preds = %457, %455
  br label %460

460:                                              ; preds = %459, %424
  br label %474

461:                                              ; preds = %218, %212
  %462 = load i64, i64* %6, align 8
  %463 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %464 = load i64, i64* %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %463, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 8
  %468 = load i64, i64* %4, align 8
  %469 = load i64, i64* %5, align 8
  %470 = call i32 (i8*, i64, i32, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %462, i32 %467, i64 %468, i64 %469)
  %471 = load i64, i64* %5, align 8
  %472 = load i64, i64* %4, align 8
  %473 = add i64 %472, %471
  store i64 %473, i64* %4, align 8
  br label %474

474:                                              ; preds = %461, %460
  br label %475

475:                                              ; preds = %474, %272, %175, %76
  %476 = load i64, i64* %6, align 8
  %477 = add i64 %476, 1
  store i64 %477, i64* %6, align 8
  br label %53

478:                                              ; preds = %24, %301, %53
  ret void
}

declare dso_local i32 @TRACE(i8*, i64, i32, ...) #1

declare dso_local i64 @button_has_ddarrow(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
