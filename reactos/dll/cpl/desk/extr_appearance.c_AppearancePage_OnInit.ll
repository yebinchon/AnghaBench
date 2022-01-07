; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_appearance.c_AppearancePage_OnInit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_appearance.c_AppearancePage_OnInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_23__, %struct.TYPE_20__*, i32, i32, %struct.TYPE_23__, i8*, i8*, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_20__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@DWLP_USER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@g_GlobalData = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i32] [i32 79, i32 112, i32 101, i32 110, i32 77, i32 83, i32 84, i32 104, i32 101, i32 109, i32 101, i32 0], align 4
@PSM_CHANGED = common dso_local global i32 0, align 4
@IDC_APPEARANCE_PREVIEW = common dso_local global i32 0, align 4
@IDC_APPEARANCE_VISUAL_STYLE = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @AppearancePage_OnInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AppearancePage_OnInit(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %11 = call i32 (...) @GetProcessHeap()
  %12 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %13 = call i64 @HeapAlloc(i32 %11, i32 %12, i32 112)
  %14 = inttoptr i64 %13 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %6, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %16 = icmp eq %struct.TYPE_21__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %2, align 8
  br label %228

19:                                               ; preds = %1
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* @DWLP_USER, align 4
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %23 = ptrtoint %struct.TYPE_21__* %22 to i32
  %24 = call i32 @SetWindowLongPtr(i64 %20, i32 %21, i32 %23)
  %25 = load i8*, i8** @TRUE, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 8
  %30 = call i32 @LoadCurrentScheme(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %19
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %2, align 8
  br label %228

34:                                               ; preds = %19
  %35 = call %struct.TYPE_20__* (...) @LoadThemes()
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 2
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %37, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = icmp ne %struct.TYPE_20__* %40, null
  br i1 %41, label %42, label %222

42:                                               ; preds = %34
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @g_GlobalData, i32 0, i32 1), align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @g_GlobalData, i32 0, i32 0), align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @g_GlobalData, i32 0, i32 1), align 8
  %51 = call i64 @wcscmp(i64 %50, i8* bitcast ([12 x i32]* @.str to i8*))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @g_GlobalData, i32 0, i32 0), align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = call i64 @FindOrAppendTheme(%struct.TYPE_20__* %56, i64 %57, i32* null, i32* null, %struct.TYPE_23__* %59)
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %53, %49, %46, %42
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i8*, i8** @TRUE, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @TRUE, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @GetParent(i64 %71)
  %73 = load i32, i32* @PSM_CHANGED, align 4
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @PostMessageW(i32 %72, i32 %73, i64 %74, i32 0)
  %76 = load i64, i64* %3, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %78 = call i32 @AppearancePage_LoadSelectedScheme(i64 %76, %struct.TYPE_21__* %77)
  br label %93

