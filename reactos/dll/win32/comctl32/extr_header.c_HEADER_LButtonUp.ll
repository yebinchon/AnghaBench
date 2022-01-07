; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_LButtonUp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_LButtonUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, i32, i32, i32, i8*, i32, %struct.TYPE_20__*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_22__, i8* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@HDN_ENDDRAG = common dso_local global i32 0, align 4
@HDI_ORDER = common dso_local global i32 0, align 4
@HDS_DRAGDROP = common dso_local global i32 0, align 4
@HDN_ITEMCLICKW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Released item %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"End tracking item %d.\0A\00", align 1
@HDN_ENDTRACKW = common dso_local global i32 0, align 4
@HDI_WIDTH = common dso_local global i32 0, align 4
@HDS_FULLDRAG = common dso_local global i32 0, align 4
@HDN_ITEMCHANGINGW = common dso_local global i32 0, align 4
@HDN_ITEMCHANGEDW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@NM_RELEASEDCAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32, i32)* @HEADER_LButtonUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HEADER_LButtonUp(%struct.TYPE_21__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = call i32 @HEADER_InternalHitTest(%struct.TYPE_21__* %18, %struct.TYPE_19__* %7, i32* %8, i32* %9)
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 10
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %173

24:                                               ; preds = %3
  %25 = load i8*, i8** @FALSE, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 3
  store i8* %25, i8** %33, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 11
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %132

38:                                               ; preds = %24
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 7
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i64 %44
  store %struct.TYPE_20__* %45, %struct.TYPE_20__** %11, align 8
  %46 = load i8*, i8** @FALSE, align 8
  %47 = call i32 @ImageList_DragShowNolock(i8* %46)
  %48 = call i32 (...) @ImageList_EndDrag()
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  store i32 -1, i32* %12, align 4
  br label %83

54:                                               ; preds = %38
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %82

67:                                               ; preds = %54
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @HEADER_IndexToOrder(%struct.TYPE_21__* %68, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %78, %67
  br label %82

82:                                               ; preds = %81, %62
  br label %83

83:                                               ; preds = %82, %53
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %111

86:                                               ; preds = %83
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = load i32, i32* @HDN_ENDDRAG, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @HDI_ORDER, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @HEADER_SendNotifyWithIntFieldT(%struct.TYPE_21__* %87, i32 %88, i64 %91, i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %111, label %96

96:                                               ; preds = %86
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @HEADER_ChangeItemOrder(%struct.TYPE_21__* %97, i64 %100, i32 %101)
  %103 = load i8*, i8** @FALSE, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 12
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** @FALSE, align 8
  %110 = call i32 @InvalidateRect(i32 %108, %struct.TYPE_22__* null, i8* %109)
  br label %125

111:                                              ; preds = %86, %83
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 7
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %116, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  %123 = load i8*, i8** @FALSE, align 8
  %124 = call i32 @InvalidateRect(i32 %114, %struct.TYPE_22__* %122, i8* %123)
  br label %125

125:                                              ; preds = %111, %96
  %126 = load i8*, i8** @FALSE, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 11
  store i8* %126, i8** %128, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %130 = load i8*, i8** @FALSE, align 8
  %131 = call i32 @HEADER_SetHotDivider(%struct.TYPE_21__* %129, i8* %130, i32 -1)
  br label %165

132:                                              ; preds = %24
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @GetDC(i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @HEADER_RefreshItem(%struct.TYPE_21__* %137, i64 %140)
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @ReleaseDC(i32 %144, i32 %145)
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @HDS_DRAGDROP, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %132
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %155 = call i32 @HEADER_IsDragDistance(%struct.TYPE_21__* %154, %struct.TYPE_19__* %7)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %153, %132
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %159 = load i32, i32* @HDN_ITEMCLICKW, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @HEADER_SendNotifyWithHDItemT(%struct.TYPE_21__* %158, i32 %159, i64 %162, i32* null)
  br label %164

164:                                              ; preds = %157, %153
  br label %165

165:                                              ; preds = %164, %125
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %168)
  %170 = load i8*, i8** @FALSE, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 10
  store i8* %170, i8** %172, align 8
  br label %274

173:                                              ; preds = %3
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 9
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %273

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 7
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %182, align 8
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %180, %190
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %191, %194
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %178
  store i32 0, i32* %13, align 4
  br label %199

199:                                              ; preds = %198, %178
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %202)
  %204 = load i8*, i8** @FALSE, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 9
  store i8* %204, i8** %206, align 8
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %208 = load i32, i32* @HDN_ENDTRACKW, align 4
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @HDI_WIDTH, align 4
  %213 = load i32, i32* %13, align 4
  %214 = call i32 @HEADER_SendNotifyWithIntFieldT(%struct.TYPE_21__* %207, i32 %208, i64 %211, i32 %212, i32 %213)
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @HDS_FULLDRAG, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %237, label %221

221:                                              ; preds = %199
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @GetDC(i32 %224)
  store i32 %225, i32* %10, align 4
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @HEADER_DrawTrackLine(%struct.TYPE_21__* %226, i32 %227, i32 %230)
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @ReleaseDC(i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %221, %199
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %239 = load i32, i32* @HDN_ITEMCHANGINGW, align 4
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* @HDI_WIDTH, align 4
  %244 = load i32, i32* %13, align 4
  %245 = call i32 @HEADER_SendNotifyWithIntFieldT(%struct.TYPE_21__* %238, i32 %239, i64 %242, i32 %243, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %265, label %247

247:                                              ; preds = %237
  %248 = load i32, i32* %13, align 4
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 7
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %250, align 8
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 1
  store i32 %248, i32* %256, align 4
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %258 = load i32, i32* @HDN_ITEMCHANGEDW, align 4
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* @HDI_WIDTH, align 4
  %263 = load i32, i32* %13, align 4
  %264 = call i32 @HEADER_SendNotifyWithIntFieldT(%struct.TYPE_21__* %257, i32 %258, i64 %261, i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %247, %237
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %267 = call i32 @HEADER_SetItemBounds(%struct.TYPE_21__* %266)
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  %271 = load i8*, i8** @TRUE, align 8
  %272 = call i32 @InvalidateRect(i32 %270, %struct.TYPE_22__* null, i8* %271)
  br label %273

273:                                              ; preds = %265, %173
  br label %274

274:                                              ; preds = %273, %165
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 5
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %287

279:                                              ; preds = %274
  %280 = load i8*, i8** @FALSE, align 8
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 5
  store i8* %280, i8** %282, align 8
  %283 = call i32 (...) @ReleaseCapture()
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %285 = load i32, i32* @NM_RELEASEDCAPTURE, align 4
  %286 = call i32 @HEADER_SendSimpleNotify(%struct.TYPE_21__* %284, i32 %285)
  br label %287

287:                                              ; preds = %279, %274
  ret i32 0
}

declare dso_local i32 @HEADER_InternalHitTest(%struct.TYPE_21__*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @ImageList_DragShowNolock(i8*) #1

declare dso_local i32 @ImageList_EndDrag(...) #1

declare dso_local i32 @HEADER_IndexToOrder(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @HEADER_SendNotifyWithIntFieldT(%struct.TYPE_21__*, i32, i64, i32, i32) #1

declare dso_local i32 @HEADER_ChangeItemOrder(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i32 @InvalidateRect(i32, %struct.TYPE_22__*, i8*) #1

declare dso_local i32 @HEADER_SetHotDivider(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @HEADER_RefreshItem(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @HEADER_IsDragDistance(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @HEADER_SendNotifyWithHDItemT(%struct.TYPE_21__*, i32, i64, i32*) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @HEADER_DrawTrackLine(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @HEADER_SetItemBounds(%struct.TYPE_21__*) #1

declare dso_local i32 @ReleaseCapture(...) #1

declare dso_local i32 @HEADER_SendSimpleNotify(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
