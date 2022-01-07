; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_AdjustButtonsWizard.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_AdjustButtonsWizard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@IDCANCEL = common dso_local global i32 0, align 4
@IDC_SUNKEN_LINE = common dso_local global i32 0, align 4
@IDC_SUNKEN_LINEHEADER = common dso_local global i32 0, align 4
@IDC_BACK_BUTTON = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@IDC_NEXT_BUTTON = common dso_local global i32 0, align 4
@IDC_FINISH_BUTTON = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@IDHELP = common dso_local global i32 0, align 4
@PSH_WIZARD97_OLD = common dso_local global i32 0, align 4
@PSH_WIZARD97_NEW = common dso_local global i32 0, align 4
@PSH_WIZARD_LITE = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*)* @PROPSHEET_AdjustButtonsWizard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PROPSHEET_AdjustButtonsWizard(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IDCANCEL, align 4
  %19 = call i32 @GetDlgItem(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @IDC_SUNKEN_LINE, align 4
  %22 = call i32 @GetDlgItem(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @IDC_SUNKEN_LINEHEADER, align 4
  %25 = call i32 @GetDlgItem(i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  store i32 3, i32* %11, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = call i64 @PROPSHEET_GetPaddingInfoWizard(i32 %26, %struct.TYPE_11__* %27)
  %29 = bitcast %struct.TYPE_12__* %16 to i64*
  store i64 %28, i64* %29, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %34, %2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @GetClientRect(i32 %46, %struct.TYPE_10__* %8)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @GetClientRect(i32 %52, %struct.TYPE_10__* %8)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @GetClientRect(i32 %56, %struct.TYPE_10__* %8)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 %59, %63
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @IDC_BACK_BUTTON, align 4
  %67 = call i32 @GetDlgItem(i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %74, 1
  %76 = mul nsw i32 %73, %75
  %77 = sub nsw i32 %69, %76
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @SWP_NOSIZE, align 4
  %84 = load i32, i32* @SWP_NOZORDER, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SWP_NOACTIVATE, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @SetWindowPos(i32 %80, i32 0, i32 %81, i32 %82, i32 0, i32 0, i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @IDC_NEXT_BUTTON, align 4
  %91 = call i32 @GetDlgItem(i32 %89, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @SWP_NOSIZE, align 4
  %99 = load i32, i32* @SWP_NOZORDER, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @SWP_NOACTIVATE, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @SetWindowPos(i32 %95, i32 0, i32 %96, i32 %97, i32 0, i32 0, i32 %102)
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @IDC_FINISH_BUTTON, align 4
  %106 = call i32 @GetDlgItem(i32 %104, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %45
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %111, %45
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @SWP_NOSIZE, align 4
  %123 = load i32, i32* @SWP_NOZORDER, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @SWP_NOACTIVATE, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @SetWindowPos(i32 %119, i32 0, i32 %120, i32 %121, i32 0, i32 0, i32 %126)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %118
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @SW_HIDE, align 4
  %135 = call i32 @ShowWindow(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %118
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @IDCANCEL, align 4
  %139 = call i32 @GetDlgItem(i32 %137, i32 %138)
  store i32 %139, i32* %5, align 4
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %141, %142
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @SWP_NOSIZE, align 4
  %150 = load i32, i32* @SWP_NOZORDER, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @SWP_NOACTIVATE, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @SetWindowPos(i32 %146, i32 0, i32 %147, i32 %148, i32 0, i32 0, i32 %153)
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* @IDHELP, align 4
  %157 = call i32 @GetDlgItem(i32 %155, i32 %156)
  store i32 %157, i32* %5, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %136
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @SWP_NOSIZE, align 4
  %173 = load i32, i32* @SWP_NOZORDER, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @SWP_NOACTIVATE, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @SetWindowPos(i32 %169, i32 0, i32 %170, i32 %171, i32 0, i32 0, i32 %176)
  br label %182

178:                                              ; preds = %136
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @SW_HIDE, align 4
  %181 = call i32 @ShowWindow(i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %162
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @PSH_WIZARD97_OLD, align 4
  %188 = load i32, i32* @PSH_WIZARD97_NEW, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @PSH_WIZARD_LITE, align 4
  %191 = or i32 %189, %190
  %192 = and i32 %186, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %182
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i32 0, i32* %195, align 4
  br label %196

196:                                              ; preds = %194, %182
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %9, align 4
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %202, 2
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %205, %206
  %208 = sub nsw i32 %200, %207
  store i32 %208, i32* %10, align 4
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %212, 2
  %214 = sub nsw i32 %210, %213
  store i32 %214, i32* %15, align 4
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* @SWP_NOZORDER, align 4
  %220 = load i32, i32* @SWP_NOACTIVATE, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @SetWindowPos(i32 %215, i32 0, i32 %216, i32 %217, i32 %218, i32 2, i32 %221)
  %223 = load i32, i32* %7, align 4
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @SWP_NOZORDER, align 4
  %227 = load i32, i32* @SWP_NOMOVE, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @SWP_NOACTIVATE, align 4
  %230 = or i32 %228, %229
  %231 = call i32 @SetWindowPos(i32 %223, i32 0, i32 0, i32 0, i32 %225, i32 2, i32 %230)
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @PSH_WIZARD97_OLD, align 4
  %237 = load i32, i32* @PSH_WIZARD97_NEW, align 4
  %238 = or i32 %236, %237
  %239 = and i32 %235, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %196
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* @SW_HIDE, align 4
  %244 = call i32 @ShowWindow(i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %241, %196
  %246 = load i32, i32* @TRUE, align 4
  ret i32 %246
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @PROPSHEET_GetPaddingInfoWizard(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
