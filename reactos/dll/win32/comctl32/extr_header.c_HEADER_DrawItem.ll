; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_DrawItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_DrawItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32, i32, i32, i64, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__, i64, i32, i64, i64, i32 }
%struct.TYPE_23__ = type { i64, i64, i64, i64 }
%struct.TYPE_24__ = type { i32, i64, i32, i32, %struct.TYPE_23__, i8* }
%struct.TYPE_27__ = type { i64, i32, i32, %struct.TYPE_23__, i8*, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i64, i64 }

@.str = private unnamed_addr constant [49 x i8] c"DrawItem(iItem %d bHotTrack %d unicode flag %d)\0A\00", align 1
@NFR_UNICODE = common dso_local global i64 0, align 8
@HIS_PRESSED = common dso_local global i32 0, align 4
@HIS_HOT = common dso_local global i32 0, align 4
@HIS_NORMAL = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHT = common dso_local global i32 0, align 4
@COLOR_BTNTEXT = common dso_local global i32 0, align 4
@comctl32_color = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4
@CDRF_NOTIFYITEMDRAW = common dso_local global i32 0, align 4
@HDF_OWNERDRAW = common dso_local global i32 0, align 4
@CDDS_PREPAINT = common dso_local global i32 0, align 4
@CDDS_ITEM = common dso_local global i32 0, align 4
@CDIS_SELECTED = common dso_local global i32 0, align 4
@NM_CUSTOMDRAW = common dso_local global i32 0, align 4
@CDRF_SKIPDEFAULT = common dso_local global i32 0, align 4
@ODT_HEADER = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@ODA_DRAWENTIRE = common dso_local global i32 0, align 4
@ODS_SELECTED = common dso_local global i32 0, align 4
@TRANSPARENT = common dso_local global i64 0, align 8
@WM_DRAWITEM = common dso_local global i32 0, align 4
@HDI_TEXT = common dso_local global i32 0, align 4
@HDI_IMAGE = common dso_local global i32 0, align 4
@HDF_STRING = common dso_local global i32 0, align 4
@HP_HEADERITEM = common dso_local global i32 0, align 4
@DT_LEFT = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@DT_CALCRECT = common dso_local global i32 0, align 4
@HDF_SORTUP = common dso_local global i32 0, align 4
@HDF_SORTDOWN = common dso_local global i32 0, align 4
@VERT_BORDER = common dso_local global i64 0, align 8
@HDF_IMAGE = common dso_local global i32 0, align 4
@HDF_BITMAP = common dso_local global i32 0, align 4
@HDF_JUSTIFYMASK = common dso_local global i32 0, align 4
@HDF_LEFT = common dso_local global i32 0, align 4
@HDF_CENTER = common dso_local global i32 0, align 4
@HDF_BITMAP_ON_RIGHT = common dso_local global i32 0, align 4
@HDF_RIGHT = common dso_local global i32 0, align 4
@COLOR_GRAYTEXT = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@CLR_DEFAULT = common dso_local global i32 0, align 4
@DT_END_ELLIPSIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_26__*, i8*, i64, i64, i32)* @HEADER_DrawItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HEADER_DrawItem(%struct.TYPE_26__* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_24__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_27__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca %struct.TYPE_28__, align 8
  %39 = alloca %struct.TYPE_23__, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i8*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i64 %47
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %12, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @GetWindowTheme(i32 %51)
  store i64 %52, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NFR_UNICODE, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %54, i32 %60)
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 1
  %64 = bitcast %struct.TYPE_23__* %13 to i8*
  %65 = bitcast %struct.TYPE_23__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 32, i1 false)
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %67, %69
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %5
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %6, align 8
  br label %783

77:                                               ; preds = %5
  %78 = load i64, i64* %15, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @HIS_PRESSED, align 4
  br label %96

87:                                               ; preds = %80
  %88 = load i64, i64* %10, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @HIS_HOT, align 4
  br label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @HIS_NORMAL, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  br label %96

96:                                               ; preds = %94, %85
  %97 = phi i32 [ %86, %85 ], [ %95, %94 ]
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %96, %77
  %99 = load i8*, i8** %8, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i64, i64* %15, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @COLOR_HIGHLIGHT, align 4
  br label %109

