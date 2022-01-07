; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_DrawThumb.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_DrawThumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }

@TBS_BOTH = common dso_local global i32 0, align 4
@TBS_VERT = common dso_local global i32 0, align 4
@TKP_THUMBVERT = common dso_local global i32 0, align 4
@TKP_THUMB = common dso_local global i32 0, align 4
@TBS_LEFT = common dso_local global i32 0, align 4
@TKP_THUMBLEFT = common dso_local global i32 0, align 4
@TKP_THUMBTOP = common dso_local global i32 0, align 4
@TKP_THUMBRIGHT = common dso_local global i32 0, align 4
@TKP_THUMBBOTTOM = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@TUS_DISABLED = common dso_local global i32 0, align 4
@TB_DRAG_MODE = common dso_local global i32 0, align 4
@TUS_PRESSED = common dso_local global i32 0, align 4
@TB_THUMB_HOT = common dso_local global i32 0, align 4
@TUS_HOT = common dso_local global i32 0, align 4
@TUS_NORMAL = common dso_local global i32 0, align 4
@comctl32_color = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@COMCTL32_hPattern55AABrush = common dso_local global i32 0, align 4
@COLOR_SCROLLBAR = common dso_local global i32 0, align 4
@COLOR_BTNFACE = common dso_local global i32 0, align 4
@EDGE_RAISED = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@BF_SOFT = common dso_local global i32 0, align 4
@BF_TOP = common dso_local global i32 0, align 4
@BF_RIGHT = common dso_local global i32 0, align 4
@BF_BOTTOM = common dso_local global i32 0, align 4
@BF_DIAGONAL_ENDTOPRIGHT = common dso_local global i32 0, align 4
@EDGE_SUNKEN = common dso_local global i32 0, align 4
@BF_DIAGONAL_ENDTOPLEFT = common dso_local global i32 0, align 4
@BF_LEFT = common dso_local global i32 0, align 4
@BF_DIAGONAL_ENDBOTTOMLEFT = common dso_local global i32 0, align 4
@TBS_TOP = common dso_local global i32 0, align 4
@BF_DIAGONAL_ENDBOTTOMRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @TRACKBAR_DrawThumb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TRACKBAR_DrawThumb(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @GetWindowTheme(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %110

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TBS_BOTH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TBS_VERT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @TKP_THUMBVERT, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @TKP_THUMB, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %8, align 4
  br label %71

37:                                               ; preds = %17
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TBS_LEFT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TBS_VERT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @TKP_THUMBLEFT, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @TKP_THUMBTOP, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %8, align 4
  br label %70

57:                                               ; preds = %37
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TBS_VERT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @TKP_THUMBRIGHT, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @TKP_THUMBBOTTOM, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %68, %55
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @WS_DISABLED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @TUS_DISABLED, align 4
  store i32 %79, i32* %9, align 4
  br label %102

80:                                               ; preds = %71
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TB_DRAG_MODE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @TUS_PRESSED, align 4
  store i32 %88, i32* %9, align 4
  br label %101

89:                                               ; preds = %80
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TB_THUMB_HOT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @TUS_HOT, align 4
  store i32 %97, i32* %9, align 4
  br label %100

98:                                               ; preds = %89
  %99 = load i32, i32* @TUS_NORMAL, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %98, %96
  br label %101

101:                                              ; preds = %100, %87
  br label %102

102:                                              ; preds = %101, %78
  %103 = load i64, i64* %5, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = call i32 @DrawThemeBackground(i64 %103, i32 %104, i32 %105, i32 %106, %struct.TYPE_9__* %108, i32* null)
  br label %429

110:                                              ; preds = %2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @WS_DISABLED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TB_DRAG_MODE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %117, %110
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @comctl32_color, i32 0, i32 0), align 8
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @comctl32_color, i32 0, i32 1), align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @COMCTL32_hPattern55AABrush, align 4
  store i32 %129, i32* %7, align 4
  br label %133

130:                                              ; preds = %124
  %131 = load i32, i32* @COLOR_SCROLLBAR, align 4
  %132 = call i32 @GetSysColorBrush(i32 %131)
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %130, %128
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @comctl32_color, i32 0, i32 2), align 8
  %136 = call i32 @SetTextColor(i32 %134, i32 %135)
  %137 = load i32, i32* %4, align 4
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @comctl32_color, i32 0, i32 0), align 8
  %139 = call i32 @SetBkColor(i32 %137, i64 %138)
  br label %143

