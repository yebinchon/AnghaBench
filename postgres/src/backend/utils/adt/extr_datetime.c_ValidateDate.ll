; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_ValidateDate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_ValidateDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i32, i32, i64 }

@YEAR = common dso_local global i32 0, align 4
@DTERR_FIELD_OVERFLOW = common dso_local global i32 0, align 4
@DOY = common dso_local global i32 0, align 4
@MONTH = common dso_local global i32 0, align 4
@MONTHS_PER_YEAR = common dso_local global i32 0, align 4
@DTERR_MD_FIELD_OVERFLOW = common dso_local global i32 0, align 4
@DAY = common dso_local global i32 0, align 4
@DTK_DATE_M = common dso_local global i32 0, align 4
@day_tab = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ValidateDate(i32 %0, i32 %1, i32 %2, i32 %3, %struct.pg_tm* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pg_tm*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.pg_tm* %4, %struct.pg_tm** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @YEAR, align 4
  %14 = call i32 @DTK_M(i32 %13)
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %82

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %81

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %26 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @DTERR_FIELD_OVERFLOW, align 4
  store i32 %30, i32* %6, align 4
  br label %173

31:                                               ; preds = %24
  %32 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %33 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sub nsw i32 0, %35
  %37 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %38 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %80

39:                                               ; preds = %21
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %44 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @DTERR_FIELD_OVERFLOW, align 4
  store i32 %48, i32* %6, align 4
  br label %173

49:                                               ; preds = %42
  %50 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %51 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %52, 70
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %56 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 2000
  store i32 %58, i32* %56, align 8
  br label %70

59:                                               ; preds = %49
  %60 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %61 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %62, 100
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %66 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1900
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69, %54
  br label %79

71:                                               ; preds = %39
  %72 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %73 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @DTERR_FIELD_OVERFLOW, align 4
  store i32 %77, i32* %6, align 4
  br label %173

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %70
  br label %80

80:                                               ; preds = %79, %31
  br label %81

81:                                               ; preds = %80, %20
  br label %82

82:                                               ; preds = %81, %5
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @DOY, align 4
  %85 = call i32 @DTK_M(i32 %84)
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %90 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @date2j(i32 %91, i32 1, i32 1)
  %93 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %94 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = sub nsw i64 %96, 1
  %98 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %99 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %98, i32 0, i32 0
  %100 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %101 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %100, i32 0, i32 1
  %102 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %103 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %102, i32 0, i32 2
  %104 = call i32 @j2date(i64 %97, i32* %99, i32* %101, i32* %103)
  br label %105

105:                                              ; preds = %88, %82
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @MONTH, align 4
  %108 = call i32 @DTK_M(i32 %107)
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %113 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %122, label %116

116:                                              ; preds = %111
  %117 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %118 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116, %111
  %123 = load i32, i32* @DTERR_MD_FIELD_OVERFLOW, align 4
  store i32 %123, i32* %6, align 4
  br label %173

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %105
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @DAY, align 4
  %128 = call i32 @DTK_M(i32 %127)
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %133 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %134, 1
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %138 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp sgt i32 %139, 31
  br i1 %140, label %141, label %143

141:                                              ; preds = %136, %131
  %142 = load i32, i32* @DTERR_MD_FIELD_OVERFLOW, align 4
  store i32 %142, i32* %6, align 4
  br label %173

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %125
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @DTK_DATE_M, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @DTK_DATE_M, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %172

150:                                              ; preds = %144
  %151 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %152 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32**, i32*** @day_tab, align 8
  %155 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %156 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @isleap(i32 %157)
  %159 = getelementptr inbounds i32*, i32** %154, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %162 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %160, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %153, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %150
  %170 = load i32, i32* @DTERR_FIELD_OVERFLOW, align 4
  store i32 %170, i32* %6, align 4
  br label %173

171:                                              ; preds = %150
  br label %172

172:                                              ; preds = %171, %144
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %172, %169, %141, %122, %76, %47, %29
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local i32 @DTK_M(i32) #1

declare dso_local i32 @j2date(i64, i32*, i32*, i32*) #1

declare dso_local i64 @date2j(i32, i32, i32) #1

declare dso_local i64 @isleap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
