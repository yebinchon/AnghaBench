; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_GetPageRect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_GetPageRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i32 }

@INTRNL_ANY_WIZARD = common dso_local global i32 0, align 4
@PSH_WIZARD97_NEW = common dso_local global i32 0, align 4
@PSH_WIZARD97_OLD = common dso_local global i32 0, align 4
@PSH_HEADER = common dso_local global i32 0, align 4
@PSP_HIDEHEADER = common dso_local global i32 0, align 4
@PSH_WIZARD = common dso_local global i32 0, align 4
@WIZARD_PADDING = common dso_local global i64 0, align 8
@IDC_SUNKEN_LINEHEADER = common dso_local global i32 0, align 4
@IDC_TABCONTROL = common dso_local global i32 0, align 4
@TCM_ADJUSTRECT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, %struct.TYPE_11__*, %struct.TYPE_13__*)* @PROPSHEET_GetPageRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PROPSHEET_GetPageRect(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_11__* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @INTRNL_ANY_WIZARD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %127

19:                                               ; preds = %4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PSH_WIZARD97_NEW, align 4
  %25 = load i32, i32* @PSH_WIZARD97_OLD, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %19
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PSH_HEADER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PSP_HIDEHEADER, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37, %29, %19
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PSH_WIZARD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44, %37
  %53 = load i64, i64* @WIZARD_PADDING, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store i64 %53, i64* %57, align 8
  br label %63

58:                                               ; preds = %44
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = call i32 @MapDialogRect(i32 %82, %struct.TYPE_11__* %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @PSH_WIZARD97_NEW, align 4
  %90 = load i32, i32* @PSH_WIZARD97_OLD, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %126

94:                                               ; preds = %63
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PSH_HEADER, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %94
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PSP_HIDEHEADER, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %126, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @IDC_SUNKEN_LINEHEADER, align 4
  %112 = call i32 @GetDlgItem(i32 %110, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @GetClientRect(i32 %113, %struct.TYPE_11__* %10)
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %6, align 4
  %117 = ptrtoint %struct.TYPE_11__* %10 to i32
  %118 = call i32 @MapWindowPoints(i32 %115, i32 %116, i32 %117, i32 2)
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  br label %126

126:                                              ; preds = %109, %102, %94, %63
  br label %145

127:                                              ; preds = %4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @IDC_TABCONTROL, align 4
  %130 = call i32 @GetDlgItem(i32 %128, i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = call i32 @GetClientRect(i32 %131, %struct.TYPE_11__* %132)
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @TCM_ADJUSTRECT, align 4
  %136 = load i32, i32* @FALSE, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %138 = ptrtoint %struct.TYPE_11__* %137 to i32
  %139 = call i32 @SendMessageW(i32 %134, i32 %135, i32 %136, i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %143 = ptrtoint %struct.TYPE_11__* %142 to i32
  %144 = call i32 @MapWindowPoints(i32 %140, i32 %141, i32 %143, i32 2)
  br label %145

145:                                              ; preds = %127, %126
  ret void
}

declare dso_local i32 @MapDialogRect(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @MapWindowPoints(i32, i32, i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