107:                                              ; preds = %102, %98
  %108 = load i32, i32* @COLOR_BTNTEXT, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = call i32 @SetTextColor(i8* %99, i32 %110)
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @comctl32_color, i32 0, i32 0), align 4
  %114 = call i32 @SetBkColor(i8* %112, i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @CDRF_NOTIFYITEMDRAW, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %166

119:                                              ; preds = %109
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @HDF_OWNERDRAW, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %166, label %126

126:                                              ; preds = %119
  %127 = load i32, i32* @CDDS_PREPAINT, align 4
  %128 = load i32, i32* @CDDS_ITEM, align 4
  %129 = or i32 %127, %128
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  store i32 %129, i32* %130, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 5
  store i8* %131, i8** %132, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  store i64 %133, i64* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 4
  %136 = bitcast %struct.TYPE_23__* %135 to i8*
  %137 = bitcast %struct.TYPE_23__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %136, i8* align 8 %137, i64 32, i1 false)
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %126
  %143 = load i32, i32* @CDIS_SELECTED, align 4
  br label %145

144:                                              ; preds = %126
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 0, %144 ]
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 3
  store i32 %146, i32* %147, align 4
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 2
  store i32 %150, i32* %151, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %153 = load i32, i32* @NM_CUSTOMDRAW, align 4
  %154 = bitcast %struct.TYPE_24__* %16 to i32*
  %155 = call i32 @HEADER_SendNotify(%struct.TYPE_26__* %152, i32 %153, i32* %154)
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* @CDRF_SKIPDEFAULT, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %145
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %6, align 8
  br label %783

165:                                              ; preds = %145
  br label %166

166:                                              ; preds = %165, %119, %109
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %170 = load i64, i64* %10, align 8
  %171 = call i32 @HEADER_FillItemFrame(%struct.TYPE_26__* %167, i8* %168, %struct.TYPE_23__* %13, %struct.TYPE_25__* %169, i64 %170)
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @HDF_OWNERDRAW, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %256

178:                                              ; preds = %166
  %179 = load i32, i32* @ODT_HEADER, align 4
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 8
  store i32 %179, i32* %180, align 4
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @GWLP_ID, align 4
  %185 = call i32 @GetWindowLongPtrW(i32 %183, i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 1
  store i32 %185, i32* %186, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  store i64 %187, i64* %188, align 8
  %189 = load i32, i32* @ODA_DRAWENTIRE, align 4
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 7
  store i32 %189, i32* %190, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %178
  %196 = load i32, i32* @ODS_SELECTED, align 4
  br label %198

197:                                              ; preds = %178
  br label %198

198:                                              ; preds = %197, %195
  %199 = phi i32 [ %196, %195 ], [ 0, %197 ]
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 6
  store i32 %199, i32* %200, align 4
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 5
  store i32 %203, i32* %204, align 8
  %205 = load i8*, i8** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 4
  store i8* %205, i8** %206, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 3
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 1
  %210 = bitcast %struct.TYPE_23__* %207 to i8*
  %211 = bitcast %struct.TYPE_23__* %209 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %210, i8* align 8 %211, i64 32, i1 false)
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 2
  store i32 %214, i32* %215, align 4
  %216 = load i8*, i8** %8, align 8
  %217 = load i64, i64* @TRANSPARENT, align 8
  %218 = call i64 @SetBkMode(i8* %216, i64 %217)
  store i64 %218, i64* %14, align 8
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @WM_DRAWITEM, align 4
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = ptrtoint %struct.TYPE_27__* %19 to i32
  %226 = call i64 @SendMessageW(i32 %221, i32 %222, i32 %224, i32 %225)
  store i64 %226, i64* %20, align 8
  %227 = load i64, i64* %14, align 8
  %228 = load i64, i64* @TRANSPARENT, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %198
  %231 = load i8*, i8** %8, align 8
  %232 = load i64, i64* %14, align 8
  %233 = call i64 @SetBkMode(i8* %231, i64 %232)
  br label %234

