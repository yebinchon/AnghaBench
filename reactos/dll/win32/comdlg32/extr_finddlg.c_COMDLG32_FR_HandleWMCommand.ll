; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_finddlg.c_COMDLG32_FR_HandleWMCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_finddlg.c_COMDLG32_FR_HandleWMCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@FR_MASK = common dso_local global i32 0, align 4
@FR_WINE_REPLACE = common dso_local global i32 0, align 4
@FR_DOWN = common dso_local global i32 0, align 4
@BN_CLICKED = common dso_local global i32 0, align 4
@edt1 = common dso_local global i32 0, align 4
@FR_FINDNEXT = common dso_local global i32 0, align 4
@FR_WINE_UNICODE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@FindReplaceMessage = common dso_local global i32 0, align 4
@FR_DIALOGTERM = common dso_local global i32 0, align 4
@FR_REPLACEALL = common dso_local global i32 0, align 4
@FR_REPLACE = common dso_local global i32 0, align 4
@edt2 = common dso_local global i32 0, align 4
@HelpMessage = common dso_local global i32 0, align 4
@EN_CHANGE = common dso_local global i32 0, align 4
@WM_GETTEXTLENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_11__*, i32, i32)* @COMDLG32_FR_HandleWMCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @COMDLG32_FR_HandleWMCommand(i32 %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @FR_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %12
  store i32 %19, i32* %17, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FR_WINE_REPLACE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load i32, i32* @FR_DOWN, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %28
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %27, %4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @BN_CLICKED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %281

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %280 [
    i32 131, label %42
    i32 132, label %112
    i32 129, label %137
    i32 130, label %139
    i32 128, label %258
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @edt1, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @GetDlgItemTextA(i32 %43, i32 %44, i32* %48, i32 %52)
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %111

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @COMDLG32_FR_GetFlags(i32 %56)
  %58 = load i32, i32* @FR_FINDNEXT, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %59
  store i32 %66, i32* %64, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FR_WINE_UNICODE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %55
  %75 = load i32, i32* @CP_ACP, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @MultiByteToWideChar(i32 %75, i32 0, i32* %79, i32 -1, i32 %85, i32 2147483647)
  br label %99

87:                                               ; preds = %55
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @strcpy(i32 %93, i32* %97)
  br label %99

99:                                               ; preds = %87, %74
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @FindReplaceMessage, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = ptrtoint %struct.TYPE_8__* %108 to i32
  %110 = call i32 @SendMessageA(i32 %103, i32 %104, i32 0, i32 %109)
  br label %111

111:                                              ; preds = %99, %42
  br label %280

112:                                              ; preds = %40
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @COMDLG32_FR_GetFlags(i32 %113)
  %115 = load i32, i32* @FR_DIALOGTERM, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %116
  store i32 %123, i32* %121, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @FindReplaceMessage, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = ptrtoint %struct.TYPE_8__* %132 to i32
  %134 = call i32 @SendMessageA(i32 %127, i32 %128, i32 0, i32 %133)
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @DestroyWindow(i32 %135)
  br label %280

137:                                              ; preds = %40
  %138 = load i32, i32* @FR_REPLACEALL, align 4
  store i32 %138, i32* %9, align 4
  br label %141

139:                                              ; preds = %40
  %140 = load i32, i32* @FR_REPLACE, align 4
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @FR_WINE_REPLACE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %257

149:                                              ; preds = %141
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @edt1, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @GetDlgItemTextA(i32 %150, i32 %151, i32* %155, i32 %159)
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %257

162:                                              ; preds = %149
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 0, i32* %167, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @edt2, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @GetDlgItemTextA(i32 %168, i32 %169, i32* %173, i32 %177)
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @COMDLG32_FR_GetFlags(i32 %179)
  %181 = load i32, i32* %9, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %182
  store i32 %189, i32* %187, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @FR_WINE_UNICODE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %222

197:                                              ; preds = %162
  %198 = load i32, i32* @CP_ACP, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @MultiByteToWideChar(i32 %198, i32 0, i32* %202, i32 -1, i32 %208, i32 2147483647)
  %210 = load i32, i32* @CP_ACP, align 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @MultiByteToWideChar(i32 %210, i32 0, i32* %214, i32 -1, i32 %220, i32 2147483647)
  br label %245

222:                                              ; preds = %162
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = call i32 @strcpy(i32 %228, i32* %232)
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @strcpy(i32 %239, i32* %243)
  br label %245

245:                                              ; preds = %222, %197
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @FindReplaceMessage, align 4
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %253, align 8
  %255 = ptrtoint %struct.TYPE_8__* %254 to i32
  %256 = call i32 @SendMessageA(i32 %249, i32 %250, i32 0, i32 %255)
  br label %257

257:                                              ; preds = %245, %149, %141
  br label %280

258:                                              ; preds = %40
  %259 = load i32, i32* %5, align 4
  %260 = call i32 @COMDLG32_FR_GetFlags(i32 %259)
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %260
  store i32 %267, i32* %265, align 4
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @HelpMessage, align 4
  %273 = load i32, i32* %5, align 4
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %276, align 8
  %278 = ptrtoint %struct.TYPE_8__* %277 to i32
  %279 = call i32 @SendMessageA(i32 %271, i32 %272, i32 %273, i32 %278)
  br label %280

280:                                              ; preds = %40, %258, %257, %112, %111
  br label %318

281:                                              ; preds = %36
  %282 = load i32, i32* %8, align 4
  %283 = load i32, i32* @EN_CHANGE, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %317

285:                                              ; preds = %281
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @edt1, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %317

289:                                              ; preds = %285
  %290 = load i32, i32* %5, align 4
  %291 = load i32, i32* @edt1, align 4
  %292 = load i32, i32* @WM_GETTEXTLENGTH, align 4
  %293 = call i64 @SendDlgItemMessageA(i32 %290, i32 %291, i32 %292, i32 0, i32 0)
  %294 = icmp sgt i64 %293, 0
  %295 = zext i1 %294 to i32
  store i32 %295, i32* %10, align 4
  %296 = load i32, i32* %5, align 4
  %297 = call i32 @GetDlgItem(i32 %296, i32 131)
  %298 = load i32, i32* %10, align 4
  %299 = call i32 @EnableWindow(i32 %297, i32 %298)
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @FR_WINE_REPLACE, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %316

307:                                              ; preds = %289
  %308 = load i32, i32* %5, align 4
  %309 = call i32 @GetDlgItem(i32 %308, i32 130)
  %310 = load i32, i32* %10, align 4
  %311 = call i32 @EnableWindow(i32 %309, i32 %310)
  %312 = load i32, i32* %5, align 4
  %313 = call i32 @GetDlgItem(i32 %312, i32 129)
  %314 = load i32, i32* %10, align 4
  %315 = call i32 @EnableWindow(i32 %313, i32 %314)
  br label %316

316:                                              ; preds = %307, %289
  br label %317

317:                                              ; preds = %316, %285, %281
  br label %318

318:                                              ; preds = %317, %280
  ret void
}

declare dso_local i32 @GetDlgItemTextA(i32, i32, i32*, i32) #1

declare dso_local i32 @COMDLG32_FR_GetFlags(i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

declare dso_local i64 @SendDlgItemMessageA(i32, i32, i32, i32, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
