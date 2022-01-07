; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_MouseMove.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_MouseMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8*, i32, i64, i32, i64, i64, %struct.TYPE_18__, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_23__ = type { i16, i16 }
%struct.TYPE_20__ = type { i32, i32, i64, i64 }

@CCS_VERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"We are dragging but haven't got capture?!?\0A\00", align 1
@mindragx = common dso_local global i64 0, align 8
@mindragy = common dso_local global i64 0, align 8
@BEGIN_DRAG_ISSUED = common dso_local global i32 0, align 4
@RBN_BEGINDRAG = common dso_local global i32 0, align 4
@DRAW_CHEVRONHOT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RBHT_CHEVRON = common dso_local global i64 0, align 8
@TME_QUERY = common dso_local global i32 0, align 4
@TME_LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32)* @REBAR_MouseMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_MouseMove(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__, align 2
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @LOWORD(i32 %13)
  %15 = trunc i64 %14 to i16
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  store i16 %15, i16* %16, align 2
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @HIWORD(i32 %17)
  %19 = trunc i64 %18 to i16
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  store i16 %19, i16* %20, align 2
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp uge i8* %23, null
  br i1 %24, label %25, label %134

25:                                               ; preds = %2
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CCS_VERT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  br label %40

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %38 = load i16, i16* %37, align 2
  %39 = sext i16 %38 to i32
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %35, %32 ], [ %39, %36 ]
  store i32 %41, i32* %9, align 4
  %42 = call i64 (...) @GetCapture()
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %40
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call %struct.TYPE_22__* @REBAR_GetBand(%struct.TYPE_21__* %50, i8* %53)
  store %struct.TYPE_22__* %54, %struct.TYPE_22__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i64
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %57, %61
  %63 = call i64 @abs(i64 %62)
  %64 = load i64, i64* @mindragx, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i64
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %69, %73
  %75 = call i64 @abs(i64 %74)
  %76 = load i64, i64* @mindragy, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %236

79:                                               ; preds = %66, %49
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BEGIN_DRAG_ISSUED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %113, label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = load i32, i32* @RBN_BEGINDRAG, align 4
  %89 = call i64 @REBAR_Notify_NMREBAR(%struct.TYPE_21__* %87, i32 -1, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 7
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 6
  %102 = bitcast %struct.TYPE_18__* %99 to i8*
  %103 = bitcast %struct.TYPE_18__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 16, i1 false)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %105, align 8
  %106 = call i32 (...) @ReleaseCapture()
  store i32 0, i32* %3, align 4
  br label %236

107:                                              ; preds = %86
  %108 = load i32, i32* @BEGIN_DRAG_ISSUED, align 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %79
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %127, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %121, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %120, %113
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %129 = call i32 @REBAR_HandleUDDrag(%struct.TYPE_21__* %128, %struct.TYPE_23__* %7)
  br label %133

130:                                              ; preds = %120
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %132 = call i32 @REBAR_HandleLRDrag(%struct.TYPE_21__* %131, %struct.TYPE_23__* %7)
  br label %133

133:                                              ; preds = %130, %127
  br label %235

134:                                              ; preds = %2
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %136 = call i32 @REBAR_InternalHitTest(%struct.TYPE_21__* %135, %struct.TYPE_23__* %7, i64* %11, i8** %10)
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp sge i64 %139, 0
  br i1 %140, label %141, label %179

141:                                              ; preds = %134
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %149, label %179

149:                                              ; preds = %141
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = call %struct.TYPE_22__* @REBAR_GetBand(%struct.TYPE_21__* %150, i8* %154)
  store %struct.TYPE_22__* %155, %struct.TYPE_22__** %6, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @DRAW_CHEVRONHOT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %149
  %163 = load i32, i32* @DRAW_CHEVRONHOT, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  %174 = load i32, i32* @TRUE, align 4
  %175 = call i32 @InvalidateRect(i64 %171, i32* %173, i32 %174)
  br label %176

176:                                              ; preds = %162, %149
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 5
  store i64 -2, i64* %178, align 8
  br label %179

179:                                              ; preds = %176, %141, %134
  %180 = load i64, i64* %11, align 8
  %181 = load i64, i64* @RBHT_CHEVRON, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %230

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i32 24, i32* %184, align 8
  %185 = load i32, i32* @TME_QUERY, align 4
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  store i32 %185, i32* %186, align 4
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  store i64 %189, i64* %190, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  store i64 0, i64* %191, align 8
  %192 = call i32 @_TrackMouseEvent(%struct.TYPE_20__* %12)
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @TME_LEAVE, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %183
  %199 = load i32, i32* @TME_LEAVE, align 4
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  store i32 %199, i32* %200, align 4
  %201 = call i32 @_TrackMouseEvent(%struct.TYPE_20__* %12)
  br label %202

202:                                              ; preds = %198, %183
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %204 = load i8*, i8** %10, align 8
  %205 = call %struct.TYPE_22__* @REBAR_GetBand(%struct.TYPE_21__* %203, i8* %204)
  store %struct.TYPE_22__* %205, %struct.TYPE_22__** %6, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @DRAW_CHEVRONHOT, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %229, label %212

212:                                              ; preds = %202
  %213 = load i32, i32* @DRAW_CHEVRONHOT, align 4
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 4
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  %223 = load i32, i32* @TRUE, align 4
  %224 = call i32 @InvalidateRect(i64 %220, i32* %222, i32 %223)
  %225 = load i8*, i8** %10, align 8
  %226 = ptrtoint i8* %225 to i64
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 5
  store i64 %226, i64* %228, align 8
  br label %229

229:                                              ; preds = %212, %202
  br label %230

230:                                              ; preds = %229, %179
  %231 = load i8*, i8** %10, align 8
  %232 = ptrtoint i8* %231 to i64
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 4
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %230, %133
  store i32 0, i32* %3, align 4
  br label %236

236:                                              ; preds = %235, %91, %78
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i64 @GetCapture(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.TYPE_22__* @REBAR_GetBand(%struct.TYPE_21__*, i8*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @REBAR_Notify_NMREBAR(%struct.TYPE_21__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ReleaseCapture(...) #1

declare dso_local i32 @REBAR_HandleUDDrag(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @REBAR_HandleLRDrag(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @REBAR_InternalHitTest(%struct.TYPE_21__*, %struct.TYPE_23__*, i64*, i8**) #1

declare dso_local i32 @InvalidateRect(i64, i32*, i32) #1

declare dso_local i32 @_TrackMouseEvent(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
