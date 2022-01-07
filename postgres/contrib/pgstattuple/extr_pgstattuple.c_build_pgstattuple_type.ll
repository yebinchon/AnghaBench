; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstattuple.c_build_pgstattuple_type.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstattuple.c_build_pgstattuple_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double, double, double }

@TYPEFUNC_COMPOSITE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"return type must be a row type\00", align 1
@INT64_FORMAT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@NCHARS = common dso_local global i32 0, align 4
@NCOLUMNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @build_pgstattuple_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_pgstattuple_type(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [9 x i8*], align 16
  %7 = alloca [9 x [314 x i8]], align 16
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @get_call_result_type(i32 %14, i32* null, i32* %12)
  %16 = load i64, i64* @TYPEFUNC_COMPOSITE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ERROR, align 4
  %20 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %12, align 4
  %23 = call i32* @TupleDescGetAttInMetadata(i32 %22)
  store i32* %23, i32** %13, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = fcmp oeq double %26, 0.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  br label %54

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = fmul double 1.000000e+02, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = fdiv double %33, %36
  store double %37, double* %9, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load double, double* %39, align 8
  %41 = fmul double 1.000000e+02, %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = fdiv double %41, %44
  store double %45, double* %10, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load double, double* %47, align 8
  %49 = fmul double 1.000000e+02, %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = fdiv double %49, %52
  store double %53, double* %11, align 8
  br label %54

54:                                               ; preds = %29, %28
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %66, %54
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 9
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [9 x [314 x i8]], [9 x [314 x i8]]* %7, i64 0, i64 %60
  %62 = getelementptr inbounds [314 x i8], [314 x i8]* %61, i64 0, i64 0
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %64
  store i8* %62, i8** %65, align 8
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %55

69:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** @INT64_FORMAT, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load double, double* %77, align 8
  %79 = call i32 @snprintf(i8* %74, i32 314, i8* %75, double %78)
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** @INT64_FORMAT, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  %88 = load double, double* %87, align 8
  %89 = call i32 @snprintf(i8* %84, i32 314, i8* %85, double %88)
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** @INT64_FORMAT, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load double, double* %97, align 8
  %99 = call i32 @snprintf(i8* %94, i32 314, i8* %95, double %98)
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load double, double* %9, align 8
  %106 = call i32 @snprintf(i8* %104, i32 314, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), double %105)
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** @INT64_FORMAT, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 5
  %115 = load double, double* %114, align 8
  %116 = call i32 @snprintf(i8* %111, i32 314, i8* %112, double %115)
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** @INT64_FORMAT, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load double, double* %124, align 8
  %126 = call i32 @snprintf(i8* %121, i32 314, i8* %122, double %125)
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load double, double* %10, align 8
  %133 = call i32 @snprintf(i8* %131, i32 314, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), double %132)
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = load i8*, i8** @INT64_FORMAT, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load double, double* %141, align 8
  %143 = call i32 @snprintf(i8* %138, i32 314, i8* %139, double %142)
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = load double, double* %11, align 8
  %150 = call i32 @snprintf(i8* %148, i32 314, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), double %149)
  %151 = load i32*, i32** %13, align 8
  %152 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 0
  %153 = call i32 @BuildTupleFromCStrings(i32* %151, i8** %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @HeapTupleGetDatum(i32 %154)
  ret i32 %155
}

declare dso_local i64 @get_call_result_type(i32, i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32* @TupleDescGetAttInMetadata(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

declare dso_local i32 @BuildTupleFromCStrings(i32*, i8**) #1

declare dso_local i32 @HeapTupleGetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
