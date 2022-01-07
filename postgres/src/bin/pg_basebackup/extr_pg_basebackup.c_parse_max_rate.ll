; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_parse_max_rate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_parse_max_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"transfer rate \22%s\22 is not a valid value\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid transfer rate \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"transfer rate must be greater than zero\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid --max-rate unit: \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"transfer rate \22%s\22 exceeds integer range\00", align 1
@MAX_RATE_LOWER = common dso_local global double 0.000000e+00, align 8
@MAX_RATE_UPPER = common dso_local global double 0.000000e+00, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"transfer rate \22%s\22 is out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_max_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_max_rate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %5, align 8
  store i64 0, i64* @errno, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call double @strtod(i8* %6, i8** %4)
  store double %7, double* %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %1
  %16 = load i64, i64* @errno, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %15
  %23 = load double, double* %3, align 8
  %24 = fcmp ole double %23, 0.000000e+00
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isspace(i8 zeroext %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  br label %29

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 107
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  br label %69

58:                                               ; preds = %49
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 77
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  %66 = load double, double* %3, align 8
  %67 = fmul double %66, 1.024000e+03
  store double %67, double* %3, align 8
  br label %68

68:                                               ; preds = %63, %58
  br label %69

69:                                               ; preds = %68, %55
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %83, %70
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8*, i8** %4, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @isspace(i8 zeroext %78)
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i1 [ false, %71 ], [ %80, %76 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %4, align 8
  br label %71

86:                                               ; preds = %81
  %87 = load i8*, i8** %4, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %92)
  %94 = call i32 @exit(i32 1) #3
  unreachable

95:                                               ; preds = %86
  %96 = load double, double* %3, align 8
  %97 = fptosi double %96 to i64
  %98 = load double, double* %3, align 8
  %99 = fptosi double %98 to i64
  %100 = icmp ne i64 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i8*, i8** %2, align 8
  %103 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  %104 = call i32 @exit(i32 1) #3
  unreachable

105:                                              ; preds = %95
  %106 = load double, double* %3, align 8
  %107 = load double, double* @MAX_RATE_LOWER, align 8
  %108 = fcmp olt double %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load double, double* %3, align 8
  %111 = load double, double* @MAX_RATE_UPPER, align 8
  %112 = fcmp ogt double %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109, %105
  %114 = load i8*, i8** %2, align 8
  %115 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  %116 = call i32 @exit(i32 1) #3
  unreachable

117:                                              ; preds = %109
  %118 = load double, double* %3, align 8
  %119 = fptosi double %118 to i32
  ret i32 %119
}

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