234:                                              ; preds = %230, %198
  %235 = load i64, i64* %20, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %234
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %241 = load i64, i64* %10, align 8
  %242 = call i32 @HEADER_FillItemFrame(%struct.TYPE_26__* %238, i8* %239, %struct.TYPE_23__* %13, %struct.TYPE_25__* %240, i64 %241)
  br label %243

243:                                              ; preds = %237, %234
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %245 = load i8*, i8** %8, align 8
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %247 = call i32 @HEADER_DrawItemFrame(%struct.TYPE_26__* %244, i8* %245, %struct.TYPE_23__* %13, %struct.TYPE_25__* %246)
  %248 = load i64, i64* %20, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %243
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %6, align 8
  br label %783

255:                                              ; preds = %243
  br label %261

256:                                              ; preds = %166
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %258 = load i8*, i8** %8, align 8
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %260 = call i32 @HEADER_DrawItemFrame(%struct.TYPE_26__* %257, i8* %258, %struct.TYPE_23__* %13, %struct.TYPE_25__* %259)
  br label %261

261:                                              ; preds = %256, %255
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 5
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %268, 2
  store i64 %269, i64* %267, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = add i64 %271, 2
  store i64 %272, i64* %270, align 8
  br label %273

273:                                              ; preds = %266, %261
  store i64* null, i64** %23, align 8
  store i64* null, i64** %24, align 8
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %275 = load i64, i64* %9, align 8
  %276 = load i32, i32* @HDI_TEXT, align 4
  %277 = load i32, i32* @HDI_IMAGE, align 4
  %278 = or i32 %276, %277
  %279 = call i32 @HEADER_PrepareCallbackItems(%struct.TYPE_26__* %274, i64 %275, i32 %278)
  store i64 0, i64* %37, align 8
  store i64 0, i64* %35, align 8
  store i64 0, i64* %32, align 8
  store i64 0, i64* %31, align 8
  store i64 0, i64* %29, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = sub nsw i64 %281, %283
  store i64 %284, i64* %21, align 8
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = sub i64 %286, %288
  store i64 %289, i64* %22, align 8
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @HDF_STRING, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %339

296:                                              ; preds = %273
  %297 = call i32 @SetRectEmpty(%struct.TYPE_23__* %39)
  %298 = load i64, i64* %15, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %314

300:                                              ; preds = %296
  %301 = load i64, i64* %15, align 8
  %302 = load i8*, i8** %8, align 8
  %303 = load i32, i32* @HP_HEADERITEM, align 4
  %304 = load i32, i32* %17, align 4
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = load i32, i32* @DT_LEFT, align 4
  %309 = load i32, i32* @DT_VCENTER, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @DT_SINGLELINE, align 4
  %312 = or i32 %310, %311
  %313 = call i32 @GetThemeTextExtent(i64 %301, i8* %302, i32 %303, i32 %304, i64 %307, i32 -1, i32 %312, i32* null, %struct.TYPE_23__* %39)
  br label %327

314:                                              ; preds = %296
  %315 = load i8*, i8** %8, align 8
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = load i32, i32* @DT_LEFT, align 4
  %320 = load i32, i32* @DT_VCENTER, align 4
  %321 = or i32 %319, %320
  %322 = load i32, i32* @DT_SINGLELINE, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* @DT_CALCRECT, align 4
  %325 = or i32 %323, %324
  %326 = call i32 @DrawTextW(i8* %315, i64 %318, i32 -1, %struct.TYPE_23__* %39, i32 %325)
  br label %327

327:                                              ; preds = %314, %300
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = sub nsw i64 %329, %331
  %333 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = mul nsw i32 2, %335
  %337 = sext i32 %336 to i64
  %338 = add nsw i64 %332, %337
  store i64 %338, i64* %29, align 8
  br label %339

339:                                              ; preds = %327, %273
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @HDF_SORTUP, align 4
  %344 = load i32, i32* @HDF_SORTDOWN, align 4
  %345 = or i32 %343, %344
  %346 = and i32 %342, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %367

