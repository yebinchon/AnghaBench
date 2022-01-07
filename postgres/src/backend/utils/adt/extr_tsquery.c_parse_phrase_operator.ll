; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_parse_phrase_operator.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_parse_phrase_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@MAXENTRYPOS = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"distance in phrase operator should not be greater than %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @parse_phrase_operator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_phrase_operator(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  store i64 1, i64* %9, align 8
  br label %13

13:                                               ; preds = %85, %32, %2
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %86

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %85 [
    i32 0, label %19
    i32 1, label %28
    i32 2, label %69
    i32 3, label %78
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @t_iseq(i8* %20, i8 signext 60)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  br label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %87

27:                                               ; preds = %23
  br label %85

28:                                               ; preds = %17
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @t_iseq(i8* %29, i8 signext 45)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  store i32 2, i32* %6, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  br label %13

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @t_isdigit(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %87

40:                                               ; preds = %35
  store i32 0, i32* @errno, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strtol(i8* %41, i8** %8, i32 10)
  store i64 %42, i64* %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %87

47:                                               ; preds = %40
  %48 = load i32, i32* @errno, align 4
  %49 = load i32, i32* @ERANGE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @MAXENTRYPOS, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54, %51, %47
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = load i64, i64* @MAXENTRYPOS, align 8
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = call i32 @ereport(i32 %59, i32 %63)
  br label %67

65:                                               ; preds = %54
  store i32 2, i32* %6, align 4
  %66 = load i8*, i8** %8, align 8
  store i8* %66, i8** %7, align 8
  br label %67

67:                                               ; preds = %65, %58
  br label %68

68:                                               ; preds = %67
  br label %85

69:                                               ; preds = %17
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @t_iseq(i8* %70, i8 signext 62)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  store i32 3, i32* %6, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %7, align 8
  br label %77

76:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %87

77:                                               ; preds = %73
  br label %85

78:                                               ; preds = %17
  %79 = load i64, i64* %9, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  store i32 1, i32* %3, align 4
  br label %87

85:                                               ; preds = %17, %77, %68, %27
  br label %13

86:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %78, %76, %46, %39, %26
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @t_iseq(i8*, i8 signext) #1

declare dso_local i32 @t_isdigit(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
