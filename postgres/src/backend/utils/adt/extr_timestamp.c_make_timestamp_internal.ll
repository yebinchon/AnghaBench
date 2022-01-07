; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_make_timestamp_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_make_timestamp_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i32, i32 }

@DTK_DATE_M = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATETIME_FIELD_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"date field value out of range: %d-%02d-%02d\00", align 1
@ERRCODE_DATETIME_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"date out of range: %d-%02d-%02d\00", align 1
@POSTGRES_EPOCH_JDATE = common dso_local global i64 0, align 8
@MINS_PER_HOUR = common dso_local global i32 0, align 4
@SECS_PER_MINUTE = common dso_local global double 0.000000e+00, align 8
@HOURS_PER_DAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"time field value out of range: %d:%02d:%02g\00", align 1
@USECS_PER_SEC = common dso_local global i32 0, align 4
@USECS_PER_DAY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"timestamp out of range: %d-%02d-%02d %d:%02d:%02g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32, i32, double)* @make_timestamp_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_timestamp_internal(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, double %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca %struct.pg_tm, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store double %5, double* %12, align 8
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %13, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %13, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %13, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @DTK_DATE_M, align 4
  %25 = call i32 @ValidateDate(i32 %24, i32 0, i32 0, i32 0, %struct.pg_tm* %13)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %6
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_DATETIME_FIELD_OVERFLOW, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i8*, i32, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  %36 = call i32 @ereport(i32 %29, i32 %35)
  br label %37

37:                                               ; preds = %28, %6
  %38 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %13, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %13, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %13, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IS_VALID_JULIAN(i32 %39, i32 %41, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i8*, i32, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = call i32 @ereport(i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %46, %37
  %56 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %13, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %13, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %13, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @date2j(i32 %57, i32 %59, i32 %61)
  %63 = load i64, i64* @POSTGRES_EPOCH_JDATE, align 8
  %64 = sub nsw i64 %62, %63
  store i64 %64, i64* %14, align 8
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %100, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @MINS_PER_HOUR, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp sgt i32 %71, %73
  br i1 %74, label %100, label %75

75:                                               ; preds = %70
  %76 = load double, double* %12, align 8
  %77 = call i64 @isnan(double %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %75
  %80 = load double, double* %12, align 8
  %81 = fcmp olt double %80, 0.000000e+00
  br i1 %81, label %100, label %82

82:                                               ; preds = %79
  %83 = load double, double* %12, align 8
  %84 = load double, double* @SECS_PER_MINUTE, align 8
  %85 = fcmp ogt double %83, %84
  br i1 %85, label %100, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @HOURS_PER_DAY, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @HOURS_PER_DAY, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load double, double* %12, align 8
  %99 = fcmp ogt double %98, 0.000000e+00
  br i1 %99, label %100, label %110

100:                                              ; preds = %97, %94, %86, %82, %79, %75, %70, %67, %55
  %101 = load i32, i32* @ERROR, align 4
  %102 = load i32, i32* @ERRCODE_DATETIME_FIELD_OVERFLOW, align 4
  %103 = call i32 @errcode(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load double, double* %12, align 8
  %107 = fptosi double %106 to i32
  %108 = call i32 (i8*, i32, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105, i32 %107)
  %109 = call i32 @ereport(i32 %101, i32 %108)
  br label %110

110:                                              ; preds = %100, %97, %90
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @MINS_PER_HOUR, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %113, %114
  %116 = sitofp i32 %115 to double
  %117 = load double, double* @SECS_PER_MINUTE, align 8
  %118 = fmul double %116, %117
  %119 = load i32, i32* @USECS_PER_SEC, align 4
  %120 = sitofp i32 %119 to double
  %121 = fmul double %118, %120
  %122 = load double, double* %12, align 8
  %123 = load i32, i32* @USECS_PER_SEC, align 4
  %124 = sitofp i32 %123 to double
  %125 = fmul double %122, %124
  %126 = call i64 @rint(double %125)
  %127 = sitofp i64 %126 to double
  %128 = fadd double %121, %127
  %129 = fptosi double %128 to i64
  store i64 %129, i64* %15, align 8
  %130 = load i64, i64* %14, align 8
  %131 = load i64, i64* @USECS_PER_DAY, align 8
  %132 = mul nsw i64 %130, %131
  %133 = load i64, i64* %15, align 8
  %134 = add nsw i64 %132, %133
  store i64 %134, i64* %17, align 8
  %135 = load i64, i64* %17, align 8
  %136 = load i64, i64* %15, align 8
  %137 = sub nsw i64 %135, %136
  %138 = load i64, i64* @USECS_PER_DAY, align 8
  %139 = sdiv i64 %137, %138
  %140 = load i64, i64* %14, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %110
  %143 = load i32, i32* @ERROR, align 4
  %144 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %145 = call i32 @errcode(i32 %144)
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load double, double* %12, align 8
  %152 = call i32 (i8*, i32, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, double %151)
  %153 = call i32 @ereport(i32 %143, i32 %152)
  br label %154

154:                                              ; preds = %142, %110
  %155 = load i64, i64* %17, align 8
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i64, i64* %14, align 8
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %157, %154
  %161 = load i64, i64* %17, align 8
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %160
  %164 = load i64, i64* %14, align 8
  %165 = icmp slt i64 %164, -1
  br i1 %165, label %166, label %178

166:                                              ; preds = %163, %157
  %167 = load i32, i32* @ERROR, align 4
  %168 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %169 = call i32 @errcode(i32 %168)
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load double, double* %12, align 8
  %176 = call i32 (i8*, i32, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, double %175)
  %177 = call i32 @ereport(i32 %167, i32 %176)
  br label %178

178:                                              ; preds = %166, %163, %160
  %179 = load i64, i64* %17, align 8
  %180 = call i32 @IS_VALID_TIMESTAMP(i64 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* @ERROR, align 4
  %184 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %185 = call i32 @errcode(i32 %184)
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load double, double* %12, align 8
  %192 = call i32 (i8*, i32, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, double %191)
  %193 = call i32 @ereport(i32 %183, i32 %192)
  br label %194

194:                                              ; preds = %182, %178
  %195 = load i64, i64* %17, align 8
  ret i64 %195
}

declare dso_local i32 @ValidateDate(i32, i32, i32, i32, %struct.pg_tm*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @IS_VALID_JULIAN(i32, i32, i32) #1

declare dso_local i64 @date2j(i32, i32, i32) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i64 @rint(double) #1

declare dso_local i32 @IS_VALID_TIMESTAMP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
