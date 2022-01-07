; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_PaintLeadTrailMonths.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_PaintLeadTrailMonths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64*, %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i64 }

@MCS_NOTRAILINGDATES = common dso_local global i32 0, align 4
@MCSC_TRAILINGTEXT = common dso_local global i64 0, align 8
@GMR_DAYSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32, i32*)* @MONTHCAL_PaintLeadTrailMonths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MONTHCAL_PaintLeadTrailMonths(%struct.TYPE_16__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MCS_NOTRAILINGDATES, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %119

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @MCSC_TRAILINGTEXT, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SetTextColor(i32 %20, i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = call i32 @MONTHCAL_GetMinDate(%struct.TYPE_16__* %28, %struct.TYPE_15__* %11)
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 1, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, 1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MONTHCAL_MonthLength(i64 %42, i32 %49)
  store i32 %50, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %51

51:                                               ; preds = %56, %19
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = and i64 %64, %65
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @MONTHCAL_DrawDay(%struct.TYPE_16__* %57, i32 %58, %struct.TYPE_15__* %11, i64 %66, i32* %67)
  %69 = load i64, i64* %7, align 8
  %70 = shl i64 %69, 1
  store i64 %70, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %51

74:                                               ; preds = %51
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = call i32 @MONTHCAL_GetCalCount(%struct.TYPE_16__* %78)
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = bitcast %struct.TYPE_15__* %11 to i8*
  %85 = bitcast %struct.TYPE_15__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = call i32 @MONTHCAL_GetNextMonth(%struct.TYPE_15__* %11)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = call i32 @MONTHCAL_GetMaxDate(%struct.TYPE_16__* %88, %struct.TYPE_15__* %10)
  store i64 1, i64* %7, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = load i32, i32* @GMR_DAYSTATE, align 4
  %92 = call i32 @MONTHCAL_GetMonthRange(%struct.TYPE_16__* %90, i32 %91, i32 0)
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %8, align 8
  br label %95

95:                                               ; preds = %101, %74
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sle i32 %97, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = and i64 %109, %110
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @MONTHCAL_DrawDay(%struct.TYPE_16__* %102, i32 %103, %struct.TYPE_15__* %11, i64 %111, i32* %112)
  %114 = load i64, i64* %7, align 8
  %115 = shl i64 %114, 1
  store i64 %115, i64* %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  br label %95

119:                                              ; preds = %18, %95
  ret void
}

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @MONTHCAL_GetMinDate(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @MONTHCAL_MonthLength(i64, i32) #1

declare dso_local i32 @MONTHCAL_DrawDay(%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i64, i32*) #1

declare dso_local i32 @MONTHCAL_GetCalCount(%struct.TYPE_16__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MONTHCAL_GetNextMonth(%struct.TYPE_15__*) #1

declare dso_local i32 @MONTHCAL_GetMaxDate(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @MONTHCAL_GetMonthRange(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
