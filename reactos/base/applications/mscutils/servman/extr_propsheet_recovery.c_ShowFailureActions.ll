; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_recovery.c_ShowFailureActions.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_recovery.c_ShowFailureActions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 117, i32 0], align 4
@IDC_RESTART_TIME = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@IDC_RESTART_TEXT1 = common dso_local global i32 0, align 4
@IDC_RESTART_TEXT2 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_RESTART_OPTIONS = common dso_local global i32 0, align 4
@IDC_RUN_GROUPBOX = common dso_local global i32 0, align 4
@IDC_ADD_FAILCOUNT = common dso_local global i32 0, align 4
@IDC_FIRST_FAILURE = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@IDC_RESET_TIME = common dso_local global i32 0, align 4
@IDC_PROGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 47, i32 102, i32 97, i32 105, i32 108, i32 61, i32 37, i32 49, i32 37, i32 0], align 4
@IDC_PARAMETERS = common dso_local global i32 0, align 4
@BM_SETCHECK = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*)* @ShowFailureActions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShowFailureActions(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca [256 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %103, %2
  %14 = load i64, i64* %12, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @min(i32 %19, i32 3)
  %21 = icmp ult i64 %14, %20
  br i1 %21, label %22, label %106

22:                                               ; preds = %13
  store i32 -1, i32* %9, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %89 [
    i32 131, label %32
    i32 129, label %33
    i32 130, label %67
    i32 128, label %73
  ]

32:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %89

33:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 60000
  %45 = call i32 @wsprintf(i32* %34, i8* bitcast ([4 x i32]* @.str to i8*), i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @IDC_RESTART_TIME, align 4
  %48 = load i32, i32* @WM_SETTEXT, align 4
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %50 = ptrtoint i32* %49 to i32
  %51 = call i32 @SendDlgItemMessageW(i32 %46, i32 %47, i32 %48, i32 0, i32 %50)
  %52 = load i32, i32* @IDC_RESTART_TEXT1, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %63, %33
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @IDC_RESTART_TEXT2, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @GetDlgItem(i32 %58, i32 %59)
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @EnableWindow(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %53

66:                                               ; preds = %53
  br label %89

67:                                               ; preds = %22
  store i32 3, i32* %9, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @IDC_RESTART_OPTIONS, align 4
  %70 = call i32 @GetDlgItem(i32 %68, i32 %69)
  %71 = load i32, i32* @TRUE, align 4
  %72 = call i32 @EnableWindow(i32 %70, i32 %71)
  br label %89

73:                                               ; preds = %22
  store i32 2, i32* %9, align 4
  %74 = load i32, i32* @IDC_RUN_GROUPBOX, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %85, %73
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @IDC_ADD_FAILCOUNT, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @GetDlgItem(i32 %80, i32 %81)
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i32 @EnableWindow(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %75

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %22, %88, %67, %66, %32
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @IDC_FIRST_FAILURE, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @CB_SETCURSEL, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @SendDlgItemMessageW(i32 %93, i32 %98, i32 %99, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %92, %89
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %12, align 8
  br label %13

106:                                              ; preds = %13
  %107 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sdiv i32 %112, 86400
  %114 = call i32 @wsprintf(i32* %107, i8* bitcast ([4 x i32]* @.str to i8*), i32 %113)
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @IDC_RESET_TIME, align 4
  %117 = load i32, i32* @WM_SETTEXT, align 4
  %118 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %119 = ptrtoint i32* %118 to i32
  %120 = call i32 @SendDlgItemMessageW(i32 %115, i32 %116, i32 %117, i32 0, i32 %119)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %240

127:                                              ; preds = %106
  %128 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %129 = call i32 @ZeroMemory(i32* %128, i32 1024)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  store i32* %134, i32** %7, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 34
  br i1 %137, label %138, label %141

138:                                              ; preds = %127
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %7, align 8
  br label %141

141:                                              ; preds = %138, %127
  %142 = load i32*, i32** %7, align 8
  %143 = call i32* @wcschr(i32* %142, i32 34)
  store i32* %143, i32** %8, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load i32*, i32** %8, align 8
  %148 = ptrtoint i32* %147 to i64
  %149 = load i32*, i32** %7, align 8
  %150 = ptrtoint i32* %149 to i64
  %151 = sub nsw i64 %148, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %11, align 4
  %153 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @CopyMemory(i32* %153, i32* %154, i32 %155)
  br label %161

157:                                              ; preds = %141
  %158 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @wcscpy(i32* %158, i32* %159)
  br label %161

161:                                              ; preds = %157, %146
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @IDC_PROGRAM, align 4
  %164 = load i32, i32* @WM_SETTEXT, align 4
  %165 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %166 = ptrtoint i32* %165 to i32
  %167 = call i32 @SendDlgItemMessageW(i32 %162, i32 %163, i32 %164, i32 0, i32 %166)
  %168 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %169 = call i32 @ZeroMemory(i32* %168, i32 1024)
  %170 = load i32*, i32** %8, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %239

172:                                              ; preds = %161
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  store i32* %174, i32** %7, align 8
  br label %175

175:                                              ; preds = %180, %172
  %176 = load i32*, i32** %7, align 8
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @iswspace(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32*, i32** %7, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %7, align 8
  br label %175

183:                                              ; preds = %175
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = call i32* @wcsstr(i32* %188, i8* bitcast ([10 x i32]* @.str.1 to i8*))
  store i32* %189, i32** %8, align 8
  %190 = load i32*, i32** %8, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %213

192:                                              ; preds = %183
  br label %193

193:                                              ; preds = %199, %192
  %194 = load i32*, i32** %8, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 -1
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @iswspace(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load i32*, i32** %8, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 -1
  store i32* %201, i32** %8, align 8
  br label %193

202:                                              ; preds = %193
  %203 = load i32*, i32** %8, align 8
  %204 = ptrtoint i32* %203 to i64
  %205 = load i32*, i32** %7, align 8
  %206 = ptrtoint i32* %205 to i64
  %207 = sub nsw i64 %204, %206
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %11, align 4
  %209 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %210 = load i32*, i32** %7, align 8
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @CopyMemory(i32* %209, i32* %210, i32 %211)
  br label %217

213:                                              ; preds = %183
  %214 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %215 = load i32*, i32** %7, align 8
  %216 = call i32 @wcscpy(i32* %214, i32* %215)
  br label %217

217:                                              ; preds = %213, %202
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @IDC_PARAMETERS, align 4
  %220 = load i32, i32* @WM_SETTEXT, align 4
  %221 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %222 = ptrtoint i32* %221 to i32
  %223 = call i32 @SendDlgItemMessageW(i32 %218, i32 %219, i32 %220, i32 0, i32 %222)
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = call i32* @wcsstr(i32* %228, i8* bitcast ([10 x i32]* @.str.1 to i8*))
  store i32* %229, i32** %8, align 8
  %230 = load i32*, i32** %8, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %217
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* @IDC_ADD_FAILCOUNT, align 4
  %235 = load i32, i32* @BM_SETCHECK, align 4
  %236 = load i32, i32* @BST_CHECKED, align 4
  %237 = call i32 @SendDlgItemMessageW(i32 %233, i32 %234, i32 %235, i32 %236, i32 0)
  br label %238

238:                                              ; preds = %232, %217
  br label %239

239:                                              ; preds = %238, %161
  br label %240

240:                                              ; preds = %239, %106
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @wsprintf(i32*, i8*, i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i32* @wcschr(i32*, i32) #1

declare dso_local i32 @CopyMemory(i32*, i32*, i32) #1

declare dso_local i32 @wcscpy(i32*, i32*) #1

declare dso_local i64 @iswspace(i32) #1

declare dso_local i32* @wcsstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
