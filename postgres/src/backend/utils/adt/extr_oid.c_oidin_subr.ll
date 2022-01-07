; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_oid.c_oidin_subr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_oid.c_oidin_subr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid input syntax for type %s: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"value \22%s\22 is out of range for type %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8**)* @oidin_subr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @oidin_subr(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %15 = call i32 @errcode(i32 %14)
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = call i32 @ereport(i32 %13, i32 %17)
  br label %19

19:                                               ; preds = %12, %2
  store i64 0, i64* @errno, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strtoul(i8* %20, i8** %6, i32 10)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* @errno, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @ERANGE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EINVAL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = call i32 @ereport(i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %32, %28, %24, %19
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %51 = call i32 @errcode(i32 %50)
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = call i32 @ereport(i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %48, %43, %39
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @ERANGE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 @ereport(i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %59, %55
  %67 = load i8**, i8*** %4, align 8
  %68 = icmp ne i8** %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8*, i8** %6, align 8
  %71 = load i8**, i8*** %4, align 8
  store i8* %70, i8** %71, align 8
  br label %100

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %85, %72
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isspace(i8 zeroext %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i1 [ false, %73 ], [ %82, %78 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  br label %73

88:                                               ; preds = %83
  %89 = load i8*, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  %98 = call i32 @ereport(i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %92, %88
  br label %100

100:                                              ; preds = %99, %69
  %101 = load i64, i64* %5, align 8
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %7, align 8
  ret i64 %102
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