348:                                              ; preds = %339
  %349 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %349, i32 0, i32 4
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @VERT_BORDER, align 8
  %353 = sub nsw i64 %351, %352
  %354 = call i64 @MulDiv(i64 %353, i32 4, i32 13)
  store i64 %354, i64* %37, align 8
  %355 = load i64, i64* %37, align 8
  %356 = mul i64 2, %355
  %357 = sub i64 %356, 1
  %358 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = mul nsw i32 %360, 2
  %362 = sext i32 %361 to i64
  %363 = add i64 %357, %362
  store i64 %363, i64* %35, align 8
  %364 = load i64, i64* %35, align 8
  %365 = load i64, i64* %29, align 8
  %366 = add i64 %365, %364
  store i64 %366, i64* %29, align 8
  br label %429

367:                                              ; preds = %339
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @HDF_IMAGE, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %388

374:                                              ; preds = %367
  %375 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 8
  %378 = call i64 @ImageList_GetIconSize(i32 %377, i64* %33, i64* %34)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %374
  %381 = load i64, i64* %33, align 8
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = mul nsw i32 2, %384
  %386 = sext i32 %385 to i64
  %387 = add i64 %381, %386
  store i64 %387, i64* %31, align 8
  store i64* %27, i64** %23, align 8
  store i64* %31, i64** %24, align 8
  br label %388

388:                                              ; preds = %380, %374, %367
  %389 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @HDF_BITMAP, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %417

395:                                              ; preds = %388
  %396 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %397 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %396, i32 0, i32 4
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %417

400:                                              ; preds = %395
  %401 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %402 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %401, i32 0, i32 4
  %403 = load i64, i64* %402, align 8
  %404 = call i32 @GetObjectW(i64 %403, i32 16, %struct.TYPE_28__* %38)
  %405 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = mul nsw i32 2, %409
  %411 = sext i32 %410 to i64
  %412 = add i64 %406, %411
  store i64 %412, i64* %32, align 8
  %413 = load i64, i64* %31, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %400
  store i64* %28, i64** %23, align 8
  store i64* %32, i64** %24, align 8
  br label %416

416:                                              ; preds = %415, %400
  br label %417

417:                                              ; preds = %416, %395, %388
  %418 = load i64, i64* %32, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %423, label %420

420:                                              ; preds = %417
  %421 = load i64, i64* %31, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %420, %417
  %424 = load i64*, i64** %24, align 8
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* %29, align 8
  %427 = add i64 %426, %425
  store i64 %427, i64* %29, align 8
  br label %428

428:                                              ; preds = %423, %420
  br label %429

429:                                              ; preds = %428, %348
  %430 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %431 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = load i32, i32* @HDF_JUSTIFYMASK, align 4
  %434 = and i32 %432, %433
  %435 = load i32, i32* @HDF_LEFT, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %440

437:                                              ; preds = %429
  %438 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %25, align 8
  br label %463

440:                                              ; preds = %429
  %441 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %442 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @HDF_JUSTIFYMASK, align 4
  %445 = and i32 %443, %444
  %446 = load i32, i32* @HDF_CENTER, align 4
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %448, label %457

448:                                              ; preds = %440
  %449 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = load i64, i64* %21, align 8
  %452 = udiv i64 %451, 2
  %453 = add i64 %450, %452
  %454 = load i64, i64* %29, align 8
  %455 = udiv i64 %454, 2
  %456 = sub i64 %453, %455
  store i64 %456, i64* %25, align 8
  br label %462

457:                                              ; preds = %440
  %458 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* %29, align 8
  %461 = sub i64 %459, %460
  store i64 %461, i64* %25, align 8
  br label %462

462:                                              ; preds = %457, %448
  br label %463

463:                                              ; preds = %462, %437
  %464 = load i64, i64* %25, align 8
  %465 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %466 = load i64, i64* %465, align 8
  %467 = icmp ult i64 %464, %466
  br i1 %467, label %468, label %471

468:                                              ; preds = %463
  %469 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %470 = load i64, i64* %469, align 8
  store i64 %470, i64* %25, align 8
  br label %471