140:                                              ; preds = %117
  %141 = load i32, i32* @COLOR_BTNFACE, align 4
  %142 = call i32 @GetSysColorBrush(i32 %141)
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %140, %133
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @TRACKBAR_FillThumb(%struct.TYPE_8__* %144, i32 %145, i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TBS_BOTH, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %143
  %155 = load i32, i32* %4, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load i32, i32* @EDGE_RAISED, align 4
  %159 = load i32, i32* @BF_RECT, align 4
  %160 = load i32, i32* @BF_SOFT, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @DrawEdge(i32 %155, %struct.TYPE_9__* %157, i32 %158, i32 %161)
  br label %429

163:                                              ; preds = %143
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = bitcast %struct.TYPE_9__* %10 to i8*
  %167 = bitcast %struct.TYPE_9__* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 %167, i64 24, i1 false)
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @TBS_VERT, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %300

174:                                              ; preds = %163
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @TBS_LEFT, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %241

181:                                              ; preds = %174
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, %183
  store i64 %186, i64* %184, align 8
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @EDGE_RAISED, align 4
  %189 = load i32, i32* @BF_TOP, align 4
  %190 = load i32, i32* @BF_RIGHT, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @BF_BOTTOM, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @BF_SOFT, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @DrawEdge(i32 %187, %struct.TYPE_9__* %10, i32 %188, i32 %195)
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %200, %198
  store i64 %201, i64* %199, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %203, %205
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i64 %206, i64* %207, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %211, %212
  %214 = add nsw i32 %213, 1
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %214, i32* %215, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @EDGE_RAISED, align 4
  %223 = load i32, i32* @BF_DIAGONAL_ENDTOPRIGHT, align 4
  %224 = load i32, i32* @BF_SOFT, align 4
  %225 = or i32 %223, %224
  %226 = call i32 @DrawEdge(i32 %221, %struct.TYPE_9__* %10, i32 %222, i32 %225)
  %227 = load i32, i32* %6, align 4
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, %227
  store i32 %230, i32* %228, align 4
  %231 = load i32, i32* %6, align 4
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, %231
  store i32 %234, i32* %232, align 8
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* @EDGE_SUNKEN, align 4
  %237 = load i32, i32* @BF_DIAGONAL_ENDTOPLEFT, align 4
  %238 = load i32, i32* @BF_SOFT, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @DrawEdge(i32 %235, %struct.TYPE_9__* %10, i32 %236, i32 %239)
  br label %429

241:                                              ; preds = %174
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = sub nsw i64 %245, %243
  store i64 %246, i64* %244, align 8
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* @EDGE_RAISED, align 4
  %249 = load i32, i32* @BF_TOP, align 4
  %250 = load i32, i32* @BF_LEFT, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @BF_BOTTOM, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @BF_SOFT, align 4
  %255 = or i32 %253, %254
  %256 = call i32 @DrawEdge(i32 %247, %struct.TYPE_9__* %10, i32 %248, i32 %255)
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  store i64 %258, i64* %259, align 8
  %260 = load i32, i32* %6, align 4
  %261 = add nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, %262
  store i64 %265, i64* %263, align 8
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %6, align 4
  %271 = add nsw i32 %269, %270
  %272 = add nsw i32 %271, 1
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %272, i32* %273, align 8
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %277, i32* %278, align 4
  %279 = load i32, i32* %4, align 4
  %280 = load i32, i32* @EDGE_RAISED, align 4
  %281 = load i32, i32* @BF_DIAGONAL_ENDTOPLEFT, align 4
  %282 = load i32, i32* @BF_SOFT, align 4
  %283 = or i32 %281, %282
  %284 = call i32 @DrawEdge(i32 %279, %struct.TYPE_9__* %10, i32 %280, i32 %283)
  %285 = load i32, i32* %6, align 4
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, %285
  store i32 %288, i32* %286, align 4
  %289 = load i32, i32* %6, align 4
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = add nsw i32 %291, %289
  store i32 %292, i32* %290, align 8
  %293 = load i32, i32* %4, align 4
  %294 = load i32, i32* @EDGE_RAISED, align 4
  %295 = load i32, i32* @BF_DIAGONAL_ENDBOTTOMLEFT, align 4
  %296 = load i32, i32* @BF_SOFT, align 4
  %297 = or i32 %295, %296
  %298 = call i32 @DrawEdge(i32 %293, %struct.TYPE_9__* %10, i32 %294, i32 %297)
  br label %299

299:                                              ; preds = %241
  br label %428

300:                                              ; preds = %163
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @TBS_TOP, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %367

