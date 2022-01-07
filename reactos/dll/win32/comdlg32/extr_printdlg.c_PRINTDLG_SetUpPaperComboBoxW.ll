; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_SetUpPaperComboBoxW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_SetUpPaperComboBoxW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c" Printer: %s, Port: %s, ComboID: %d\0A\00", align 1
@CB_GETCURSEL = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i32 0, align 4
@CB_GETITEMDATA = common dso_local global i32 0, align 4
@DMPAPER_USER = common dso_local global i64 0, align 8
@cmb2 = common dso_local global i32 0, align 4
@DC_PAPERNAMES = common dso_local global i32 0, align 4
@DC_PAPERS = common dso_local global i32 0, align 4
@cmb3 = common dso_local global i32 0, align 4
@DC_BINNAMES = common dso_local global i32 0, align 4
@DC_BINS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"no Name Entries found!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Number of caps is different\0A\00", align 1
@CB_RESETCONTENT = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*, i64*, %struct.TYPE_8__*)* @PRINTDLG_SetUpPaperComboBoxW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PRINTDLG_SetUpPaperComboBoxW(i32 %0, i32 %1, i64* %2, i64* %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = call i32 @debugstr_w(i64* %24)
  %26 = load i64*, i64** %10, align 8
  %27 = call i32 @debugstr_w(i64* %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @CB_GETCURSEL, align 4
  %33 = call i64 @SendDlgItemMessageW(i32 %30, i32 %31, i32 %32, i32 0, i64 0)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @CB_ERR, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %5
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @CB_GETITEMDATA, align 4
  %42 = load i32, i32* %16, align 4
  %43 = call i64 @SendDlgItemMessageW(i32 %39, i32 %40, i32 %41, i32 %42, i64 0)
  store i64 %43, i64* %18, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* @DMPAPER_USER, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i64 0, i64* %18, align 8
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48, %5
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @cmb2, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  br label %68

62:                                               ; preds = %52
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i64 [ %61, %56 ], [ %67, %62 ]
  store i64 %69, i64* %19, align 8
  br label %70

70:                                               ; preds = %68, %49
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @cmb2, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  store i32 64, i32* %20, align 4
  %75 = load i32, i32* @DC_PAPERNAMES, align 4
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* @DC_PAPERS, align 4
  store i32 %76, i32* %22, align 4
  br label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @cmb3, align 4
  store i32 %78, i32* %8, align 4
  store i32 24, i32* %20, align 4
  %79 = load i32, i32* @DC_BINNAMES, align 4
  store i32 %79, i32* %21, align 4
  %80 = load i32, i32* @DC_BINS, align 4
  store i32 %80, i32* %22, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i64*, i64** %9, align 8
  %83 = load i64*, i64** %10, align 8
  %84 = load i32, i32* %21, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %86 = call i32 @DeviceCapabilitiesW(i64* %82, i64* %83, i32 %84, i64* null, %struct.TYPE_8__* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %97

91:                                               ; preds = %81
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %6, align 4
  br label %238

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %89
  %98 = load i64*, i64** %9, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = load i32, i32* %22, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %102 = call i32 @DeviceCapabilitiesW(i64* %98, i64* %99, i32 %100, i64* null, %struct.TYPE_8__* %101)
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %107

107:                                              ; preds = %105, %97
  %108 = call i32 (...) @GetProcessHeap()
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 8
  %112 = load i32, i32* %20, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %111, %113
  %115 = trunc i64 %114 to i32
  %116 = call i64* @HeapAlloc(i32 %108, i32 0, i32 %115)
  store i64* %116, i64** %14, align 8
  %117 = call i32 (...) @GetProcessHeap()
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 8
  %121 = trunc i64 %120 to i32
  %122 = call i64* @HeapAlloc(i32 %117, i32 0, i32 %121)
  store i64* %122, i64** %15, align 8
  %123 = load i64*, i64** %9, align 8
  %124 = load i64*, i64** %10, align 8
  %125 = load i32, i32* %21, align 4
  %126 = load i64*, i64** %14, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %128 = call i32 @DeviceCapabilitiesW(i64* %123, i64* %124, i32 %125, i64* %126, %struct.TYPE_8__* %127)
  %129 = load i64*, i64** %9, align 8
  %130 = load i64*, i64** %10, align 8
  %131 = load i32, i32* %22, align 4
  %132 = load i64*, i64** %15, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %134 = call i32 @DeviceCapabilitiesW(i64* %129, i64* %130, i32 %131, i64* %132, %struct.TYPE_8__* %133)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @CB_RESETCONTENT, align 4
  %138 = call i64 @SendDlgItemMessageW(i32 %135, i32 %136, i32 %137, i32 0, i64 0)
  store i32 0, i32* %12, align 4
  br label %139

139:                                              ; preds = %166, %107
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %139
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @CB_ADDSTRING, align 4
  %147 = load i64*, i64** %14, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %20, align 4
  %150 = mul nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %147, i64 %151
  %153 = ptrtoint i64* %152 to i64
  %154 = call i64 @SendDlgItemMessageW(i32 %144, i32 %145, i32 %146, i32 0, i64 %153)
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %23, align 4
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @CB_SETITEMDATA, align 4
  %159 = load i32, i32* %23, align 4
  %160 = load i64*, i64** %15, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @SendDlgItemMessageW(i32 %156, i32 %157, i32 %158, i32 %159, i64 %164)
  br label %166

166:                                              ; preds = %143
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %139

169:                                              ; preds = %139
  store i32 0, i32* %16, align 4
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %171

171:                                              ; preds = %196, %169
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %199

175:                                              ; preds = %171
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @CB_GETITEMDATA, align 4
  %179 = load i32, i32* %12, align 4
  %180 = call i64 @SendDlgItemMessageW(i32 %176, i32 %177, i32 %178, i32 %179, i64 0)
  %181 = load i64, i64* %18, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %175
  %184 = load i32, i32* %12, align 4
  store i32 %184, i32* %17, align 4
  br label %199

185:                                              ; preds = %175
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @CB_GETITEMDATA, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call i64 @SendDlgItemMessageA(i32 %186, i32 %187, i32 %188, i32 %189, i32 0)
  %191 = load i64, i64* %19, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %185
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %16, align 4
  br label %195

195:                                              ; preds = %193, %185
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  br label %171

199:                                              ; preds = %183, %171
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %225

203:                                              ; preds = %199
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %205 = icmp ne %struct.TYPE_8__* %204, null
  br i1 %205, label %206, label %223

206:                                              ; preds = %203
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @cmb2, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = load i64, i64* %18, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  store i64 %211, i64* %215, align 8
  br label %222

216:                                              ; preds = %206
  %217 = load i64, i64* %18, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  store i64 %217, i64* %221, align 8
  br label %222

222:                                              ; preds = %216, %210
  br label %223

223:                                              ; preds = %222, %203
  %224 = load i32, i32* %17, align 4
  store i32 %224, i32* %16, align 4
  br label %225

225:                                              ; preds = %223, %199
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @CB_SETCURSEL, align 4
  %229 = load i32, i32* %16, align 4
  %230 = call i64 @SendDlgItemMessageW(i32 %226, i32 %227, i32 %228, i32 %229, i64 0)
  %231 = call i32 (...) @GetProcessHeap()
  %232 = load i64*, i64** %15, align 8
  %233 = call i32 @HeapFree(i32 %231, i32 0, i64* %232)
  %234 = call i32 (...) @GetProcessHeap()
  %235 = load i64*, i64** %14, align 8
  %236 = call i32 @HeapFree(i32 %234, i32 0, i64* %235)
  %237 = load i32, i32* @TRUE, align 4
  store i32 %237, i32* %6, align 4
  br label %238

238:                                              ; preds = %225, %94
  %239 = load i32, i32* %6, align 4
  ret i32 %239
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i32, i64) #1

declare dso_local i32 @DeviceCapabilitiesW(i64*, i64*, i32, i64*, %struct.TYPE_8__*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @SendDlgItemMessageA(i32, i32, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
