; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_wordpad.c_OnInitPopupMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_wordpad.c_OnInitPopupMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32 }

@IDC_EDITOR = common dso_local global i32 0, align 4
@IDC_STATUSBAR = common dso_local global i32 0, align 4
@hEditorWnd = common dso_local global i32 0, align 4
@EM_GETSEL = common dso_local global i32 0, align 4
@ID_EDIT_COPY = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4
@MF_ENABLED = common dso_local global i32 0, align 4
@ID_EDIT_CUT = common dso_local global i32 0, align 4
@EM_GETPARAFORMAT = common dso_local global i32 0, align 4
@ID_EDIT_READONLY = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@ES_READONLY = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@MF_UNCHECKED = common dso_local global i32 0, align 4
@ID_EDIT_MODIFIED = common dso_local global i32 0, align 4
@EM_GETMODIFY = common dso_local global i32 0, align 4
@PFM_ALIGNMENT = common dso_local global i32 0, align 4
@ID_ALIGN_LEFT = common dso_local global i32 0, align 4
@PFA_LEFT = common dso_local global i32 0, align 4
@ID_ALIGN_CENTER = common dso_local global i32 0, align 4
@PFA_CENTER = common dso_local global i32 0, align 4
@ID_ALIGN_RIGHT = common dso_local global i32 0, align 4
@PFA_RIGHT = common dso_local global i32 0, align 4
@ID_BULLET = common dso_local global i32 0, align 4
@PFN_BULLET = common dso_local global i64 0, align 8
@ID_EDIT_UNDO = common dso_local global i32 0, align 4
@EM_CANUNDO = common dso_local global i32 0, align 4
@ID_EDIT_REDO = common dso_local global i32 0, align 4
@EM_CANREDO = common dso_local global i32 0, align 4
@ID_TOGGLE_TOOLBAR = common dso_local global i32 0, align 4
@BANDID_TOOLBAR = common dso_local global i32 0, align 4
@ID_TOGGLE_FORMATBAR = common dso_local global i32 0, align 4
@BANDID_FORMATBAR = common dso_local global i32 0, align 4
@ID_TOGGLE_STATUSBAR = common dso_local global i32 0, align 4
@ID_TOGGLE_RULER = common dso_local global i32 0, align 4
@BANDID_RULER = common dso_local global i32 0, align 4
@GTL_NUMCHARS = common dso_local global i32 0, align 4
@EM_GETTEXTLENGTHEX = common dso_local global i32 0, align 4
@ID_FIND = common dso_local global i32 0, align 4
@MIIM_DATA = common dso_local global i32 0, align 4
@ID_FIND_NEXT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ID_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @OnInitPopupMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OnInitPopupMenu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @IDC_EDITOR, align 4
  %18 = call i32 @GetDlgItem(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IDC_STATUSBAR, align 4
  %21 = call i32 @GetDlgItem(i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  %22 = load i32, i32* @hEditorWnd, align 4
  %23 = load i32, i32* @EM_GETSEL, align 4
  %24 = ptrtoint i32* %10 to i32
  %25 = ptrtoint i32* %11 to i32
  %26 = call i64 @SendMessageW(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ID_EDIT_COPY, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @MF_GRAYED, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @MF_ENABLED, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @EnableMenuItem(i32 %27, i32 %28, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ID_EDIT_CUT, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @MF_GRAYED, align 4
  br label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @MF_ENABLED, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = call i32 @EnableMenuItem(i32 %39, i32 %40, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 24, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @EM_GETPARAFORMAT, align 4
  %54 = ptrtoint %struct.TYPE_5__* %8 to i32
  %55 = call i64 @SendMessageW(i32 %52, i32 %53, i32 0, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @ID_EDIT_READONLY, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @GWL_STYLE, align 4
  %60 = call i32 @GetWindowLongW(i32 %58, i32 %59)
  %61 = load i32, i32* @ES_READONLY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* @MF_CHECKED, align 4
  br label %68

66:                                               ; preds = %48
  %67 = load i32, i32* @MF_UNCHECKED, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = call i32 @CheckMenuItem(i32 %56, i32 %57, i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @ID_EDIT_MODIFIED, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @EM_GETMODIFY, align 4
  %75 = call i64 @SendMessageW(i32 %73, i32 %74, i32 0, i32 0)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @MF_CHECKED, align 4
  br label %81

79:                                               ; preds = %68
  %80 = load i32, i32* @MF_UNCHECKED, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = call i32 @CheckMenuItem(i32 %71, i32 %72, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PFM_ALIGNMENT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %89, %81
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @ID_ALIGN_LEFT, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @PFA_LEFT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @MF_CHECKED, align 4
  br label %102

100:                                              ; preds = %92
  %101 = load i32, i32* @MF_UNCHECKED, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = call i32 @CheckMenuItem(i32 %93, i32 %94, i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @ID_ALIGN_CENTER, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @PFA_CENTER, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* @MF_CHECKED, align 4
  br label %114

112:                                              ; preds = %102
  %113 = load i32, i32* @MF_UNCHECKED, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = call i32 @CheckMenuItem(i32 %105, i32 %106, i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @ID_ALIGN_RIGHT, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @PFA_RIGHT, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* @MF_CHECKED, align 4
  br label %126

124:                                              ; preds = %114
  %125 = load i32, i32* @MF_UNCHECKED, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = call i32 @CheckMenuItem(i32 %117, i32 %118, i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @ID_BULLET, align 4
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @PFN_BULLET, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* @MF_CHECKED, align 4
  br label %139

137:                                              ; preds = %126
  %138 = load i32, i32* @MF_UNCHECKED, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  %141 = call i32 @CheckMenuItem(i32 %129, i32 %130, i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @ID_EDIT_UNDO, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @EM_CANUNDO, align 4
  %146 = call i64 @SendMessageW(i32 %144, i32 %145, i32 0, i32 0)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i32, i32* @MF_ENABLED, align 4
  br label %152

150:                                              ; preds = %139
  %151 = load i32, i32* @MF_GRAYED, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = call i32 @EnableMenuItem(i32 %142, i32 %143, i32 %153)
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @ID_EDIT_REDO, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @EM_CANREDO, align 4
  %159 = call i64 @SendMessageW(i32 %157, i32 %158, i32 0, i32 0)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = load i32, i32* @MF_ENABLED, align 4
  br label %165

163:                                              ; preds = %152
  %164 = load i32, i32* @MF_GRAYED, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = call i32 @EnableMenuItem(i32 %155, i32 %156, i32 %166)
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @ID_TOGGLE_TOOLBAR, align 4
  %170 = load i32, i32* @BANDID_TOOLBAR, align 4
  %171 = call i64 @is_bar_visible(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %165
  %174 = load i32, i32* @MF_CHECKED, align 4
  br label %177

175:                                              ; preds = %165
  %176 = load i32, i32* @MF_UNCHECKED, align 4
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i32 [ %174, %173 ], [ %176, %175 ]
  %179 = call i32 @CheckMenuItem(i32 %168, i32 %169, i32 %178)
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @ID_TOGGLE_FORMATBAR, align 4
  %182 = load i32, i32* @BANDID_FORMATBAR, align 4
  %183 = call i64 @is_bar_visible(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i32, i32* @MF_CHECKED, align 4
  br label %189

187:                                              ; preds = %177
  %188 = load i32, i32* @MF_UNCHECKED, align 4
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %191 = call i32 @CheckMenuItem(i32 %180, i32 %181, i32 %190)
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @ID_TOGGLE_STATUSBAR, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i64 @IsWindowVisible(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* @MF_CHECKED, align 4
  br label %201

199:                                              ; preds = %189
  %200 = load i32, i32* @MF_UNCHECKED, align 4
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ]
  %203 = call i32 @CheckMenuItem(i32 %192, i32 %193, i32 %202)
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* @ID_TOGGLE_RULER, align 4
  %206 = load i32, i32* @BANDID_RULER, align 4
  %207 = call i64 @is_bar_visible(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %201
  %210 = load i32, i32* @MF_CHECKED, align 4
  br label %213

211:                                              ; preds = %201
  %212 = load i32, i32* @MF_UNCHECKED, align 4
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi i32 [ %210, %209 ], [ %212, %211 ]
  %215 = call i32 @CheckMenuItem(i32 %204, i32 %205, i32 %214)
  %216 = load i32, i32* @GTL_NUMCHARS, align 4
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %216, i32* %217, align 4
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 1200, i32* %218, align 4
  %219 = load i32, i32* @hEditorWnd, align 4
  %220 = load i32, i32* @EM_GETTEXTLENGTHEX, align 4
  %221 = ptrtoint %struct.TYPE_7__* %12 to i32
  %222 = call i64 @SendMessageW(i32 %219, i32 %220, i32 %221, i32 0)
  store i64 %222, i64* %13, align 8
  %223 = load i32, i32* %5, align 4
  %224 = load i32, i32* @ID_FIND, align 4
  %225 = load i64, i64* %13, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %213
  %228 = load i32, i32* @MF_ENABLED, align 4
  br label %231

229:                                              ; preds = %213
  %230 = load i32, i32* @MF_GRAYED, align 4
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi i32 [ %228, %227 ], [ %230, %229 ]
  %233 = call i32 @EnableMenuItem(i32 %223, i32 %224, i32 %232)
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 24, i32* %234, align 8
  %235 = load i32, i32* @MIIM_DATA, align 4
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32 %235, i32* %236, align 8
  %237 = load i32, i32* %5, align 4
  %238 = load i32, i32* @ID_FIND_NEXT, align 4
  %239 = load i32, i32* @FALSE, align 4
  %240 = call i32 @GetMenuItemInfoW(i32 %237, i32 %238, i32 %239, %struct.TYPE_6__* %14)
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* @ID_FIND_NEXT, align 4
  %243 = load i64, i64* %13, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %231
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = load i32, i32* @MF_ENABLED, align 4
  br label %253

251:                                              ; preds = %245, %231
  %252 = load i32, i32* @MF_GRAYED, align 4
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi i32 [ %250, %249 ], [ %252, %251 ]
  %255 = call i32 @EnableMenuItem(i32 %241, i32 %242, i32 %254)
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* @ID_REPLACE, align 4
  %258 = load i64, i64* %13, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %253
  %261 = load i32, i32* @MF_ENABLED, align 4
  br label %264

262:                                              ; preds = %253
  %263 = load i32, i32* @MF_GRAYED, align 4
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi i32 [ %261, %260 ], [ %263, %262 ]
  %266 = call i32 @EnableMenuItem(i32 %256, i32 %257, i32 %265)
  ret i64 0
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @EnableMenuItem(i32, i32, i32) #1

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #1

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i64 @is_bar_visible(i32) #1

declare dso_local i64 @IsWindowVisible(i32) #1

declare dso_local i32 @GetMenuItemInfoW(i32, i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