471:                                              ; preds = %468, %463
  %472 = load i64, i64* %25, align 8
  %473 = load i64, i64* %29, align 8
  %474 = add i64 %472, %473
  %475 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = icmp ugt i64 %474, %476
  br i1 %477, label %478, label %483

478:                                              ; preds = %471
  %479 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* %25, align 8
  %482 = sub i64 %480, %481
  store i64 %482, i64* %29, align 8
  br label %483

483:                                              ; preds = %478, %471
  %484 = load i64, i64* %25, align 8
  %485 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %486 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 8
  %488 = sext i32 %487 to i64
  %489 = add i64 %484, %488
  store i64 %489, i64* %26, align 8
  %490 = load i64, i64* %29, align 8
  %491 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %492 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 8
  %494 = mul nsw i32 %493, 2
  %495 = sext i32 %494 to i64
  %496 = sub i64 %490, %495
  store i64 %496, i64* %30, align 8
  %497 = load i64, i64* %35, align 8
  %498 = load i64, i64* %30, align 8
  %499 = sub i64 %498, %497
  store i64 %499, i64* %30, align 8
  %500 = load i64, i64* %25, align 8
  %501 = load i64, i64* %30, align 8
  %502 = add i64 %500, %501
  %503 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %504 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 8
  %506 = mul nsw i32 %505, 3
  %507 = sext i32 %506 to i64
  %508 = add i64 %502, %507
  store i64 %508, i64* %36, align 8
  %509 = load i64, i64* %31, align 8
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %514, label %511

511:                                              ; preds = %483
  %512 = load i64, i64* %32, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %549

514:                                              ; preds = %511, %483
  %515 = load i64*, i64** %24, align 8
  %516 = load i64, i64* %515, align 8
  %517 = load i64, i64* %30, align 8
  %518 = sub i64 %517, %516
  store i64 %518, i64* %30, align 8
  %519 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %520 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* @HDF_BITMAP_ON_RIGHT, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %536

525:                                              ; preds = %514
  %526 = load i64, i64* %25, align 8
  %527 = load i64, i64* %30, align 8
  %528 = add i64 %526, %527
  %529 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %530 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 8
  %532 = mul nsw i32 %531, 3
  %533 = sext i32 %532 to i64
  %534 = add i64 %528, %533
  %535 = load i64*, i64** %23, align 8
  store i64 %534, i64* %535, align 8
  br label %548

536:                                              ; preds = %514
  %537 = load i64, i64* %25, align 8
  %538 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %539 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 8
  %541 = sext i32 %540 to i64
  %542 = add i64 %537, %541
  %543 = load i64*, i64** %23, align 8
  store i64 %542, i64* %543, align 8
  %544 = load i64*, i64** %24, align 8
  %545 = load i64, i64* %544, align 8
  %546 = load i64, i64* %26, align 8
  %547 = add i64 %546, %545
  store i64 %547, i64* %26, align 8
  br label %548

548:                                              ; preds = %536, %525
  br label %549

549:                                              ; preds = %548, %511
  %550 = load i64, i64* %31, align 8
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %582

552:                                              ; preds = %549
  %553 = load i64, i64* %32, align 8
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %582

555:                                              ; preds = %552
  %556 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %557 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = load i32, i32* @HDF_JUSTIFYMASK, align 4
  %560 = and i32 %558, %559
  %561 = load i32, i32* @HDF_RIGHT, align 4
  %562 = icmp eq i32 %560, %561
  br i1 %562, label %563, label %572

563:                                              ; preds = %555
  %564 = load i64, i64* %25, align 8
  %565 = load i64, i64* %32, align 8
  %566 = sub i64 %564, %565
  %567 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %568 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 8
  %570 = sext i32 %569 to i64
  %571 = add i64 %566, %570
  store i64 %571, i64* %28, align 8
  br label %581

572:                                              ; preds = %555
  %573 = load i64, i64* %25, align 8
  %574 = load i64, i64* %29, align 8
  %575 = add i64 %573, %574
  %576 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %577 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 8
  %579 = sext i32 %578 to i64
  %580 = add i64 %575, %579
  store i64 %580, i64* %28, align 8
  br label %581

