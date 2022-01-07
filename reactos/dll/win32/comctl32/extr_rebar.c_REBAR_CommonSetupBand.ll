; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_CommonSetupBand.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_CommonSetupBand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@RBBIM_STYLE = common dso_local global i32 0, align 4
@RBBIM_COLORS = common dso_local global i32 0, align 4
@RBBIM_IMAGE = common dso_local global i32 0, align 4
@RBBIM_CHILD = common dso_local global i32 0, align 4
@SW_SHOWNOACTIVATE = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"child: %p  prev parent: %p\0A\00", align 1
@RBBIM_CHILDSIZE = common dso_local global i32 0, align 4
@REBARBANDINFOA_V6_SIZE = common dso_local global i64 0, align 8
@RBBS_VARIABLEHEIGHT = common dso_local global i32 0, align 4
@RBBIM_SIZE = common dso_local global i32 0, align 4
@RBBIM_BACKGROUND = common dso_local global i32 0, align 4
@RBBIM_ID = common dso_local global i32 0, align 4
@RBBIM_IDEALSIZE = common dso_local global i32 0, align 4
@RBBIM_LPARAM = common dso_local global i32 0, align 4
@RBBIM_HEADERSIZE = common dso_local global i32 0, align 4
@RBBS_UNDOC_FIXEDHEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, %struct.TYPE_6__*)* @REBAR_CommonSetupBand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_CommonSetupBand(i32 %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RBBIM_STYLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @RBBIM_STYLE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %29, %21, %3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RBBIM_COLORS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %38
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %53, %45
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* @RBBIM_COLORS, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %61, %53, %38
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @RBBIM_IMAGE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %75
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @RBBIM_IMAGE, align 4
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %90, %82, %75
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @RBBIM_CHILD, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %155

106:                                              ; preds = %99
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %114, label %155

114:                                              ; preds = %106
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %114
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i64 @SetParent(i64 %127, i32 %128)
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 17
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @SW_SHOWNOACTIVATE, align 4
  %136 = load i32, i32* @SW_SHOWNORMAL, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @ShowWindow(i64 %134, i32 %137)
  br label %151

139:                                              ; preds = %114
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 17
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %142, i64 %145)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 5
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 17
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %139, %119
  %152 = load i32, i32* @RBBIM_CHILD, align 4
  %153 = load i32, i32* %7, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %151, %106, %99
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @RBBIM_CHILDSIZE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %291

162:                                              ; preds = %155
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %165, %168
  br i1 %169, label %236, label %170

170:                                              ; preds = %162
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 7
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 7
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %173, %176
  br i1 %177, label %236, label %178

178:                                              ; preds = %170
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 8
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @REBARBANDINFOA_V6_SIZE, align 8
  %183 = icmp sge i64 %181, %182
  br i1 %183, label %184, label %215

184:                                              ; preds = %178
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @RBBS_VARIABLEHEIGHT, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %215

191:                                              ; preds = %184
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 8
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 9
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %194, %197
  br i1 %198, label %236, label %199

199:                                              ; preds = %191
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 9
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 10
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %202, %205
  br i1 %206, label %236, label %207

207:                                              ; preds = %199
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 10
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 11
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %210, %213
  br i1 %214, label %236, label %215

215:                                              ; preds = %207, %184, %178
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 8
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @REBARBANDINFOA_V6_SIZE, align 8
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %221, label %291

221:                                              ; preds = %215
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 8
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %236, label %226

226:                                              ; preds = %221
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 9
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %226
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 10
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %291

236:                                              ; preds = %231, %226, %221, %207, %199, %191, %170, %162
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 6
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 6
  store i64 %239, i64* %241, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 7
  store i64 %244, i64* %246, align 8
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 8
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @REBARBANDINFOA_V6_SIZE, align 8
  %251 = icmp sge i64 %249, %250
  br i1 %251, label %252, label %277

252:                                              ; preds = %236
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @RBBS_VARIABLEHEIGHT, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %277

259:                                              ; preds = %252
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 10
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 9
  store i32 %262, i32* %264, align 8
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 11
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 10
  store i64 %267, i64* %269, align 8
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 9
  %273 = load i64, i64* %272, align 8
  %274 = call i64 @round_child_height(%struct.TYPE_6__* %270, i64 %273)
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 8
  store i64 %274, i64* %276, align 8
  br label %287

