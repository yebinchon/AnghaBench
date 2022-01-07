; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg.c_ArrangeCtrlPositions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg.c_ArrangeCtrlPositions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64 }

@pshHelp = common dso_local global i32 0, align 4
@IDCANCEL = common dso_local global i32 0, align 4
@stc32 = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@GW_CHILD = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@GW_HWNDNEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"parent %s child %s stc32 %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @ArrangeCtrlPositions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ArrangeCtrlPositions(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca %struct.TYPE_6__, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %12, align 4
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @pshHelp, align 4
  %22 = call i64 @GetDlgItem(i64 %20, i32 %21)
  %23 = call i32 @GetWindowRect(i64 %22, %struct.TYPE_6__* %15)
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @IDCANCEL, align 4
  %26 = call i64 @GetDlgItem(i64 %24, i32 %25)
  %27 = call i32 @GetWindowRect(i64 %26, %struct.TYPE_6__* %16)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %29, %31
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %19, %3
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @GetClientRect(i64 %34, %struct.TYPE_6__* %9)
  %36 = load i32, i32* %12, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, %36
  store i32 %39, i32* %37, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @stc32, align 4
  %42 = call i64 @GetDlgItem(i64 %40, i32 %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %33
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @GetWindowRect(i64 %46, %struct.TYPE_6__* %11)
  %48 = load i64, i64* %4, align 8
  %49 = ptrtoint %struct.TYPE_6__* %11 to i32
  %50 = call i32 @MapWindowPoints(i32 0, i64 %48, i32 %49, i32 2)
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SWP_NOMOVE, align 4
  %57 = load i32, i32* @SWP_NOZORDER, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @SetWindowPos(i64 %51, i32 0, i64 0, i64 0, i32 %53, i32 %55, i32 %58)
  br label %62

60:                                               ; preds = %33
  %61 = call i32 @SetRectEmpty(%struct.TYPE_6__* %11)
  br label %62

62:                                               ; preds = %60, %45
  %63 = load i64, i64* %4, align 8
  %64 = load i32, i32* @GW_CHILD, align 4
  %65 = call i64 @GetWindow(i64 %63, i32 %64)
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %134, %62
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %138

69:                                               ; preds = %66
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %134

73:                                               ; preds = %69
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @GetWindowRect(i64 %74, %struct.TYPE_6__* %10)
  %76 = load i64, i64* %4, align 8
  %77 = ptrtoint %struct.TYPE_6__* %10 to i32
  %78 = call i32 @MapWindowPoints(i32 0, i64 %76, i32 %77, i32 2)
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %91
  store i64 %94, i64* %92, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, %97
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %88, %81, %73
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = icmp sge i64 %103, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %111
  store i64 %114, i64* %112, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %117, %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, %120
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %108, %101
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @SWP_NOSIZE, align 4
  %131 = load i32, i32* @SWP_NOZORDER, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @SetWindowPos(i64 %125, i32 0, i64 %127, i64 %129, i32 0, i32 0, i32 %132)
  br label %134

134:                                              ; preds = %124, %69
  %135 = load i64, i64* %7, align 8
  %136 = load i32, i32* @GW_HWNDNEXT, align 4
  %137 = call i64 @GetWindow(i64 %135, i32 %136)
  store i64 %137, i64* %7, align 8
  br label %66

138:                                              ; preds = %66
  %139 = load i64, i64* %5, align 8
  %140 = load i32, i32* @GW_CHILD, align 4
  %141 = call i64 @GetWindow(i64 %139, i32 %140)
  store i64 %141, i64* %7, align 8
  br label %142

142:                                              ; preds = %174, %138
  %143 = load i64, i64* %7, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %178

145:                                              ; preds = %142
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* %4, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %174

149:                                              ; preds = %145
  %150 = load i64, i64* %7, align 8
  %151 = call i32 @GetWindowRect(i64 %150, %struct.TYPE_6__* %10)
  %152 = load i64, i64* %5, align 8
  %153 = ptrtoint %struct.TYPE_6__* %10 to i32
  %154 = call i32 @MapWindowPoints(i32 0, i64 %152, i32 %153, i32 2)
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, %156
  store i64 %159, i64* %157, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, %161
  store i64 %164, i64* %162, align 8
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @SWP_NOSIZE, align 4
  %171 = load i32, i32* @SWP_NOZORDER, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @SetWindowPos(i64 %165, i32 0, i64 %167, i64 %169, i32 0, i32 0, i32 %172)
  br label %174

174:                                              ; preds = %149, %145
  %175 = load i64, i64* %7, align 8
  %176 = load i32, i32* @GW_HWNDNEXT, align 4
  %177 = call i64 @GetWindow(i64 %175, i32 %176)
  store i64 %177, i64* %7, align 8
  br label %142

178:                                              ; preds = %142
  %179 = load i64, i64* %5, align 8
  %180 = call i32 @GetClientRect(i64 %179, %struct.TYPE_6__* %9)
  %181 = load i64, i64* %4, align 8
  %182 = call i32 @GetClientRect(i64 %181, %struct.TYPE_6__* %10)
  %183 = call i32 @wine_dbgstr_rect(%struct.TYPE_6__* %9)
  %184 = call i32 @wine_dbgstr_rect(%struct.TYPE_6__* %10)
  %185 = call i32 @wine_dbgstr_rect(%struct.TYPE_6__* %11)
  %186 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %183, i32 %184, i32 %185)
  %187 = load i64, i64* %8, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %251

