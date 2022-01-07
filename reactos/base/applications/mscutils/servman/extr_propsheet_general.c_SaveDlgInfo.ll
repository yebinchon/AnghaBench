; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_general.c_SaveDlgInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_general.c_SaveDlgInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, i8*, i8*, i8* }

@ProcessHeap = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@SERVICE_NO_CHANGE = common dso_local global i8* null, align 8
@IDC_START_TYPE = common dso_local global i32 0, align 4
@CB_GETCURSEL = common dso_local global i32 0, align 4
@SERVICE_AUTO_START = common dso_local global i8* null, align 8
@SERVICE_DEMAND_START = common dso_local global i8* null, align 8
@SERVICE_DISABLED = common dso_local global i8* null, align 8
@IDC_EXEPATH = common dso_local global i32 0, align 4
@WM_GETTEXTLENGTH = common dso_local global i32 0, align 4
@WM_GETTEXT = common dso_local global i32 0, align 4
@IDC_DISP_NAME = common dso_local global i32 0, align 4
@LVNAME = common dso_local global i32 0, align 4
@LVSTARTUP = common dso_local global i32 0, align 4
@IDC_DESCRIPTION = common dso_local global i32 0, align 4
@LVDESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SaveDlgInfo(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  %11 = load i32, i32* @ProcessHeap, align 4
  %12 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %13 = call i8* @HeapAlloc(i32 %11, i32 %12, i32 40)
  %14 = bitcast i8* %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %210

17:                                               ; preds = %2
  %18 = load i8*, i8** @SERVICE_NO_CHANGE, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @SERVICE_NO_CHANGE, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @SERVICE_NO_CHANGE, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %17
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IDC_START_TYPE, align 4
  %34 = load i32, i32* @CB_GETCURSEL, align 4
  %35 = call i32 @SendDlgItemMessageW(i32 %32, i32 %33, i32 %34, i32 0, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %49 [
    i32 0, label %37
    i32 1, label %41
    i32 2, label %45
  ]

37:                                               ; preds = %31
  %38 = load i8*, i8** @SERVICE_AUTO_START, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %49

41:                                               ; preds = %31
  %42 = load i8*, i8** @SERVICE_DEMAND_START, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  br label %49

45:                                               ; preds = %31
  %46 = load i8*, i8** @SERVICE_DISABLED, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %31, %45, %41, %37
  br label %50

50:                                               ; preds = %49, %17
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @IDC_EXEPATH, align 4
  %58 = load i32, i32* @WM_GETTEXTLENGTH, align 4
  %59 = call i32 @SendDlgItemMessageW(i32 %56, i32 %57, i32 %58, i32 0, i32 0)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @ProcessHeap, align 4
  %61 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i8* @HeapAlloc(i32 %60, i32 %61, i32 %66)
  %68 = bitcast i8* %67 to %struct.TYPE_11__*
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %70, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = icmp ne %struct.TYPE_11__* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %55
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @IDC_EXEPATH, align 4
  %78 = load i32, i32* @WM_GETTEXT, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = ptrtoint %struct.TYPE_11__* %83 to i32
  %85 = call i32 @SendDlgItemMessageW(i32 %76, i32 %77, i32 %78, i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %75, %55
  br label %87

87:                                               ; preds = %86, %50
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %147

92:                                               ; preds = %87
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @IDC_DISP_NAME, align 4
  %95 = load i32, i32* @WM_GETTEXTLENGTH, align 4
  %96 = call i32 @SendDlgItemMessageW(i32 %93, i32 %94, i32 %95, i32 0, i32 0)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* @ProcessHeap, align 4
  %98 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i8* @HeapAlloc(i32 %97, i32 %98, i32 %103)
  %105 = bitcast i8* %104 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %105, %struct.TYPE_11__** %7, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = icmp ne %struct.TYPE_11__* %106, null
  br i1 %107, label %108, label %146

108:                                              ; preds = %92
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @IDC_DISP_NAME, align 4
  %111 = load i32, i32* @WM_GETTEXT, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = ptrtoint %struct.TYPE_11__* %114 to i32
  %116 = call i32 @SendDlgItemMessageW(i32 %109, i32 %110, i32 %111, i32 %113, i32 %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = icmp ne %struct.TYPE_11__* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %108
  %126 = load i32, i32* @ProcessHeap, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = call i32 @HeapFree(i32 %126, i32 0, %struct.TYPE_11__* %133)
  br label %135

135:                                              ; preds = %125, %108
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  store %struct.TYPE_11__* %136, %struct.TYPE_11__** %142, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %145, align 8
  br label %146

146:                                              ; preds = %135, %92
  br label %147

147:                                              ; preds = %146, %87
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @SetServiceConfig(%struct.TYPE_11__* %148, i32 %155, i32* null)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %195

158:                                              ; preds = %147
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %158
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = load i32, i32* @LVNAME, align 4
  %175 = call i32 @ChangeListViewText(i32 %168, %struct.TYPE_13__* %173, i32 %174)
  br label %176

176:                                              ; preds = %163, %158
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %176
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = load i32, i32* @LVSTARTUP, align 4
  %193 = call i32 @ChangeListViewText(i32 %186, %struct.TYPE_13__* %191, i32 %192)
  br label %194

194:                                              ; preds = %181, %176
  br label %195

195:                                              ; preds = %194, %147
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %197, align 8
  %199 = icmp ne %struct.TYPE_11__* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load i32, i32* @ProcessHeap, align 4
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = call i32 @HeapFree(i32 %201, i32 0, %struct.TYPE_11__* %204)
  br label %206

206:                                              ; preds = %200, %195
  %207 = load i32, i32* @ProcessHeap, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %209 = call i32 @HeapFree(i32 %207, i32 0, %struct.TYPE_11__* %208)
  br label %210

210:                                              ; preds = %206, %2
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %268

215:                                              ; preds = %210
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* @IDC_DESCRIPTION, align 4
  %218 = load i32, i32* @WM_GETTEXTLENGTH, align 4
  %219 = call i32 @SendDlgItemMessageW(i32 %216, i32 %217, i32 %218, i32 0, i32 0)
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* @ProcessHeap, align 4
  %221 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = mul i64 %224, 4
  %226 = trunc i64 %225 to i32
  %227 = call i8* @HeapAlloc(i32 %220, i32 %221, i32 %226)
  %228 = bitcast i8* %227 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %228, %struct.TYPE_11__** %8, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %230 = icmp ne %struct.TYPE_11__* %229, null
  br i1 %230, label %231, label %267

231:                                              ; preds = %215
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @IDC_DESCRIPTION, align 4
  %234 = load i32, i32* @WM_GETTEXT, align 4
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, 1
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %238 = ptrtoint %struct.TYPE_11__* %237 to i32
  %239 = call i32 @SendDlgItemMessageW(i32 %232, i32 %233, i32 %234, i32 %236, i32 %238)
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %248 = call i64 @SetServiceDescription(i32 %246, %struct.TYPE_11__* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %263

250:                                              ; preds = %231
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = load i32, i32* @LVDESC, align 4
  %262 = call i32 @ChangeListViewText(i32 %255, %struct.TYPE_13__* %260, i32 %261)
  br label %263

263:                                              ; preds = %250, %231
  %264 = load i32, i32* @ProcessHeap, align 4
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %266 = call i32 @HeapFree(i32 %264, i32 0, %struct.TYPE_11__* %265)
  br label %267

267:                                              ; preds = %263, %215
  br label %268

268:                                              ; preds = %267, %210
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @SetServiceConfig(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @ChangeListViewText(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @SetServiceDescription(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