277:                                              ; preds = %252, %236
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 7
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 8
  store i64 %280, i64* %282, align 8
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 9
  store i32 2147483647, i32* %284, align 8
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 10
  store i64 0, i64* %286, align 8
  br label %287

287:                                              ; preds = %277, %259
  %288 = load i32, i32* @RBBIM_CHILDSIZE, align 4
  %289 = load i32, i32* %7, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %7, align 4
  br label %291

291:                                              ; preds = %287, %231, %215, %155
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @RBBIM_SIZE, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %315

298:                                              ; preds = %291
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 11
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 12
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %301, %304
  br i1 %305, label %306, label %315

306:                                              ; preds = %298
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 12
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 11
  store i64 %309, i64* %311, align 8
  %312 = load i32, i32* @RBBIM_SIZE, align 4
  %313 = load i32, i32* %7, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %7, align 4
  br label %315

315:                                              ; preds = %306, %298, %291
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @RBBIM_BACKGROUND, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %339

322:                                              ; preds = %315
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 12
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 13
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %325, %328
  br i1 %329, label %330, label %339

330:                                              ; preds = %322
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 13
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 12
  store i64 %333, i64* %335, align 8
  %336 = load i32, i32* @RBBIM_BACKGROUND, align 4
  %337 = load i32, i32* %7, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %7, align 4
  br label %339

339:                                              ; preds = %330, %322, %315
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @RBBIM_ID, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %363

346:                                              ; preds = %339
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 13
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 14
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %349, %352
  br i1 %353, label %354, label %363

354:                                              ; preds = %346
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 14
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 13
  store i64 %357, i64* %359, align 8
  %360 = load i32, i32* @RBBIM_ID, align 4
  %361 = load i32, i32* %7, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %7, align 4
  br label %363

363:                                              ; preds = %354, %346, %339
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 8
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @REBARBANDINFOA_V6_SIZE, align 8
  %368 = icmp sge i64 %366, %367
  br i1 %368, label %369, label %447

369:                                              ; preds = %363
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @RBBIM_IDEALSIZE, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %393

376:                                              ; preds = %369
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 14
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 15
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %379, %382
  br i1 %383, label %384, label %393

384:                                              ; preds = %376
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 15
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 14
  store i64 %387, i64* %389, align 8
  %390 = load i32, i32* @RBBIM_IDEALSIZE, align 4
  %391 = load i32, i32* %7, align 4
  %392 = or i32 %391, %390
  store i32 %392, i32* %7, align 4
  br label %393

393:                                              ; preds = %384, %376, %369
  %394 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @RBBIM_LPARAM, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %417

400:                                              ; preds = %393
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 15
  %403 = load i64, i64* %402, align 8
  %404 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 16
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %403, %406
  br i1 %407, label %408, label %417

408:                                              ; preds = %400
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i32 0, i32 16
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 15
  store i64 %411, i64* %413, align 8
  %414 = load i32, i32* @RBBIM_LPARAM, align 4
  %415 = load i32, i32* %7, align 4
  %416 = or i32 %415, %414
  store i32 %416, i32* %7, align 4
  br label %417

417:                                              ; preds = %408, %400, %393
  %418 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @RBBIM_HEADERSIZE, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %446

424:                                              ; preds = %417
  %425 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %425, i32 0, i32 16
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i32 0, i32 17
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %427, %430
  br i1 %431, label %432, label %446

432:                                              ; preds = %424
  %433 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 17
  %435 = load i64, i64* %434, align 8
  %436 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 16
  store i64 %435, i64* %437, align 8
  %438 = load i32, i32* @RBBS_UNDOC_FIXEDHEADER, align 4
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = or i32 %441, %438
  store i32 %442, i32* %440, align 4
  %443 = load i32, i32* @RBBIM_HEADERSIZE, align 4
  %444 = load i32, i32* %7, align 4
  %445 = or i32 %444, %443
  store i32 %445, i32* %7, align 4
  br label %446

446:                                              ; preds = %432, %424, %417
  br label %447

447:                                              ; preds = %446, %363
  %448 = load i32, i32* %7, align 4
  ret i32 %448
}

declare dso_local i64 @SetParent(i64, i32) #1

declare dso_local i32 @ShowWindow(i64, i32) #1

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i64 @round_child_height(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
