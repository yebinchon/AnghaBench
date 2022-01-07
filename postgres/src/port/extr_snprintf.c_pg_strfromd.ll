; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_snprintf.c_pg_strfromd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_snprintf.c_pg_strfromd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i32, i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@pg_strfromd.dzero = internal constant double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_strfromd(i8* %0, i64 %1, i32 %2, double %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i8], align 1
  %13 = alloca [64 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i64, i64* %6, align 8
  %15 = icmp ugt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 5
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 1, i32* %7, align 4
  br label %37

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 32
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 32, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %32
  br label %37

37:                                               ; preds = %36, %31
  %38 = load double, double* %8, align 8
  %39 = call i64 @isnan(double %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %43 = call i32 @strcpy(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 3, i32* %11, align 4
  br label %80

44:                                               ; preds = %37
  %45 = load double, double* %8, align 8
  %46 = fcmp olt double %45, 0.000000e+00
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load double, double* %8, align 8
  %49 = fcmp oeq double %48, 0.000000e+00
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = call i64 @memcmp(double* %8, double* @pg_strfromd.dzero, i32 8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %44
  store i32 45, i32* %10, align 4
  %54 = load double, double* %8, align 8
  %55 = fneg double %54
  store double %55, double* %8, align 8
  br label %56

56:                                               ; preds = %53, %50, %47
  %57 = load double, double* %8, align 8
  %58 = call i64 @isinf(double %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %62 = call i32 @strcpy(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 8, i32* %11, align 4
  br label %79

63:                                               ; preds = %56
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  store i8 37, i8* %64, align 1
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  store i8 46, i8* %65, align 1
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 2
  store i8 42, i8* %66, align 1
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 3
  store i8 103, i8* %67, align 1
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 4
  store i8 0, i8* %68, align 1
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %71 = load i32, i32* %7, align 4
  %72 = load double, double* %8, align 8
  %73 = call i32 @sprintf(i8* %69, i8* %70, i32 %71, double %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  store i32 1, i32* %77, align 4
  br label %90

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %60
  br label %80

80:                                               ; preds = %79, %41
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @dopr_outch(i32 %84, %struct.TYPE_4__* %9)
  br label %86

86:                                               ; preds = %83, %80
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @dostr(i8* %87, i32 %88, %struct.TYPE_4__* %9)
  br label %90

90:                                               ; preds = %86, %76
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  store i8 0, i8* %92, align 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %109

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = ptrtoint i8* %99 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  br label %109

109:                                              ; preds = %97, %96
  %110 = phi i64 [ -1, %96 ], [ %108, %97 ]
  %111 = trunc i64 %110 to i32
  ret i32 %111
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @memcmp(double*, double*, i32) #1

declare dso_local i64 @isinf(double) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, double) #1

declare dso_local i32 @dopr_outch(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dostr(i8*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
