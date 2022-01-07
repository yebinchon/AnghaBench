; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeNumberField.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeNumberField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i8*, i8*, i8*, i8*, i8*, i8* }

@errno = common dso_local global i64 0, align 8
@DTERR_BAD_FORMAT = common dso_local global i32 0, align 4
@DTK_DATE_M = common dso_local global i32 0, align 4
@DTK_DATE = common dso_local global i32 0, align 4
@DTK_TIME_M = common dso_local global i32 0, align 4
@DTK_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*, %struct.pg_tm*, i32*, i32*)* @DecodeNumberField to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeNumberField(i32 %0, i8* %1, i32 %2, i32* %3, %struct.pg_tm* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.pg_tm*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca double, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.pg_tm* %4, %struct.pg_tm** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 46)
  store i8* %19, i8** %16, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %7
  store i64 0, i64* @errno, align 8
  %22 = load i8*, i8** %16, align 8
  %23 = call double @strtod(i8* %22, i32* null)
  store double %23, double* %17, align 8
  %24 = load i64, i64* @errno, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %27, i32* %8, align 4
  br label %142

28:                                               ; preds = %21
  %29 = load double, double* %17, align 8
  %30 = fmul double %29, 1.000000e+06
  %31 = call i32 @rint(double %30)
  %32 = load i32*, i32** %14, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i8*, i8** %16, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %9, align 4
  br label %87

36:                                               ; preds = %7
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @DTK_DATE_M, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @DTK_DATE_M, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %43, 6
  br i1 %44, label %45, label %85

45:                                               ; preds = %42
  %46 = load i32, i32* @DTK_DATE_M, align 4
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = call i8* @atoi(i8* %52)
  %54 = load %struct.pg_tm*, %struct.pg_tm** %13, align 8
  %55 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %62, 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = call i8* @atoi(i8* %65)
  %67 = load %struct.pg_tm*, %struct.pg_tm** %13, align 8
  %68 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %10, align 8
  %75 = call i8* @atoi(i8* %74)
  %76 = load %struct.pg_tm*, %struct.pg_tm** %13, align 8
  %77 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %83

81:                                               ; preds = %45
  %82 = load i32*, i32** %15, align 8
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %45
  %84 = load i32, i32* @DTK_DATE, align 4
  store i32 %84, i32* %8, align 4
  br label %142

85:                                               ; preds = %42
  br label %86

86:                                               ; preds = %85, %36
  br label %87

87:                                               ; preds = %86, %28
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @DTK_TIME_M, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @DTK_TIME_M, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %140

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 6
  br i1 %95, label %96, label %118

96:                                               ; preds = %93
  %97 = load i32, i32* @DTK_TIME_M, align 4
  %98 = load i32*, i32** %12, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  %101 = call i8* @atoi(i8* %100)
  %102 = load %struct.pg_tm*, %struct.pg_tm** %13, align 8
  %103 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 4
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  %108 = call i8* @atoi(i8* %107)
  %109 = load %struct.pg_tm*, %struct.pg_tm** %13, align 8
  %110 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  store i8 0, i8* %112, align 1
  %113 = load i8*, i8** %10, align 8
  %114 = call i8* @atoi(i8* %113)
  %115 = load %struct.pg_tm*, %struct.pg_tm** %13, align 8
  %116 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* @DTK_TIME, align 4
  store i32 %117, i32* %8, align 4
  br label %142

118:                                              ; preds = %93
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %119, 4
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = load i32, i32* @DTK_TIME_M, align 4
  %123 = load i32*, i32** %12, align 8
  store i32 %122, i32* %123, align 4
  %124 = load %struct.pg_tm*, %struct.pg_tm** %13, align 8
  %125 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %124, i32 0, i32 2
  store i8* null, i8** %125, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  %128 = call i8* @atoi(i8* %127)
  %129 = load %struct.pg_tm*, %struct.pg_tm** %13, align 8
  %130 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  store i8 0, i8* %132, align 1
  %133 = load i8*, i8** %10, align 8
  %134 = call i8* @atoi(i8* %133)
  %135 = load %struct.pg_tm*, %struct.pg_tm** %13, align 8
  %136 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* @DTK_TIME, align 4
  store i32 %137, i32* %8, align 4
  br label %142

138:                                              ; preds = %118
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139, %87
  %141 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %140, %121, %96, %83, %26
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local double @strtod(i8*, i32*) #1

declare dso_local i32 @rint(double) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
