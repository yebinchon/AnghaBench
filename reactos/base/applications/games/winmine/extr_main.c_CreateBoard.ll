; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_CreateBoard.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_CreateBoard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__, i64, i32, i32, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_9__**, i64, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i8*, i8* }

@MB_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@NORMAL = common dso_local global i32 0, align 4
@MINE_WIDTH = common dso_local global i32 0, align 4
@BOARD_WMARGIN = common dso_local global i32 0, align 4
@MINE_HEIGHT = common dso_local global i32 0, align 4
@LED_HEIGHT = common dso_local global i32 0, align 4
@BOARD_HMARGIN = common dso_local global i32 0, align 4
@FACE_WIDTH = common dso_local global i32 0, align 4
@FACE_HEIGHT = common dso_local global i32 0, align 4
@LED_WIDTH = common dso_local global i32 0, align 4
@WAITING = common dso_local global i32 0, align 4
@SMILE_BMP = common dso_local global i32 0, align 4
@wnd_style = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RDW_INVALIDATE = common dso_local global i32 0, align 4
@RDW_UPDATENOW = common dso_local global i32 0, align 4
@RDW_ERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @CreateBoard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateBoard(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %10 = load i32, i32* @MB_NONE, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 17
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 15
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 16
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 14
  store i64 0, i64* %28, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %96, %1
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = icmp ule i32 %30, %34
  br i1 %35, label %36, label %99

36:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %92, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = icmp ule i32 %38, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %37
  %45 = load i8*, i8** @FALSE, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 13
  %48 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %48, i64 %50
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  store i8* %45, i8** %56, align 8
  %57 = load i8*, i8** @FALSE, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 13
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %60, i64 %62
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  store i8* %57, i8** %68, align 8
  %69 = load i32, i32* @NORMAL, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 13
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %72, i64 %74
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32 %69, i32* %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 13
  %83 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %83, i64 %85
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %44
  %93 = load i32, i32* %8, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %37

95:                                               ; preds = %37
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %29

99:                                               ; preds = %29
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @MINE_WIDTH, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* @BOARD_WMARGIN, align 4
  %106 = mul nsw i32 %105, 2
  %107 = add nsw i32 %104, %106
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MINE_HEIGHT, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* @LED_HEIGHT, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* @BOARD_HMARGIN, align 4
  %118 = mul nsw i32 %117, 3
  %119 = add nsw i32 %116, %118
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @BOARD_WMARGIN, align 4
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* @BOARD_HMARGIN, align 4
  %124 = mul nsw i32 %123, 2
  %125 = load i32, i32* @LED_HEIGHT, align 4
  %126 = add nsw i32 %124, %125
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %3, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @MINE_WIDTH, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %127, %132
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @MINE_HEIGHT, align 4
  %139 = mul nsw i32 %137, %138
  %140 = add nsw i32 %134, %139
  store i32 %140, i32* %5, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 12
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @SetRect(%struct.TYPE_11__* %142, i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = sdiv i32 %150, 2
  %152 = load i32, i32* @FACE_WIDTH, align 4
  %153 = sdiv i32 %152, 2
  %154 = sub nsw i32 %151, %153
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* @BOARD_HMARGIN, align 4
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @FACE_WIDTH, align 4
  %158 = add nsw i32 %156, %157
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @FACE_HEIGHT, align 4
  %161 = add nsw i32 %159, %160
  store i32 %161, i32* %5, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 11
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @SetRect(%struct.TYPE_11__* %163, i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* @BOARD_WMARGIN, align 4
  store i32 %169, i32* %3, align 4
  %170 = load i32, i32* @BOARD_HMARGIN, align 4
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @LED_WIDTH, align 4
  %173 = mul nsw i32 %172, 3
  %174 = add nsw i32 %171, %173
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @LED_HEIGHT, align 4
  %177 = add nsw i32 %175, %176
  store i32 %177, i32* %5, align 4
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 10
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @SetRect(%struct.TYPE_11__* %179, i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @BOARD_WMARGIN, align 4
  %189 = sub nsw i32 %187, %188
  %190 = load i32, i32* @LED_WIDTH, align 4
  %191 = mul nsw i32 %190, 3
  %192 = sub nsw i32 %189, %191
  store i32 %192, i32* %3, align 4
  %193 = load i32, i32* @BOARD_HMARGIN, align 4
  store i32 %193, i32* %4, align 4
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @BOARD_WMARGIN, align 4
  %198 = sub nsw i32 %196, %197
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @LED_HEIGHT, align 4
  %201 = add nsw i32 %199, %200
  store i32 %201, i32* %5, align 4
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 9
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* %5, align 4
  %208 = call i32 @SetRect(%struct.TYPE_11__* %203, i32 %204, i32 %205, i32 %206, i32 %207)
  %209 = load i32, i32* @WAITING, align 4
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 8
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* @SMILE_BMP, align 4
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 7
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 6
  store i64 0, i64* %216, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %228, %231
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %236, %239
  %241 = call i32 @SetRect(%struct.TYPE_11__* %9, i32 %220, i32 %224, i32 %232, i32 %240)
  %242 = load i32, i32* @wnd_style, align 4
  %243 = load i32, i32* @TRUE, align 4
  %244 = call i32 @AdjustWindowRect(%struct.TYPE_11__* %9, i32 %242, i32 %243)
  %245 = call i32 @MoveOnScreen(%struct.TYPE_11__* %9)
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = sub nsw i32 %254, %256
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %259, %261
  %263 = load i32, i32* @TRUE, align 4
  %264 = call i32 @MoveWindow(i32 %248, i32 %250, i32 %252, i32 %257, i32 %262, i32 %263)
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @RDW_INVALIDATE, align 4
  %269 = load i32, i32* @RDW_UPDATENOW, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @RDW_ERASE, align 4
  %272 = or i32 %270, %271
  %273 = call i32 @RedrawWindow(i32 %267, i32* null, i32 0, i32 %272)
  ret void
}

declare dso_local i32 @SetRect(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @AdjustWindowRect(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @MoveOnScreen(%struct.TYPE_11__*) #1

declare dso_local i32 @MoveWindow(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RedrawWindow(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
