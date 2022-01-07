; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_COMBO_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_COMBO_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i8*, i8*, %struct.TYPE_12__, %struct.TYPE_11__, i32, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@COMBO_Create.clbName = internal constant [10 x i8] c"ComboLBox\00", align 1
@COMBO_Create.editName = internal constant [5 x i8] c"Edit\00", align 1
@WC_COMBOBOXW = common dso_local global i32 0, align 4
@CBS_SIMPLE = common dso_local global i32 0, align 4
@CBS_DROPDOWNLIST = common dso_local global i32 0, align 4
@CBF_EDIT = common dso_local global i32 0, align 4
@CBF_MEASUREITEM = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@CBS_DROPDOWN = common dso_local global i32 0, align 4
@LBS_NOTIFY = common dso_local global i32 0, align 4
@LBS_COMBOBOX = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@CBS_OWNERDRAWFIXED = common dso_local global i32 0, align 4
@CBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@CBS_SORT = common dso_local global i32 0, align 4
@LBS_SORT = common dso_local global i32 0, align 4
@CBS_HASSTRINGS = common dso_local global i32 0, align 4
@LBS_HASSTRINGS = common dso_local global i32 0, align 4
@CBS_NOINTEGRALHEIGHT = common dso_local global i32 0, align 4
@LBS_NOINTEGRALHEIGHT = common dso_local global i32 0, align 4
@CBS_DISABLENOSCROLL = common dso_local global i32 0, align 4
@LBS_DISABLENOSCROLL = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@WS_EX_TOPMOST = common dso_local global i32 0, align 4
@WS_EX_TOOLWINDOW = common dso_local global i32 0, align 4
@ID_CB_LISTBOX = common dso_local global i64 0, align 8
@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ES_NOHIDESEL = common dso_local global i32 0, align 4
@ES_LEFT = common dso_local global i32 0, align 4
@ES_COMBO = common dso_local global i32 0, align 4
@CBS_OEMCONVERT = common dso_local global i32 0, align 4
@ES_OEMCONVERT = common dso_local global i32 0, align 4
@CBS_AUTOHSCROLL = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@CBS_LOWERCASE = common dso_local global i32 0, align 4
@ES_LOWERCASE = common dso_local global i32 0, align 4
@CBS_UPPERCASE = common dso_local global i32 0, align 4
@ES_UPPERCASE = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@ID_CB_EDIT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@HWND_DESKTOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"init done\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"edit control failure.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"listbox failure.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"no owner for visible combo.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_10__*, i64, i32)* @COMBO_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBO_Create(i64 %0, %struct.TYPE_10__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* @WC_COMBOBOXW, align 4
  %15 = call i32 @OpenThemeData(i64 %13, i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = call i32 @CB_GETTYPE(%struct.TYPE_10__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @CBS_SIMPLE, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %19, %4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = call i32 @CB_GETTYPE(%struct.TYPE_10__* %26)
  %28 = load i32, i32* @CBS_DROPDOWNLIST, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @CBF_EDIT, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 8
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 9
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 10
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @CBF_MEASUREITEM, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store i32 30, i32* %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %36
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @WS_VISIBLE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %406, label %60

60:                                               ; preds = %55, %36
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 6
  %64 = call i32 @GetClientRect(i64 %61, %struct.TYPE_11__* %63)
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 7
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 6
  %73 = call i32 @CBCalcPlacement(i64 %65, %struct.TYPE_10__* %66, %struct.TYPE_12__* %68, i32* %70, %struct.TYPE_11__* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = call i32 @CB_GETTYPE(%struct.TYPE_10__* %74)
  %76 = load i32, i32* @CBS_SIMPLE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %141

78:                                               ; preds = %60
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 (...) @COMBO_YBORDERSIZE()
  %84 = add nsw i64 %82, %83
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = call i32 @CB_GETTYPE(%struct.TYPE_10__* %88)
  %90 = load i32, i32* @CBS_DROPDOWN, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %78
  %93 = call i64 (...) @COMBO_EDITBUTTONSPACE()
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, %93
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %92, %78
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %103, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %99
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  store i64 %113, i64* %116, align 8
  br label %117

117:                                              ; preds = %109, %99
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %121, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %117
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  store i64 %131, i64* %134, align 8
  br label %135

135:                                              ; preds = %127, %117
  %136 = load i64, i64* %6, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 6
  %139 = ptrtoint %struct.TYPE_11__* %138 to i32
  %140 = call i32 @MapWindowPoints(i64 %136, i32 0, i32 %139, i32 2)
  br label %141

141:                                              ; preds = %135, %60
  %142 = load i32, i32* @LBS_NOTIFY, align 4
  %143 = load i32, i32* @LBS_COMBOBOX, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @WS_BORDER, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @WS_CHILD, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @WS_VSCROLL, align 4
  %153 = load i32, i32* @CBS_OWNERDRAWFIXED, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @CBS_OWNERDRAWVARIABLE, align 4
  %156 = or i32 %154, %155
  %157 = and i32 %151, %156
  %158 = or i32 %150, %157
  store i32 %158, i32* %10, align 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @CBS_SORT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %141
  %166 = load i32, i32* @LBS_SORT, align 4
  %167 = load i32, i32* %10, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %165, %141
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @CBS_HASSTRINGS, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load i32, i32* @LBS_HASSTRINGS, align 4
  %178 = load i32, i32* %10, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %176, %169
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @CBS_NOINTEGRALHEIGHT, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %180
  %188 = load i32, i32* @LBS_NOINTEGRALHEIGHT, align 4
  %189 = load i32, i32* %10, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %10, align 4
  br label %191

191:                                              ; preds = %187, %180
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CBS_DISABLENOSCROLL, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %191
  %199 = load i32, i32* @LBS_DISABLENOSCROLL, align 4
  %200 = load i32, i32* %10, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %10, align 4
  br label %202

202:                                              ; preds = %198, %191
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %204 = call i32 @CB_GETTYPE(%struct.TYPE_10__* %203)
  %205 = load i32, i32* @CBS_SIMPLE, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %202
  %208 = load i32, i32* @WS_VISIBLE, align 4
  %209 = load i32, i32* %10, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* @WS_BORDER, align 4
  %212 = xor i32 %211, -1
  %213 = load i32, i32* %10, align 4
  %214 = and i32 %213, %212
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %216 = load i32, i32* %11, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %11, align 4
  br label %224

218:                                              ; preds = %202
  %219 = load i32, i32* @WS_EX_TOPMOST, align 4
  %220 = load i32, i32* @WS_EX_TOOLWINDOW, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* %11, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %11, align 4
  br label %224

224:                                              ; preds = %218, %207
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 6
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 6
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = sub nsw i64 %238, %242
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 6
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 6
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = sub nsw i64 %247, %251
  %253 = load i64, i64* %6, align 8
  %254 = load i64, i64* @ID_CB_LISTBOX, align 8
  %255 = trunc i64 %254 to i32
  %256 = load i64, i64* %6, align 8
  %257 = load i32, i32* @GWLP_HINSTANCE, align 4
  %258 = call i64 @GetWindowLongPtrW(i64 %256, i32 %257)
  %259 = trunc i64 %258 to i32
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %261 = call i8* @CreateWindowExW(i32 %225, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @COMBO_Create.clbName, i64 0, i64 0), i32* null, i32 %226, i64 %230, i64 %234, i64 %243, i64 %252, i64 %253, i32 %255, i32 %259, %struct.TYPE_10__* %260)
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 3
  store i8* %261, i8** %263, align 8
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 3
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %403

268:                                              ; preds = %224
  %269 = load i64, i64* @TRUE, align 8
  store i64 %269, i64* %12, align 8
  %270 = load i32, i32* @WS_CHILD, align 4
  %271 = load i32, i32* @WS_VISIBLE, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @ES_NOHIDESEL, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @ES_LEFT, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* @ES_COMBO, align 4
  %278 = or i32 %276, %277
  store i32 %278, i32* %10, align 4
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @CBF_EDIT, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %383

285:                                              ; preds = %268
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @CBS_OEMCONVERT, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %285
  %293 = load i32, i32* @ES_OEMCONVERT, align 4
  %294 = load i32, i32* %10, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %10, align 4
  br label %296

296:                                              ; preds = %292, %285
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @CBS_AUTOHSCROLL, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %296
  %304 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %305 = load i32, i32* %10, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %10, align 4
  br label %307

307:                                              ; preds = %303, %296
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @CBS_LOWERCASE, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %307
  %315 = load i32, i32* @ES_LOWERCASE, align 4
  %316 = load i32, i32* %10, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %10, align 4
  br label %330

318:                                              ; preds = %307
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @CBS_UPPERCASE, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %318
  %326 = load i32, i32* @ES_UPPERCASE, align 4
  %327 = load i32, i32* %10, align 4
  %328 = or i32 %327, %326
  store i32 %328, i32* %10, align 4
  br label %329

329:                                              ; preds = %325, %318
  br label %330

330:                                              ; preds = %329, %314
  %331 = load i64, i64* %6, align 8
  %332 = call i32 @IsWindowEnabled(i64 %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %338, label %334

334:                                              ; preds = %330
  %335 = load i32, i32* @WS_DISABLED, align 4
  %336 = load i32, i32* %10, align 4
  %337 = or i32 %336, %335
  store i32 %337, i32* %10, align 4
  br label %338

338:                                              ; preds = %334, %330
  %339 = load i32, i32* %10, align 4
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 5
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 5
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 3
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 5
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = sub nsw i64 %351, %355
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 5
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 5
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = sub nsw i64 %360, %364
  %366 = load i64, i64* %6, align 8
  %367 = load i64, i64* @ID_CB_EDIT, align 8
  %368 = trunc i64 %367 to i32
  %369 = load i64, i64* %6, align 8
  %370 = load i32, i32* @GWLP_HINSTANCE, align 4
  %371 = call i64 @GetWindowLongPtrW(i64 %369, i32 %370)
  %372 = trunc i64 %371 to i32
  %373 = call i8* @CreateWindowExW(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @COMBO_Create.editName, i64 0, i64 0), i32* null, i32 %339, i64 %343, i64 %347, i64 %356, i64 %365, i64 %366, i32 %368, i32 %372, %struct.TYPE_10__* null)
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 4
  store i8* %373, i8** %375, align 8
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 4
  %378 = load i8*, i8** %377, align 8
  %379 = icmp ne i8* %378, null
  br i1 %379, label %382, label %380

380:                                              ; preds = %338
  %381 = load i64, i64* @FALSE, align 8
  store i64 %381, i64* %12, align 8
  br label %382

382:                                              ; preds = %380, %338
  br label %383

383:                                              ; preds = %382, %268
  %384 = load i64, i64* %12, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %401

386:                                              ; preds = %383
  %387 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %388 = call i32 @CB_GETTYPE(%struct.TYPE_10__* %387)
  %389 = load i32, i32* @CBS_SIMPLE, align 4
  %390 = icmp ne i32 %388, %389
  br i1 %390, label %391, label %399

391:                                              ; preds = %386
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 3
  %394 = load i8*, i8** %393, align 8
  %395 = load i32, i32* @HWND_DESKTOP, align 4
  %396 = call i32 @SetParent(i8* %394, i32 %395)
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %398 = call i32 @CBForceDummyResize(%struct.TYPE_10__* %397)
  br label %399

399:                                              ; preds = %391, %386
  %400 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %409

401:                                              ; preds = %383
  %402 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %405

403:                                              ; preds = %224
  %404 = call i32 @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %405

405:                                              ; preds = %403, %401
  br label %408

406:                                              ; preds = %55
  %407 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %408

408:                                              ; preds = %406, %405
  store i32 -1, i32* %5, align 4
  br label %409

409:                                              ; preds = %408, %399
  %410 = load i32, i32* %5, align 4
  ret i32 %410
}

declare dso_local i32 @OpenThemeData(i64, i32) #1

declare dso_local i32 @CB_GETTYPE(%struct.TYPE_10__*) #1

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_11__*) #1

declare dso_local i32 @CBCalcPlacement(i64, %struct.TYPE_10__*, %struct.TYPE_12__*, i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @COMBO_YBORDERSIZE(...) #1

declare dso_local i64 @COMBO_EDITBUTTONSPACE(...) #1

declare dso_local i32 @MapWindowPoints(i64, i32, i32, i32) #1

declare dso_local i8* @CreateWindowExW(i32, i8*, i32*, i32, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @GetWindowLongPtrW(i64, i32) #1

declare dso_local i32 @IsWindowEnabled(i64) #1

declare dso_local i32 @SetParent(i8*, i32) #1

declare dso_local i32 @CBForceDummyResize(%struct.TYPE_10__*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