189:                                              ; preds = %178
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %195, %197
  %199 = icmp sgt i64 %192, %198
  br i1 %199, label %200, label %212

200:                                              ; preds = %189
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = sub nsw i64 %206, %208
  %210 = sub nsw i64 %203, %209
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %13, align 4
  br label %218

212:                                              ; preds = %189
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %214, %216
  store i32 %217, i32* %13, align 4
  br label %218

218:                                              ; preds = %212, %200
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = sub nsw i64 %224, %226
  %228 = icmp sgt i64 %221, %227
  br i1 %228, label %229, label %244

229:                                              ; preds = %218
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = sub nsw i64 %235, %237
  %239 = sub nsw i64 %232, %238
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = sub nsw i64 %239, %241
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %14, align 4
  br label %250

244:                                              ; preds = %218
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = sub nsw i32 %246, %248
  store i32 %249, i32* %14, align 4
  br label %250

250:                                              ; preds = %244, %229
  br label %256

251:                                              ; preds = %178
  store i32 0, i32* %13, align 4
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sub nsw i32 %253, %254
  store i32 %255, i32* %14, align 4
  br label %256

256:                                              ; preds = %251, %250
  %257 = load i64, i64* %5, align 8
  %258 = call i32 @GetWindowRect(i64 %257, %struct.TYPE_6__* %9)
  %259 = load i64, i64* %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = sub nsw i64 %262, %264
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %265, %267
  %269 = trunc i64 %268 to i32
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = sub nsw i64 %272, %274
  %276 = load i32, i32* %14, align 4
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %275, %277
  %279 = trunc i64 %278 to i32
  %280 = load i32, i32* @SWP_NOMOVE, align 4
  %281 = load i32, i32* @SWP_NOZORDER, align 4
  %282 = or i32 %280, %281
  %283 = call i32 @SetWindowPos(i64 %259, i32 0, i64 0, i64 0, i32 %269, i32 %279, i32 %282)
  ret void
}

declare dso_local i32 @GetWindowRect(i64, %struct.TYPE_6__*) #1

declare dso_local i64 @GetDlgItem(i64, i32) #1

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_6__*) #1

declare dso_local i32 @MapWindowPoints(i32, i64, i32, i32) #1

declare dso_local i32 @SetWindowPos(i64, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @SetRectEmpty(%struct.TYPE_6__*) #1

declare dso_local i64 @GetWindow(i64, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