79:                                               ; preds = %61
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = call i32 @GetActiveTheme(%struct.TYPE_20__* %82, %struct.TYPE_23__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %79
  %88 = load i64, i64* @FALSE, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  store i64 %88, i64* %91, align 8
  br label %92

92:                                               ; preds = %87, %79
  br label %93

93:                                               ; preds = %92, %64
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 5
  %99 = call i32 @GetActiveClassicTheme(%struct.TYPE_20__* %96, %struct.TYPE_23__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %125, label %101

101:                                              ; preds = %93
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  store %struct.TYPE_20__* %104, %struct.TYPE_20__** %107, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 2
  store %struct.TYPE_18__* %112, %struct.TYPE_18__** %115, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 8
  br label %125

125:                                              ; preds = %101, %93
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @FALSE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 5
  %137 = bitcast %struct.TYPE_23__* %134 to i8*
  %138 = bitcast %struct.TYPE_23__* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 32, i1 false)
  br label %139

139:                                              ; preds = %132, %125
  %140 = load i64, i64* %3, align 8
  %141 = load i32, i32* @IDC_APPEARANCE_PREVIEW, align 4
  %142 = call i64 @GetDlgItem(i64 %140, i32 %141)
  %143 = call i32 @GetClientRect(i64 %142, %struct.TYPE_19__* %7)
  %144 = call i32 @GetDC(i32* null)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @CreateCompatibleBitmap(i32 %145, i32 %147, i32 %149)
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @CreateCompatibleDC(i32 %153)
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @SelectObject(i32 %159, i32 %162)
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @ReleaseDC(i32* null, i32 %164)
  %166 = load i64, i64* %3, align 8
  %167 = load i32, i32* @IDC_APPEARANCE_VISUAL_STYLE, align 4
  %168 = call i64 @GetDlgItem(i64 %166, i32 %167)
  store i64 %168, i64* %5, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  store %struct.TYPE_20__* %171, %struct.TYPE_20__** %9, align 8
  br label %172

172:                                              ; preds = %201, %139
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %174 = icmp ne %struct.TYPE_20__* %173, null
  br i1 %174, label %175, label %205

175:                                              ; preds = %172
  %176 = load i64, i64* %5, align 8
  %177 = load i32, i32* @CB_ADDSTRING, align 4
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = call i64 @SendMessage(i64 %176, i32 %177, i64 0, i32 %181)
  store i64 %182, i64* %4, align 8
  %183 = load i64, i64* %5, align 8
  %184 = load i32, i32* @CB_SETITEMDATA, align 4
  %185 = load i64, i64* %4, align 8
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %187 = ptrtoint %struct.TYPE_20__* %186 to i32
  %188 = call i64 @SendMessage(i64 %183, i32 %184, i64 %185, i32 %187)
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %192, align 8
  %194 = icmp eq %struct.TYPE_20__* %189, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %175
  %196 = load i64, i64* %5, align 8
  %197 = load i32, i32* @CB_SETCURSEL, align 4
  %198 = load i64, i64* %4, align 8
  %199 = call i64 @SendMessage(i64 %196, i32 %197, i64 %198, i32 0)
  br label %200

200:                                              ; preds = %195, %175
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %203, align 8
  store %struct.TYPE_20__* %204, %struct.TYPE_20__** %9, align 8
  br label %172

205:                                              ; preds = %172
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %208, align 8
  %210 = icmp ne %struct.TYPE_20__* %209, null
  br i1 %210, label %211, label %221

211:                                              ; preds = %205
  %212 = load i64, i64* %3, align 8
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %214 = call i32 @AppearancePage_ShowColorSchemes(i64 %212, %struct.TYPE_21__* %213)
  %215 = load i64, i64* %3, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %217 = call i32 @AppearancePage_ShowSizes(i64 %215, %struct.TYPE_21__* %216)
  %218 = load i64, i64* %3, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %220 = call i32 @AppearancePage_UpdateThemePreview(i64 %218, %struct.TYPE_21__* %219)
  br label %221

221:                                              ; preds = %211, %205
  br label %222

222:                                              ; preds = %221, %34
  %223 = load i64, i64* @FALSE, align 8
  %224 = inttoptr i64 %223 to i8*
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  store i8* %224, i8** %226, align 8
  %227 = load i64, i64* @FALSE, align 8
  store i64 %227, i64* %2, align 8
  br label %228

228:                                              ; preds = %222, %32, %17
  %229 = load i64, i64* %2, align 8
  ret i64 %229
}

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetWindowLongPtr(i64, i32, i32) #1

declare dso_local i32 @LoadCurrentScheme(i32*) #1

declare dso_local %struct.TYPE_20__* @LoadThemes(...) #1

declare dso_local i64 @wcscmp(i64, i8*) #1

declare dso_local i64 @FindOrAppendTheme(%struct.TYPE_20__*, i64, i32*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @PostMessageW(i32, i32, i64, i32) #1

declare dso_local i32 @GetParent(i64) #1

declare dso_local i32 @AppearancePage_LoadSelectedScheme(i64, %struct.TYPE_21__*) #1

declare dso_local i32 @GetActiveTheme(%struct.TYPE_20__*, %struct.TYPE_23__*) #1

declare dso_local i32 @GetActiveClassicTheme(%struct.TYPE_20__*, %struct.TYPE_23__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_19__*) #1

declare dso_local i64 @GetDlgItem(i64, i32) #1

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i32 @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

declare dso_local i64 @SendMessage(i64, i32, i64, i32) #1

declare dso_local i32 @AppearancePage_ShowColorSchemes(i64, %struct.TYPE_21__*) #1

declare dso_local i32 @AppearancePage_ShowSizes(i64, %struct.TYPE_21__*) #1

declare dso_local i32 @AppearancePage_UpdateThemePreview(i64, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
