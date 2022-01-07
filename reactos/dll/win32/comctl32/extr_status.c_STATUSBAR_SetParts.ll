; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_SetParts.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_SetParts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32, i64, i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%d,%p)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SBT_OWNERDRAW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TTM_GETTOOLCOUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"add tool %d\0A\00", align 1
@TTM_ADDTOOLW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"delete tool %d\0A\00", align 1
@TTM_DELTOOLW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, i64*)* @STATUSBAR_SetParts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @STATUSBAR_SetParts(%struct.TYPE_10__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %14, i64* %15)
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %4, align 4
  br label %255

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %21
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %62, %33
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SBT_OWNERDRAW, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %41
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = call i32 @Free(%struct.TYPE_11__* %59)
  br label %61

61:                                               ; preds = %52, %41
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %37

65:                                               ; preds = %37
  br label %111

66:                                               ; preds = %21
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %66
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = mul i64 24, %75
  %77 = trunc i64 %76 to i32
  %78 = call %struct.TYPE_11__* @Alloc(i32 %77)
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %8, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %80 = icmp ne %struct.TYPE_11__* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %4, align 4
  br label %255

83:                                               ; preds = %72
  store i64 0, i64* %9, align 8
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i64 %90
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 %95
  %97 = bitcast %struct.TYPE_11__* %91 to i8*
  %98 = bitcast %struct.TYPE_11__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 24, i1 false)
  br label %99

99:                                               ; preds = %88
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %9, align 8
  br label %84

102:                                              ; preds = %84
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = call i32 @Free(%struct.TYPE_11__* %105)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %109, align 8
  br label %110

110:                                              ; preds = %102, %66
  br label %111

111:                                              ; preds = %110, %65
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %147

117:                                              ; preds = %111
  store i64 0, i64* %9, align 8
  br label %118

118:                                              ; preds = %137, %117
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %7, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %129, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  br label %140

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %9, align 8
  br label %118

140:                                              ; preds = %135, %118
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* %10, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @TRUE, align 4
  store i32 %145, i32* %4, align 4
  br label %255

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146, %111
  store i64 0, i64* %9, align 8
  br label %148

148:                                              ; preds = %165, %147
  %149 = load i64, i64* %9, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ult i64 %149, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %148
  %155 = load i64*, i64** %7, align 8
  %156 = load i64, i64* %9, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = load i64, i64* %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  store i64 %158, i64* %164, align 8
  br label %165

165:                                              ; preds = %154
  %166 = load i64, i64* %9, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %9, align 8
  br label %148

168:                                              ; preds = %148
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %246

173:                                              ; preds = %168
  store i32 0, i32* %13, align 4
  %174 = call i32 @ZeroMemory(%struct.TYPE_9__* %12, i32 32)
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 32, i32* %175, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store i32 %178, i32* %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i32* %13, i32** %180, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @TTM_GETTOOLCOUNT, align 4
  %185 = call i64 @SendMessageW(i64 %183, i32 %184, i32 0, i32 0)
  store i64 %185, i64* %11, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ult i64 %186, %189
  br i1 %190, label %191, label %214

191:                                              ; preds = %173
  %192 = load i64, i64* %11, align 8
  store i64 %192, i64* %9, align 8
  br label %193

193:                                              ; preds = %210, %191
  %194 = load i64, i64* %9, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ult i64 %194, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %193
  %200 = load i64, i64* %9, align 8
  %201 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %200)
  %202 = load i64, i64* %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i64 %202, i64* %203, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* @TTM_ADDTOOLW, align 4
  %208 = ptrtoint %struct.TYPE_9__* %12 to i32
  %209 = call i64 @SendMessageW(i64 %206, i32 %207, i32 0, i32 %208)
  br label %210

210:                                              ; preds = %199
  %211 = load i64, i64* %9, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %9, align 8
  br label %193

213:                                              ; preds = %193
  br label %245

214:                                              ; preds = %173
  %215 = load i64, i64* %11, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ugt i64 %215, %218
  br i1 %219, label %220, label %244

220:                                              ; preds = %214
  %221 = load i64, i64* %11, align 8
  %222 = sub i64 %221, 1
  store i64 %222, i64* %9, align 8
  br label %223

223:                                              ; preds = %240, %220
  %224 = load i64, i64* %9, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp uge i64 %224, %227
  br i1 %228, label %229, label %243

229:                                              ; preds = %223
  %230 = load i64, i64* %9, align 8
  %231 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %230)
  %232 = load i64, i64* %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i64 %232, i64* %233, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* @TTM_DELTOOLW, align 4
  %238 = ptrtoint %struct.TYPE_9__* %12 to i32
  %239 = call i64 @SendMessageW(i64 %236, i32 %237, i32 0, i32 %238)
  br label %240

240:                                              ; preds = %229
  %241 = load i64, i64* %9, align 8
  %242 = add i64 %241, -1
  store i64 %242, i64* %9, align 8
  br label %223

243:                                              ; preds = %223
  br label %244

244:                                              ; preds = %243, %214
  br label %245

245:                                              ; preds = %244, %213
  br label %246

246:                                              ; preds = %245, %168
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %248 = call i32 @STATUSBAR_SetPartBounds(%struct.TYPE_10__* %247)
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @FALSE, align 4
  %253 = call i32 @InvalidateRect(i32 %251, i32* null, i32 %252)
  %254 = load i32, i32* @TRUE, align 4
  store i32 %254, i32* %4, align 4
  br label %255

255:                                              ; preds = %246, %144, %81, %19
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i32 @Free(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @Alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ZeroMemory(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i32 @STATUSBAR_SetPartBounds(%struct.TYPE_10__*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