581:                                              ; preds = %572, %563
  br label %582

582:                                              ; preds = %581, %552, %549
  %583 = load i64, i64* %35, align 8
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %591, label %585

585:                                              ; preds = %582
  %586 = load i64, i64* %31, align 8
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %591, label %588

588:                                              ; preds = %585
  %589 = load i64, i64* %32, align 8
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %591, label %699

591:                                              ; preds = %588, %585, %582
  %592 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %593 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %592, i32 0, i32 2
  %594 = load i32, i32* %593, align 4
  %595 = call i8* @GetDC(i32 %594)
  store i8* %595, i8** %40, align 8
  %596 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %597 = load i64, i64* %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  %599 = load i64, i64* %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 3
  %603 = load i64, i64* %602, align 8
  %604 = call i64 @CreateRectRgn(i64 %597, i64 %599, i64 %601, i64 %603)
  store i64 %604, i64* %41, align 8
  %605 = load i8*, i8** %40, align 8
  %606 = load i64, i64* %41, align 8
  %607 = call i32 @SelectClipRgn(i8* %605, i64 %606)
  %608 = load i64, i64* %35, align 8
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %637

610:                                              ; preds = %591
  %611 = load i64, i64* %36, align 8
  %612 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  %613 = load i64, i64* %612, align 8
  %614 = load i64, i64* %22, align 8
  %615 = load i64, i64* %37, align 8
  %616 = sub i64 %614, %615
  %617 = udiv i64 %616, 2
  %618 = add i64 %613, %617
  %619 = load i64, i64* %37, align 8
  %620 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %621 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = load i32, i32* @HDF_SORTUP, align 4
  %624 = and i32 %622, %623
  %625 = call i64 @create_sort_arrow(i64 %611, i64 %618, i64 %619, i32 %624)
  store i64 %625, i64* %42, align 8
  %626 = load i64, i64* %42, align 8
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %628, label %636

628:                                              ; preds = %610
  %629 = load i8*, i8** %40, align 8
  %630 = load i64, i64* %42, align 8
  %631 = load i32, i32* @COLOR_GRAYTEXT, align 4
  %632 = call i32 @GetSysColorBrush(i32 %631)
  %633 = call i32 @FillRgn(i8* %629, i64 %630, i32 %632)
  %634 = load i64, i64* %42, align 8
  %635 = call i32 @DeleteObject(i64 %634)
  br label %636

636:                                              ; preds = %628, %610
  br label %637

637:                                              ; preds = %636, %591
  %638 = load i64, i64* %32, align 8
  %639 = icmp ne i64 %638, 0
  br i1 %639, label %640, label %667

640:                                              ; preds = %637
  %641 = load i8*, i8** %40, align 8
  %642 = call i8* @CreateCompatibleDC(i8* %641)
  store i8* %642, i8** %43, align 8
  %643 = load i8*, i8** %43, align 8
  %644 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %645 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %644, i32 0, i32 4
  %646 = load i64, i64* %645, align 8
  %647 = call i32 @SelectObject(i8* %643, i64 %646)
  %648 = load i8*, i8** %40, align 8
  %649 = load i64, i64* %28, align 8
  %650 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  %651 = load i64, i64* %650, align 8
  %652 = load i64, i64* %22, align 8
  %653 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 1
  %654 = load i64, i64* %653, align 8
  %655 = sub i64 %652, %654
  %656 = udiv i64 %655, 2
  %657 = add i64 %651, %656
  %658 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %659 = load i64, i64* %658, align 8
  %660 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 1
  %661 = load i64, i64* %660, align 8
  %662 = load i8*, i8** %43, align 8
  %663 = load i32, i32* @SRCCOPY, align 4
  %664 = call i32 @BitBlt(i8* %648, i64 %649, i64 %657, i64 %659, i64 %661, i8* %662, i32 0, i32 0, i32 %663)
  %665 = load i8*, i8** %43, align 8
  %666 = call i32 @DeleteDC(i8* %665)
  br label %667

667:                                              ; preds = %640, %637
  %668 = load i64, i64* %31, align 8
  %669 = icmp ne i64 %668, 0
  br i1 %669, label %670, label %691

