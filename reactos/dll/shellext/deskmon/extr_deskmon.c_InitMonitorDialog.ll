; ModuleID = '/home/carl/AnghaBench/reactos/dll/shellext/deskmon/extr_deskmon.c_InitMonitorDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/shellext/deskmon/extr_deskmon.c_InitMonitorDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32*, i32*, %struct.TYPE_13__*, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32* (i32)* }
%struct.TYPE_16__ = type { i32 }

@DESK_EXT_DISPLAYDEVICE = common dso_local global i32 0, align 4
@LMEM_FIXED = common dso_local global i32 0, align 4
@DESK_EXT_MONITORNAME = common dso_local global i32 0, align 4
@IDC_MONITORNAME = common dso_local global i32 0, align 4
@IDC_MONITORLIST = common dso_local global i32 0, align 4
@LB_RESETCONTENT = common dso_local global i32 0, align 4
@LB_ADDSTRING = common dso_local global i32 0, align 4
@LB_SETITEMDATA = common dso_local global i32 0, align 4
@LB_SETCURSEL = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @InitMonitorDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitMonitorDialog(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__**, align 8
  %7 = alloca %struct.TYPE_16__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %4, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %16, align 8
  br label %17

17:                                               ; preds = %20, %1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %5, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = ptrtoint %struct.TYPE_15__* %24 to i32
  %26 = call i32 @LocalFree(i32 %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %4, align 8
  br label %17

28:                                               ; preds = %17
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %30, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 8
  %40 = load i32*, i32** %39, align 8
  %41 = ptrtoint i32* %40 to i32
  %42 = call i32 @LocalFree(i32 %41)
  br label %43

43:                                               ; preds = %37, %28
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DESK_EXT_DISPLAYDEVICE, align 4
  %48 = call i32 @RegisterClipboardFormat(i32 %47)
  %49 = call i8* @QueryDeskCplString(i32 %46, i32 %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 8
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 7
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = icmp ne %struct.TYPE_13__* %55, null
  br i1 %56, label %57, label %115

57:                                               ; preds = %43
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 8
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %101

62:                                               ; preds = %57
  store i64 0, i64* %10, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 3
  store %struct.TYPE_15__** %64, %struct.TYPE_15__*** %6, align 8
  br label %65

65:                                               ; preds = %97, %62
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  store i32 4, i32* %66, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 8
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %10, align 8
  %72 = trunc i64 %70 to i32
  %73 = call i64 @EnumDisplayDevices(i32* %69, i32 %72, %struct.TYPE_16__* %7, i32 0)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %65
  %77 = load i32, i32* @LMEM_FIXED, align 4
  %78 = call %struct.TYPE_15__* @LocalAlloc(i32 %77, i32 16)
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %4, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = icmp ne %struct.TYPE_15__* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = call i32 @CopyMemory(%struct.TYPE_12__* %83, %struct.TYPE_16__* %7, i32 4)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %86, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store %struct.TYPE_15__** %90, %struct.TYPE_15__*** %6, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %81, %76
  br label %96

96:                                               ; preds = %95, %65
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %8, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %65, label %100

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %100, %57
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 7
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32* (i32)*, i32* (i32)** %105, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 7
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32* %106(i32 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 5
  store i32* %112, i32** %114, align 8
  br label %118

115:                                              ; preds = %43
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 5
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %115, %101
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 6
  store i32* %121, i32** %123, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %149

128:                                              ; preds = %118
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @DESK_EXT_MONITORNAME, align 4
  %133 = call i32 @RegisterClipboardFormat(i32 %132)
  %134 = call i8* @QueryDeskCplString(i32 %131, i32 %133)
  %135 = bitcast i8* %134 to i32*
  store i32* %135, i32** %11, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IDC_MONITORNAME, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = call i32 @SetDlgItemText(i32 %138, i32 %139, i32* %140)
  %142 = load i32*, i32** %11, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %128
  %145 = load i32*, i32** %11, align 8
  %146 = ptrtoint i32* %145 to i32
  %147 = call i32 @LocalFree(i32 %146)
  br label %148

148:                                              ; preds = %144, %128
  br label %232

149:                                              ; preds = %118
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %171

154:                                              ; preds = %149
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  store %struct.TYPE_15__* %157, %struct.TYPE_15__** %159, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @IDC_MONITORNAME, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @SetDlgItemText(i32 %162, i32 %163, i32* %169)
  br label %231

171:                                              ; preds = %149
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @IDC_MONITORLIST, align 4
  %176 = load i32, i32* @LB_RESETCONTENT, align 4
  %177 = call i64 @SendDlgItemMessage(i32 %174, i32 %175, i32 %176, i32 0, i32 0)
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  store %struct.TYPE_15__* %180, %struct.TYPE_15__** %4, align 8
  br label %181

181:                                              ; preds = %226, %171
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %183 = icmp ne %struct.TYPE_15__* %182, null
  br i1 %183, label %184, label %230

184:                                              ; preds = %181
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @IDC_MONITORLIST, align 4
  %189 = load i32, i32* @LB_ADDSTRING, align 4
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = ptrtoint i32* %193 to i32
  %195 = call i64 @SendDlgItemMessage(i32 %187, i32 %188, i32 %189, i32 0, i32 %194)
  store i64 %195, i64* %9, align 8
  %196 = load i64, i64* %9, align 8
  %197 = icmp sge i64 %196, 0
  br i1 %197, label %198, label %226

198:                                              ; preds = %184
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @IDC_MONITORLIST, align 4
  %203 = load i32, i32* @LB_SETITEMDATA, align 4
  %204 = load i64, i64* %9, align 8
  %205 = trunc i64 %204 to i32
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %207 = ptrtoint %struct.TYPE_15__* %206 to i32
  %208 = call i64 @SendDlgItemMessage(i32 %201, i32 %202, i32 %203, i32 %205, i32 %207)
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %210, align 8
  %212 = icmp eq %struct.TYPE_15__* %211, null
  br i1 %212, label %213, label %225

213:                                              ; preds = %198
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @IDC_MONITORLIST, align 4
  %218 = load i32, i32* @LB_SETCURSEL, align 4
  %219 = load i64, i64* %9, align 8
  %220 = trunc i64 %219 to i32
  %221 = call i64 @SendDlgItemMessage(i32 %216, i32 %217, i32 %218, i32 %220, i32 0)
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 2
  store %struct.TYPE_15__* %222, %struct.TYPE_15__** %224, align 8
  br label %225

225:                                              ; preds = %213, %198
  br label %226

226:                                              ; preds = %225, %184
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %228, align 8
  store %struct.TYPE_15__* %229, %struct.TYPE_15__** %4, align 8
  br label %181

230:                                              ; preds = %181
  br label %231

231:                                              ; preds = %230, %154
  br label %232

232:                                              ; preds = %231, %148
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @IDC_MONITORNAME, align 4
  %237 = call i32 @GetDlgItem(i32 %235, i32 %236)
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp sle i32 %240, 1
  br i1 %241, label %242, label %244

242:                                              ; preds = %232
  %243 = load i32, i32* @SW_SHOW, align 4
  br label %246

244:                                              ; preds = %232
  %245 = load i32, i32* @SW_HIDE, align 4
  br label %246

246:                                              ; preds = %244, %242
  %247 = phi i32 [ %243, %242 ], [ %245, %244 ]
  %248 = call i32 @ShowWindow(i32 %237, i32 %247)
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @IDC_MONITORLIST, align 4
  %253 = call i32 @GetDlgItem(i32 %251, i32 %252)
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp sgt i32 %256, 1
  br i1 %257, label %258, label %260

258:                                              ; preds = %246
  %259 = load i32, i32* @SW_SHOW, align 4
  br label %262

260:                                              ; preds = %246
  %261 = load i32, i32* @SW_HIDE, align 4
  br label %262

262:                                              ; preds = %260, %258
  %263 = phi i32 [ %259, %258 ], [ %261, %260 ]
  %264 = call i32 @ShowWindow(i32 %253, i32 %263)
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %266 = call i32 @UpdateRefreshFrequencyList(%struct.TYPE_14__* %265)
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %268 = call i32 @UpdateMonitorSelection(%struct.TYPE_14__* %267)
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i8* @QueryDeskCplString(i32, i32) #1

declare dso_local i32 @RegisterClipboardFormat(i32) #1

declare dso_local i64 @EnumDisplayDevices(i32*, i32, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_15__* @LocalAlloc(i32, i32) #1

declare dso_local i32 @CopyMemory(%struct.TYPE_12__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @SetDlgItemText(i32, i32, i32*) #1

declare dso_local i64 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @UpdateRefreshFrequencyList(%struct.TYPE_14__*) #1

declare dso_local i32 @UpdateMonitorSelection(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
