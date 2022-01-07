; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_AdjustSize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_AdjustSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@IDC_TABCONTROL = common dso_local global i32 0, align 4
@IDOK = common dso_local global i32 0, align 4
@TCM_ADJUSTRECT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"setting tab %p, rc (0,0)-(%d,%d)\0A\00", align 1
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"tab client rc %s\0A\00", align 1
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"setting dialog %p, rc (0,0)-(%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_12__*)* @PROPSHEET_AdjustSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PROPSHEET_AdjustSize(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IDC_TABCONTROL, align 4
  %15 = call i32 @GetDlgItem(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @IDOK, align 4
  %18 = call i32 @GetDlgItem(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @PROPSHEET_GetPaddingInfo(i32 %19)
  %21 = bitcast %struct.TYPE_13__* %10 to i64*
  store i64 %20, i64* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @GetClientRect(i32 %22, %struct.TYPE_11__* %7)
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @SetRect(%struct.TYPE_11__* %7, i32 0, i32 0, i8* %28, i8* %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @MapDialogRect(i32 %33, %struct.TYPE_11__* %7)
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  store i32 4, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  store i32 4, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i32 8, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  store i32 8, i32* %38, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @MapDialogRect(i32 %39, %struct.TYPE_11__* %11)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @GetClientRect(i32 %41, %struct.TYPE_11__* %8)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @TCM_ADJUSTRECT, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = ptrtoint %struct.TYPE_11__* %8 to i32
  %47 = call i32 @SendMessageW(i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %49, %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %54, %56
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %2
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %61, %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %64, %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %70, %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @MulDiv(i32 %73, i32 8, i32 %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %59, %2
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %81, %83
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %86, %88
  %90 = icmp slt i32 %84, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %93, %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %96, %98
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %102, %104
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @MulDiv(i32 %105, i32 4, i32 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %91, %79
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @TCM_ADJUSTRECT, align 4
  %114 = load i32, i32* @TRUE, align 4
  %115 = ptrtoint %struct.TYPE_11__* %7 to i32
  %116 = call i32 @SendMessageW(i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, %118
  store i32 %121, i32* %119, align 4
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, %123
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %5, align 4
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %129, i32 %131)
  %133 = load i32, i32* %5, align 4
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @SWP_NOMOVE, align 4
  %139 = load i32, i32* @SWP_NOZORDER, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @SWP_NOACTIVATE, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @SetWindowPos(i32 %133, i32 0, i32 0, i32 0, i32 %135, i32 %137, i32 %142)
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @GetClientRect(i32 %144, %struct.TYPE_11__* %7)
  %146 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %7)
  %147 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %149, 2
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, %150
  store i32 %153, i32* %151, align 4
  %154 = load i32, i32* %9, align 4
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 3, %156
  %158 = add nsw i32 %154, %157
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %158
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %3, align 4
  %163 = load i32, i32* @GWL_STYLE, align 4
  %164 = call i32 @GetWindowLongW(i32 %162, i32 %163)
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @WS_CHILD, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %111
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @FALSE, align 4
  %172 = call i32 @AdjustWindowRect(%struct.TYPE_11__* %7, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %111
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %177, %175
  store i32 %178, i32* %176, align 4
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %182, %180
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* %3, align 4
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %184, i32 %186, i32 %188)
  %190 = load i32, i32* %3, align 4
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @SWP_NOMOVE, align 4
  %196 = load i32, i32* @SWP_NOZORDER, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @SWP_NOACTIVATE, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @SetWindowPos(i32 %190, i32 0, i32 0, i32 0, i32 %192, i32 %194, i32 %199)
  %201 = load i32, i32* @TRUE, align 4
  ret i32 %201
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @PROPSHEET_GetPaddingInfo(i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @SetRect(%struct.TYPE_11__*, i32, i32, i8*, i8*) #1

declare dso_local i32 @MapDialogRect(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i8* @MulDiv(i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_11__*) #1

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @AdjustWindowRect(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