670:                                              ; preds = %667
  %671 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %672 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %671, i32 0, i32 3
  %673 = load i32, i32* %672, align 8
  %674 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %675 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %674, i32 0, i32 3
  %676 = load i32, i32* %675, align 8
  %677 = load i8*, i8** %40, align 8
  %678 = load i64, i64* %27, align 8
  %679 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  %680 = load i64, i64* %679, align 8
  %681 = load i64, i64* %22, align 8
  %682 = load i64, i64* %34, align 8
  %683 = sub i64 %681, %682
  %684 = udiv i64 %683, 2
  %685 = add i64 %680, %684
  %686 = load i64, i64* %33, align 8
  %687 = load i64, i64* %34, align 8
  %688 = load i32, i32* @CLR_DEFAULT, align 4
  %689 = load i32, i32* @CLR_DEFAULT, align 4
  %690 = call i32 @ImageList_DrawEx(i32 %673, i32 %676, i8* %677, i64 %678, i64 %685, i64 %686, i64 %687, i32 %688, i32 %689, i32 0)
  br label %691

691:                                              ; preds = %670, %667
  %692 = load i64, i64* %41, align 8
  %693 = call i32 @DeleteObject(i64 %692)
  %694 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %695 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %694, i32 0, i32 2
  %696 = load i32, i32* %695, align 4
  %697 = load i8*, i8** %40, align 8
  %698 = call i32 @ReleaseDC(i32 %696, i8* %697)
  br label %699

699:                                              ; preds = %691, %588
  %700 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %701 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %700, i32 0, i32 0
  %702 = load i32, i32* %701, align 8
  %703 = load i32, i32* @HDF_STRING, align 4
  %704 = and i32 %702, %703
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %721, label %706

706:                                              ; preds = %699
  %707 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %708 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %707, i32 0, i32 0
  %709 = load i32, i32* %708, align 8
  %710 = load i32, i32* @HDF_OWNERDRAW, align 4
  %711 = load i32, i32* @HDF_STRING, align 4
  %712 = or i32 %710, %711
  %713 = load i32, i32* @HDF_BITMAP, align 4
  %714 = or i32 %712, %713
  %715 = load i32, i32* @HDF_BITMAP_ON_RIGHT, align 4
  %716 = or i32 %714, %715
  %717 = load i32, i32* @HDF_IMAGE, align 4
  %718 = or i32 %716, %717
  %719 = and i32 %709, %718
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %776, label %721

721:                                              ; preds = %706, %699
  %722 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %723 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %722, i32 0, i32 2
  %724 = load i64, i64* %723, align 8
  %725 = icmp ne i64 %724, 0
  br i1 %725, label %726, label %776

726:                                              ; preds = %721
  %727 = load i8*, i8** %8, align 8
  %728 = load i64, i64* @TRANSPARENT, align 8
  %729 = call i64 @SetBkMode(i8* %727, i64 %728)
  store i64 %729, i64* %14, align 8
  %730 = load i64, i64* %26, align 8
  %731 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  store i64 %730, i64* %731, align 8
  %732 = load i64, i64* %26, align 8
  %733 = load i64, i64* %30, align 8
  %734 = add i64 %732, %733
  %735 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store i64 %734, i64* %735, align 8
  %736 = load i64, i64* %15, align 8
  %737 = icmp ne i64 %736, 0
  br i1 %737, label %738, label %754

738:                                              ; preds = %726
  %739 = load i64, i64* %15, align 8
  %740 = load i8*, i8** %8, align 8
  %741 = load i32, i32* @HP_HEADERITEM, align 4
  %742 = load i32, i32* %17, align 4
  %743 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %744 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %743, i32 0, i32 2
  %745 = load i64, i64* %744, align 8
  %746 = load i32, i32* @DT_LEFT, align 4
  %747 = load i32, i32* @DT_END_ELLIPSIS, align 4
  %748 = or i32 %746, %747
  %749 = load i32, i32* @DT_VCENTER, align 4
  %750 = or i32 %748, %749
  %751 = load i32, i32* @DT_SINGLELINE, align 4
  %752 = or i32 %750, %751
  %753 = call i32 @DrawThemeText(i64 %739, i8* %740, i32 %741, i32 %742, i64 %745, i32 -1, i32 %752, i32 0, %struct.TYPE_23__* %13)
  br label %767

