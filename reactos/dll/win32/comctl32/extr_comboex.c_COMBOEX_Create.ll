; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i8*, i8*, i64, i32, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@COMBOEX_Create.NIL = internal constant [1 x i32] zeroinitializer, align 4
@WM_NOTIFYFORMAT = common dso_local global i32 0, align 4
@NF_QUERY = common dso_local global i32 0, align 4
@NFR_ANSI = common dso_local global i64 0, align 8
@NFR_UNICODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"wrong response to WM_NOTIFYFORMAT (%d), assuming ANSI\0A\00", align 1
@comboex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"EX window=(%s), client=(%s)\0A\00", align 1
@WC_COMBOBOXW = common dso_local global i32 0, align 4
@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@CBS_NOINTEGRALHEIGHT = common dso_local global i32 0, align 4
@CBS_DROPDOWNLIST = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@CBS_OWNERDRAWFIXED = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@COMBOEX_ComboWndProc = common dso_local global i32 0, align 4
@COMBO_SUBCLASSID = common dso_local global i32 0, align 4
@WM_GETFONT = common dso_local global i32 0, align 4
@CBS_DROPDOWN = common dso_local global i32 0, align 4
@WC_EDITW = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@COMBOEX_EditWndProc = common dso_local global i32 0, align 4
@EDIT_SUBCLASSID = common dso_local global i32 0, align 4
@SPI_GETICONTITLELOGFONT = common dso_local global i32 0, align 4
@WM_SETFONT = common dso_local global i32 0, align 4
@EM_SETMARGINS = common dso_local global i32 0, align 4
@EC_USEFONTINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"EX window=(%s) client=(%s) CB wnd=(%s)\0A\00", align 1
@HWND_TOP = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOREDRAW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"CB window=(%s)\0A\00", align 1
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_12__*)* @COMBOEX_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBOEX_Create(i64 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca %struct.TYPE_11__, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %14 = call %struct.TYPE_13__* @Alloc(i32 64)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %6, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %288

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 8
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @IsWindowUnicode(i64 %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 6
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @WM_NOTIFYFORMAT, align 4
  %37 = load i64, i64* %4, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @NF_QUERY, align 4
  %40 = call i64 @SendMessageW(i64 %35, i32 %36, i32 %38, i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @NFR_ANSI, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %18
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @NFR_UNICODE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @WARN(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i64, i64* @NFR_ANSI, align 8
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %48, %44, %18
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @NFR_UNICODE, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = ptrtoint %struct.TYPE_13__* %60 to i32
  %62 = call i32 @SetWindowLongPtrW(i64 %59, i32 0, i32 %61)
  %63 = load i32, i32* @comboex, align 4
  %64 = call i64 @TRACE_ON(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %52
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @GetWindowRect(i64 %67, %struct.TYPE_11__* %11)
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @GetClientRect(i64 %69, %struct.TYPE_11__* %10)
  %71 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %11)
  %72 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %10)
  %73 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %52
  %75 = load i32, i32* @WC_COMBOBOXW, align 4
  %76 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %77 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @WS_VSCROLL, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CBS_NOINTEGRALHEIGHT, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @CBS_DROPDOWNLIST, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @WS_CHILD, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @WS_VISIBLE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @CBS_OWNERDRAWFIXED, align 4
  %90 = or i32 %88, %89
  %91 = load i64, i64* %4, align 8
  %92 = load i32, i32* @GWL_STYLE, align 4
  %93 = call i32 @GetWindowLongW(i64 %91, i32 %92)
  %94 = or i32 %90, %93
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* %4, align 8
  %109 = load i32, i32* @GWLP_ID, align 4
  %110 = call i64 @GetWindowLongPtrW(i64 %108, i32 %109)
  %111 = trunc i64 %110 to i32
  %112 = load i64, i64* %4, align 8
  %113 = load i32, i32* @GWLP_HINSTANCE, align 4
  %114 = call i64 @GetWindowLongPtrW(i64 %112, i32 %113)
  %115 = trunc i64 %114 to i32
  %116 = call i64 @CreateWindowW(i32 %75, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @COMBOEX_Create.NIL, i64 0, i64 0), i32 %94, i32 %97, i32 %100, i32 %103, i32 %106, i64 %107, i32 %111, i32 %115, i32* null)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @COMBOEX_ComboWndProc, align 4
  %123 = load i32, i32* @COMBO_SUBCLASSID, align 4
  %124 = load i64, i64* %4, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @SetWindowSubclass(i64 %121, i32 %122, i32 %123, i32 %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @WM_GETFONT, align 4
  %131 = call i64 @SendMessageW(i64 %129, i32 %130, i32 0, i32 0)
  %132 = inttoptr i64 %131 to i8*
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @CBS_DROPDOWNLIST, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* @CBS_DROPDOWN, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %181

142:                                              ; preds = %74
  %143 = load i32, i32* @WC_EDITW, align 4
  %144 = load i32, i32* @WS_CHILD, align 4
  %145 = load i32, i32* @WS_VISIBLE, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %4, align 8
  %155 = load i32, i32* @GWLP_ID, align 4
  %156 = call i64 @GetWindowLongPtrW(i64 %154, i32 %155)
  %157 = trunc i64 %156 to i32
  %158 = load i64, i64* %4, align 8
  %159 = load i32, i32* @GWLP_HINSTANCE, align 4
  %160 = call i64 @GetWindowLongPtrW(i64 %158, i32 %159)
  %161 = trunc i64 %160 to i32
  %162 = call i64 @CreateWindowExW(i32 0, i32 %143, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @COMBOEX_Create.NIL, i64 0, i64 0), i32 %150, i32 0, i32 0, i32 0, i32 0, i64 %153, i32 %157, i32 %161, i32* null)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 3
  store i64 %162, i64* %164, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* @COMBOEX_EditWndProc, align 4
  %169 = load i32, i32* @EDIT_SUBCLASSID, align 4
  %170 = load i64, i64* %4, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i32 @SetWindowSubclass(i64 %167, i32 %168, i32 %169, i32 %171)
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* @WM_GETFONT, align 4
  %177 = call i64 @SendMessageW(i64 %175, i32 %176, i32 0, i32 0)
  %178 = inttoptr i64 %177 to i8*
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 4
  store i8* %178, i8** %180, align 8
  br label %181

181:                                              ; preds = %142, %74
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 4
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %194, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* @SPI_GETICONTITLELOGFONT, align 4
  %188 = call i32 @SystemParametersInfoW(i32 %187, i32 4, i32* %7, i32 0)
  %189 = call i8* @CreateFontIndirectW(i32* %7)
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 5
  store i8* %189, i8** %191, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 4
  store i8* %189, i8** %193, align 8
  br label %194

194:                                              ; preds = %186, %181
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* @WM_SETFONT, align 4
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 4
  %201 = load i8*, i8** %200, align 8
  %202 = ptrtoint i8* %201 to i32
  %203 = call i64 @SendMessageW(i64 %197, i32 %198, i32 %202, i32 0)
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %224

208:                                              ; preds = %194
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @WM_SETFONT, align 4
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 4
  %215 = load i8*, i8** %214, align 8
  %216 = ptrtoint i8* %215 to i32
  %217 = call i64 @SendMessageW(i64 %211, i32 %212, i32 %216, i32 0)
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* @EM_SETMARGINS, align 4
  %222 = load i32, i32* @EC_USEFONTINFO, align 4
  %223 = call i64 @SendMessageW(i64 %220, i32 %221, i32 %222, i32 0)
  br label %224

224:                                              ; preds = %208, %194
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %226 = call i32 @COMBOEX_ReSize(%struct.TYPE_13__* %225)
  %227 = load i64, i64* %4, align 8
  %228 = call i32 @GetWindowRect(i64 %227, %struct.TYPE_11__* %8)
  %229 = load i32, i32* @comboex, align 4
  %230 = call i64 @TRACE_ON(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %224
  %233 = load i64, i64* %4, align 8
  %234 = call i32 @GetClientRect(i64 %233, %struct.TYPE_11__* %12)
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @GetWindowRect(i64 %237, %struct.TYPE_11__* %13)
  %239 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %8)
  %240 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %12)
  %241 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %13)
  %242 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %232, %224
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* @HWND_TOP, align 4
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = sub nsw i64 %249, %251
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = sub nsw i64 %254, %256
  %258 = load i32, i32* @SWP_NOACTIVATE, align 4
  %259 = load i32, i32* @SWP_NOREDRAW, align 4
  %260 = or i32 %258, %259
  %261 = call i32 @SetWindowPos(i64 %246, i32 %247, i32 0, i32 0, i64 %252, i64 %257, i32 %260)
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @GetWindowRect(i64 %264, %struct.TYPE_11__* %8)
  %266 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %8)
  %267 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %266)
  %268 = load i64, i64* %4, align 8
  %269 = load i32, i32* @HWND_TOP, align 4
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = sub nsw i64 %271, %273
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = sub nsw i64 %276, %278
  %280 = load i32, i32* @SWP_NOACTIVATE, align 4
  %281 = load i32, i32* @SWP_NOZORDER, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @SWP_NOMOVE, align 4
  %284 = or i32 %282, %283
  %285 = call i32 @SetWindowPos(i64 %268, i32 %269, i32 0, i32 0, i64 %274, i64 %279, i32 %284)
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %287 = call i32 @COMBOEX_AdjustEditPos(%struct.TYPE_13__* %286)
  store i32 0, i32* %3, align 4
  br label %288

288:                                              ; preds = %243, %17
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local %struct.TYPE_13__* @Alloc(i32) #1

declare dso_local i32 @IsWindowUnicode(i64) #1

declare dso_local i64 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @SetWindowLongPtrW(i64, i32, i32) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @GetWindowRect(i64, %struct.TYPE_11__*) #1

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_11__*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_11__*) #1

declare dso_local i64 @CreateWindowW(i32, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @GetWindowLongW(i64, i32) #1

declare dso_local i64 @GetWindowLongPtrW(i64, i32) #1

declare dso_local i32 @SetWindowSubclass(i64, i32, i32, i32) #1

declare dso_local i64 @CreateWindowExW(i32, i32, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @SystemParametersInfoW(i32, i32, i32*, i32) #1

declare dso_local i8* @CreateFontIndirectW(i32*) #1

declare dso_local i32 @COMBOEX_ReSize(%struct.TYPE_13__*) #1

declare dso_local i32 @SetWindowPos(i64, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @COMBOEX_AdjustEditPos(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
