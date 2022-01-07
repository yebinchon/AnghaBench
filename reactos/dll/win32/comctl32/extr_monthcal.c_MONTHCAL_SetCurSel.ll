; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_SetCurSel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_SetCurSel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MCS_MULTISELECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @MONTHCAL_SetCurSel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MONTHCAL_SetCurSel(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca %struct.TYPE_18__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  %15 = bitcast %struct.TYPE_18__* %6 to i8*
  %16 = bitcast %struct.TYPE_18__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 40, i1 false)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %17)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = icmp ne %struct.TYPE_18__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %158

23:                                               ; preds = %2
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MCS_MULTISELECT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %158

32:                                               ; preds = %23
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = call i32 @MONTHCAL_ValidateDate(%struct.TYPE_18__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %158

38:                                               ; preds = %32
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = call i64 @MONTHCAL_IsDateEqual(%struct.TYPE_18__* %40, %struct.TYPE_18__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %3, align 4
  br label %158

46:                                               ; preds = %38
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = bitcast %struct.TYPE_18__* %7 to i8*
  %49 = bitcast %struct.TYPE_18__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 40, i1 false)
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_18__* %7, i32 %54)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @MONTHCAL_IsDateInValidRange(%struct.TYPE_19__* %56, %struct.TYPE_18__* %7, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %46
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %158

62:                                               ; preds = %46
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = call i64 @MONTHCAL_GetCalCount(%struct.TYPE_19__* %66)
  %68 = sub nsw i64 %67, 1
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = call i64 @MONTHCAL_MonthDiff(i32* %70, %struct.TYPE_18__* %71)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp sle i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %62
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %82 = call i64 @MONTHCAL_MonthDiff(i32* %80, %struct.TYPE_18__* %81)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  store i64 0, i64* %8, align 8
  br label %86

86:                                               ; preds = %85, %75
  br label %87

87:                                               ; preds = %86, %62
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  store i64 0, i64* %10, align 8
  br label %91

91:                                               ; preds = %105, %90
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %94 = call i64 @MONTHCAL_GetCalCount(%struct.TYPE_19__* %93)
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @MONTHCAL_GetMonth(i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %96
  %106 = load i64, i64* %10, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %10, align 8
  br label %91

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108, %87
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %111 = bitcast %struct.TYPE_18__* %7 to i8*
  %112 = bitcast %struct.TYPE_18__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 40, i1 false)
  %113 = load i32, i32* @TRUE, align 4
  %114 = call i32 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_18__* %7, i32 %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = bitcast %struct.TYPE_18__* %118 to i8*
  %120 = bitcast %struct.TYPE_18__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 40, i1 false)
  %121 = bitcast %struct.TYPE_18__* %116 to i8*
  %122 = bitcast %struct.TYPE_18__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 40, i1 false)
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %9, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i32 %127, i32* %128, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %130 = call i64 @MONTHCAL_IsDateEqual(%struct.TYPE_18__* %6, %struct.TYPE_18__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %109
  %133 = load i32, i32* %9, align 4
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i32 %133, i32* %134, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = call i32 @MONTHCAL_GetDayRect(%struct.TYPE_19__* %135, %struct.TYPE_18__* %6, i32* %11, i32 -1)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %139 = call i32 @MONTHCAL_GetDayRect(%struct.TYPE_19__* %137, %struct.TYPE_18__* %138, i32* %12, i32 -1)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @FALSE, align 4
  %144 = call i32 @InvalidateRect(i32 %142, i32* %11, i32 %143)
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @FALSE, align 4
  %149 = call i32 @InvalidateRect(i32 %147, i32* %12, i32 %148)
  br label %156

150:                                              ; preds = %109
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @FALSE, align 4
  %155 = call i32 @InvalidateRect(i32 %153, i32* null, i32 %154)
  br label %156

156:                                              ; preds = %150, %132
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %60, %44, %36, %30, %21
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_18__*) #2

declare dso_local i32 @MONTHCAL_ValidateDate(%struct.TYPE_18__*) #2

declare dso_local i64 @MONTHCAL_IsDateEqual(%struct.TYPE_18__*, %struct.TYPE_18__*) #2

declare dso_local i32 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @MONTHCAL_IsDateInValidRange(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #2

declare dso_local i64 @MONTHCAL_MonthDiff(i32*, %struct.TYPE_18__*) #2

declare dso_local i64 @MONTHCAL_GetCalCount(%struct.TYPE_19__*) #2

declare dso_local i32 @MONTHCAL_GetMonth(i32*, i64) #2

declare dso_local i32 @MONTHCAL_GetDayRect(%struct.TYPE_19__*, %struct.TYPE_18__*, i32*, i32) #2

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