754:                                              ; preds = %726
  %755 = load i8*, i8** %8, align 8
  %756 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %757 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %756, i32 0, i32 2
  %758 = load i64, i64* %757, align 8
  %759 = load i32, i32* @DT_LEFT, align 4
  %760 = load i32, i32* @DT_END_ELLIPSIS, align 4
  %761 = or i32 %759, %760
  %762 = load i32, i32* @DT_VCENTER, align 4
  %763 = or i32 %761, %762
  %764 = load i32, i32* @DT_SINGLELINE, align 4
  %765 = or i32 %763, %764
  %766 = call i32 @DrawTextW(i8* %755, i64 %758, i32 -1, %struct.TYPE_23__* %13, i32 %765)
  br label %767

767:                                              ; preds = %754, %738
  %768 = load i64, i64* %14, align 8
  %769 = load i64, i64* @TRANSPARENT, align 8
  %770 = icmp ne i64 %768, %769
  br i1 %770, label %771, label %775

771:                                              ; preds = %767
  %772 = load i8*, i8** %8, align 8
  %773 = load i64, i64* %14, align 8
  %774 = call i64 @SetBkMode(i8* %772, i64 %773)
  br label %775

775:                                              ; preds = %771, %767
  br label %776

776:                                              ; preds = %775, %721, %706
  %777 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %778 = call i32 @HEADER_FreeCallbackItems(%struct.TYPE_25__* %777)
  %779 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %780 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %779, i32 0, i32 1
  %781 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %780, i32 0, i32 0
  %782 = load i64, i64* %781, align 8
  store i64 %782, i64* %6, align 8
  br label %783

783:                                              ; preds = %776, %250, %160, %72
  %784 = load i64, i64* %6, align 8
  ret i64 %784
}

declare dso_local i64 @GetWindowTheme(i32) #1

declare dso_local i32 @TRACE(i8*, i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SetTextColor(i8*, i32) #1

declare dso_local i32 @SetBkColor(i8*, i32) #1

declare dso_local i32 @HEADER_SendNotify(%struct.TYPE_26__*, i32, i32*) #1

declare dso_local i32 @HEADER_FillItemFrame(%struct.TYPE_26__*, i8*, %struct.TYPE_23__*, %struct.TYPE_25__*, i64) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i64 @SetBkMode(i8*, i64) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @HEADER_DrawItemFrame(%struct.TYPE_26__*, i8*, %struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @HEADER_PrepareCallbackItems(%struct.TYPE_26__*, i64, i32) #1

declare dso_local i32 @SetRectEmpty(%struct.TYPE_23__*) #1

declare dso_local i32 @GetThemeTextExtent(i64, i8*, i32, i32, i64, i32, i32, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @DrawTextW(i8*, i64, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @MulDiv(i64, i32, i32) #1

declare dso_local i64 @ImageList_GetIconSize(i32, i64*, i64*) #1

declare dso_local i32 @GetObjectW(i64, i32, %struct.TYPE_28__*) #1

declare dso_local i8* @GetDC(i32) #1

declare dso_local i64 @CreateRectRgn(i64, i64, i64, i64) #1

declare dso_local i32 @SelectClipRgn(i8*, i64) #1

declare dso_local i64 @create_sort_arrow(i64, i64, i64, i32) #1

declare dso_local i32 @FillRgn(i8*, i64, i32) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i8* @CreateCompatibleDC(i8*) #1

declare dso_local i32 @SelectObject(i8*, i64) #1

declare dso_local i32 @BitBlt(i8*, i64, i64, i64, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i8*) #1

declare dso_local i32 @ImageList_DrawEx(i32, i32, i8*, i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i8*) #1

declare dso_local i32 @DrawThemeText(i64, i8*, i32, i32, i64, i32, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @HEADER_FreeCallbackItems(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
