; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_DeleteItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_DeleteItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__* }
%struct.TYPE_32__ = type { i32, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__* }

@FALSE = common dso_local global i64 0, align 8
@TVI_ROOT = common dso_local global %struct.TYPE_31__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"TVI_ROOT\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%p (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"newSelection = %p\0A\00", align 1
@TVGN_CARET = common dso_local global i32 0, align 4
@TVC_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_32__*, %struct.TYPE_31__*)* @TREEVIEW_DeleteItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TREEVIEW_DeleteItem(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %7, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %9, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %10, align 8
  %12 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %13 = load %struct.TYPE_31__*, %struct.TYPE_31__** @TVI_ROOT, align 8
  %14 = icmp eq %struct.TYPE_31__* %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %17 = icmp ne %struct.TYPE_31__* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %15, %2
  %19 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  store %struct.TYPE_31__* %22, %struct.TYPE_31__** %8, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %6, align 8
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %25 = call i32 @TREEVIEW_RemoveTree(%struct.TYPE_32__* %24)
  br label %147

26:                                               ; preds = %15
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %29 = call i64 @TREEVIEW_ValidItem(%struct.TYPE_32__* %27, %struct.TYPE_31__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %3, align 8
  br label %242

33:                                               ; preds = %26
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %36 = call i32 @TREEVIEW_ItemName(%struct.TYPE_31__* %35)
  %37 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_31__* %34, i32 %36)
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %39, align 8
  store %struct.TYPE_31__* %40, %struct.TYPE_31__** %8, align 8
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %42 = call i64 @ISVISIBLE(%struct.TYPE_31__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %47 = call %struct.TYPE_31__* @TREEVIEW_GetPrevListItem(%struct.TYPE_32__* %45, %struct.TYPE_31__* %46)
  store %struct.TYPE_31__* %47, %struct.TYPE_31__** %9, align 8
  %48 = load i64, i64* @TRUE, align 8
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %44, %33
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %51, align 8
  %53 = icmp ne %struct.TYPE_31__* %52, null
  br i1 %53, label %54, label %96

54:                                               ; preds = %49
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %57, align 8
  %59 = icmp eq %struct.TYPE_31__* %55, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %63, align 8
  %65 = call i64 @TREEVIEW_IsChildOf(%struct.TYPE_31__* %61, %struct.TYPE_31__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %60, %54
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %69, align 8
  %71 = icmp ne %struct.TYPE_31__* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %74, align 8
  store %struct.TYPE_31__* %75, %struct.TYPE_31__** %6, align 8
  br label %93

76:                                               ; preds = %67
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %78, align 8
  %80 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %81, align 8
  %83 = icmp ne %struct.TYPE_31__* %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %86, align 8
  store %struct.TYPE_31__* %87, %struct.TYPE_31__** %6, align 8
  br label %92

88:                                               ; preds = %76
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %90, align 8
  store %struct.TYPE_31__* %91, %struct.TYPE_31__** %6, align 8
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %72
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %95 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_31__* %94)
  br label %96

96:                                               ; preds = %93, %60, %49
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %98, align 8
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %101 = icmp eq %struct.TYPE_31__* %99, %100
  br i1 %101, label %102, label %139

102:                                              ; preds = %96
  %103 = load i64, i64* @TRUE, align 8
  store i64 %103, i64* %10, align 8
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %105, align 8
  %107 = icmp ne %struct.TYPE_31__* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %110, align 8
  store %struct.TYPE_31__* %111, %struct.TYPE_31__** %7, align 8
  br label %135

112:                                              ; preds = %102
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %114, align 8
  %116 = icmp ne %struct.TYPE_31__* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %119, align 8
  store %struct.TYPE_31__* %120, %struct.TYPE_31__** %7, align 8
  br label %134

121:                                              ; preds = %112
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %123, align 8
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %126, align 8
  %128 = icmp ne %struct.TYPE_31__* %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %121
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %131, align 8
  store %struct.TYPE_31__* %132, %struct.TYPE_31__** %7, align 8
  br label %133

133:                                              ; preds = %129, %121
  br label %134

134:                                              ; preds = %133, %117
  br label %135

135:                                              ; preds = %134, %108
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %137 = load i64, i64* @TRUE, align 8
  %138 = call i32 @TREEVIEW_SetFirstVisible(%struct.TYPE_32__* %136, %struct.TYPE_31__* null, i64 %137)
  br label %143

139:                                              ; preds = %96
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %141, align 8
  store %struct.TYPE_31__* %142, %struct.TYPE_31__** %7, align 8
  br label %143

143:                                              ; preds = %139, %135
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %146 = call i32 @TREEVIEW_RemoveItem(%struct.TYPE_32__* %144, %struct.TYPE_31__* %145)
  br label %147

147:                                              ; preds = %143, %18
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %149, align 8
  %151 = icmp ne %struct.TYPE_31__* %150, null
  br i1 %151, label %167, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %154 = icmp ne %struct.TYPE_31__* %153, null
  br i1 %154, label %155, label %167

155:                                              ; preds = %152
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %158 = call i64 @TREEVIEW_ValidItem(%struct.TYPE_32__* %156, %struct.TYPE_31__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %162 = load i32, i32* @TVGN_CARET, align 4
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %164 = load i32, i32* @TVC_UNKNOWN, align 4
  %165 = call i32 @TREEVIEW_DoSelectItem(%struct.TYPE_32__* %161, i32 %162, %struct.TYPE_31__* %163, i32 %164)
  br label %166

166:                                              ; preds = %160, %155
  br label %167

167:                                              ; preds = %166, %152, %147
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %170, align 8
  %172 = call i64 @TREEVIEW_ValidItem(%struct.TYPE_32__* %168, %struct.TYPE_31__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %167
  %175 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %175, i32 0, i32 3
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %176, align 8
  br label %177

177:                                              ; preds = %174, %167
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %180, align 8
  %182 = call i64 @TREEVIEW_ValidItem(%struct.TYPE_32__* %178, %struct.TYPE_31__* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %177
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %185, i32 0, i32 2
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %186, align 8
  br label %187

187:                                              ; preds = %184, %177
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %190 = call i64 @TREEVIEW_ValidItem(%struct.TYPE_32__* %188, %struct.TYPE_31__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %187
  %193 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %196, align 8
  store %struct.TYPE_31__* %197, %struct.TYPE_31__** %7, align 8
  br label %198

198:                                              ; preds = %192, %187
  %199 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %200 = call i32 @TREEVIEW_VerifyTree(%struct.TYPE_32__* %199)
  %201 = load i64, i64* %10, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %206 = load i64, i64* @TRUE, align 8
  %207 = call i32 @TREEVIEW_SetFirstVisible(%struct.TYPE_32__* %204, %struct.TYPE_31__* %205, i64 %206)
  br label %208

208:                                              ; preds = %203, %198
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %208
  %214 = load i64, i64* @TRUE, align 8
  store i64 %214, i64* %3, align 8
  br label %242

215:                                              ; preds = %208
  %216 = load i64, i64* %10, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %215
  %219 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %220 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %221 = call i32 @TREEVIEW_RecalculateVisibleOrder(%struct.TYPE_32__* %219, %struct.TYPE_31__* %220)
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %223 = call i32 @TREEVIEW_UpdateScrollBars(%struct.TYPE_32__* %222)
  %224 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %225 = call i32 @TREEVIEW_Invalidate(%struct.TYPE_32__* %224, %struct.TYPE_31__* null)
  br label %240

226:                                              ; preds = %215
  %227 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %228 = call i64 @ISVISIBLE(%struct.TYPE_31__* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %226
  %231 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %232 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %233 = call i32 @TREEVIEW_HasChildren(%struct.TYPE_32__* %231, %struct.TYPE_31__* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %230
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %237 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %238 = call i32 @TREEVIEW_Invalidate(%struct.TYPE_32__* %236, %struct.TYPE_31__* %237)
  br label %239

239:                                              ; preds = %235, %230, %226
  br label %240

240:                                              ; preds = %239, %218
  %241 = load i64, i64* @TRUE, align 8
  store i64 %241, i64* %3, align 8
  br label %242

242:                                              ; preds = %240, %213, %31
  %243 = load i64, i64* %3, align 8
  ret i64 %243
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @TREEVIEW_RemoveTree(%struct.TYPE_32__*) #1

declare dso_local i64 @TREEVIEW_ValidItem(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @TREEVIEW_ItemName(%struct.TYPE_31__*) #1

declare dso_local i64 @ISVISIBLE(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @TREEVIEW_GetPrevListItem(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i64 @TREEVIEW_IsChildOf(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @TREEVIEW_SetFirstVisible(%struct.TYPE_32__*, %struct.TYPE_31__*, i64) #1

declare dso_local i32 @TREEVIEW_RemoveItem(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @TREEVIEW_DoSelectItem(%struct.TYPE_32__*, i32, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @TREEVIEW_VerifyTree(%struct.TYPE_32__*) #1

declare dso_local i32 @TREEVIEW_RecalculateVisibleOrder(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @TREEVIEW_UpdateScrollBars(%struct.TYPE_32__*) #1

declare dso_local i32 @TREEVIEW_Invalidate(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @TREEVIEW_HasChildren(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