307:                                              ; preds = %300
  %308 = load i32, i32* %6, align 4
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, %308
  store i32 %311, i32* %309, align 4
  %312 = load i32, i32* %4, align 4
  %313 = load i32, i32* @EDGE_RAISED, align 4
  %314 = load i32, i32* @BF_LEFT, align 4
  %315 = load i32, i32* @BF_BOTTOM, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @BF_RIGHT, align 4
  %318 = or i32 %316, %317
  %319 = load i32, i32* @BF_SOFT, align 4
  %320 = or i32 %318, %319
  %321 = call i32 @DrawEdge(i32 %312, %struct.TYPE_9__* %10, i32 %313, i32 %320)
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  store i64 %325, i64* %326, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = add nsw i64 %328, %330
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i64 %331, i64* %332, align 8
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %6, align 4
  %338 = add nsw i32 %336, %337
  %339 = add nsw i32 %338, 1
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %339, i32* %340, align 8
  %341 = load i32, i32* %6, align 4
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = sub nsw i32 %343, %341
  store i32 %344, i32* %342, align 4
  %345 = load i32, i32* %4, align 4
  %346 = load i32, i32* @EDGE_RAISED, align 4
  %347 = load i32, i32* @BF_DIAGONAL_ENDTOPRIGHT, align 4
  %348 = load i32, i32* @BF_SOFT, align 4
  %349 = or i32 %347, %348
  %350 = call i32 @DrawEdge(i32 %345, %struct.TYPE_9__* %10, i32 %346, i32 %349)
  %351 = load i32, i32* %6, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = add nsw i64 %354, %352
  store i64 %355, i64* %353, align 8
  %356 = load i32, i32* %6, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = add nsw i64 %359, %357
  store i64 %360, i64* %358, align 8
  %361 = load i32, i32* %4, align 4
  %362 = load i32, i32* @EDGE_RAISED, align 4
  %363 = load i32, i32* @BF_DIAGONAL_ENDBOTTOMRIGHT, align 4
  %364 = load i32, i32* @BF_SOFT, align 4
  %365 = or i32 %363, %364
  %366 = call i32 @DrawEdge(i32 %361, %struct.TYPE_9__* %10, i32 %362, i32 %365)
  br label %427

367:                                              ; preds = %300
  %368 = load i32, i32* %6, align 4
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = sub nsw i32 %370, %368
  store i32 %371, i32* %369, align 8
  %372 = load i32, i32* %4, align 4
  %373 = load i32, i32* @EDGE_RAISED, align 4
  %374 = load i32, i32* @BF_LEFT, align 4
  %375 = load i32, i32* @BF_TOP, align 4
  %376 = or i32 %374, %375
  %377 = load i32, i32* @BF_RIGHT, align 4
  %378 = or i32 %376, %377
  %379 = load i32, i32* @BF_SOFT, align 4
  %380 = or i32 %378, %379
  %381 = call i32 @DrawEdge(i32 %372, %struct.TYPE_9__* %10, i32 %373, i32 %380)
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  store i64 %385, i64* %386, align 8
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %388 = load i64, i64* %387, align 8
  %389 = load i32, i32* %6, align 4
  %390 = sext i32 %389 to i64
  %391 = add nsw i64 %388, %390
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i64 %391, i64* %392, align 8
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* %6, align 4
  %398 = sub nsw i32 %396, %397
  %399 = sub nsw i32 %398, 1
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %399, i32* %400, align 4
  %401 = load i32, i32* %6, align 4
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = add nsw i32 %403, %401
  store i32 %404, i32* %402, align 8
  %405 = load i32, i32* %4, align 4
  %406 = load i32, i32* @EDGE_RAISED, align 4
  %407 = load i32, i32* @BF_DIAGONAL_ENDTOPLEFT, align 4
  %408 = load i32, i32* @BF_SOFT, align 4
  %409 = or i32 %407, %408
  %410 = call i32 @DrawEdge(i32 %405, %struct.TYPE_9__* %10, i32 %406, i32 %409)
  %411 = load i32, i32* %6, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %414 = load i64, i64* %413, align 8
  %415 = add nsw i64 %414, %412
  store i64 %415, i64* %413, align 8
  %416 = load i32, i32* %6, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = add nsw i64 %419, %417
  store i64 %420, i64* %418, align 8
  %421 = load i32, i32* %4, align 4
  %422 = load i32, i32* @EDGE_RAISED, align 4
  %423 = load i32, i32* @BF_DIAGONAL_ENDBOTTOMLEFT, align 4
  %424 = load i32, i32* @BF_SOFT, align 4
  %425 = or i32 %423, %424
  %426 = call i32 @DrawEdge(i32 %421, %struct.TYPE_9__* %10, i32 %422, i32 %425)
  br label %427

427:                                              ; preds = %367, %307
  br label %428

428:                                              ; preds = %427, %299
  br label %429

429:                                              ; preds = %102, %154, %181, %428
  ret void
}

declare dso_local i64 @GetWindowTheme(i32) #1

declare dso_local i32 @DrawThemeBackground(i64, i32, i32, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @SetBkColor(i32, i64) #1

declare dso_local i32 @TRACKBAR_FillThumb(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @DrawEdge(i32, %struct.TYPE_9__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
