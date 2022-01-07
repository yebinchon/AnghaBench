; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_variables.c_ParseVariableBool.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_variables.c_ParseVariableBool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"unrecognized value \22%s\22 for \22%s\22: Boolean expected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseVariableBool(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %12

12:                                               ; preds = %11, %3
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @pg_strncasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  store i32 1, i32* %23, align 4
  br label %107

24:                                               ; preds = %17, %12
  %25 = load i64, i64* %7, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @pg_strncasecmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  store i32 0, i32* %33, align 4
  br label %106

34:                                               ; preds = %27, %24
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @pg_strncasecmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32*, i32** %6, align 8
  store i32 1, i32* %43, align 4
  br label %105

44:                                               ; preds = %37, %34
  %45 = load i64, i64* %7, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @pg_strncasecmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32*, i32** %6, align 8
  store i32 0, i32* %53, align 4
  br label %104

54:                                               ; preds = %47, %44
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ugt i64 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i64 [ %59, %58 ], [ 2, %60 ]
  %63 = call i64 @pg_strncasecmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  store i32 1, i32* %66, align 4
  br label %103

67:                                               ; preds = %61
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ugt i64 %69, 2
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* %7, align 8
  br label %74

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i64 [ %72, %71 ], [ 2, %73 ]
  %76 = call i64 @pg_strncasecmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32*, i32** %6, align 8
  store i32 0, i32* %79, align 4
  br label %102

80:                                               ; preds = %74
  %81 = load i8*, i8** %4, align 8
  %82 = call i64 @pg_strcasecmp(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32*, i32** %6, align 8
  store i32 1, i32* %85, align 4
  br label %101

86:                                               ; preds = %80
  %87 = load i8*, i8** %4, align 8
  %88 = call i64 @pg_strcasecmp(i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32*, i32** %6, align 8
  store i32 0, i32* %91, align 4
  br label %100

92:                                               ; preds = %86
  %93 = load i8*, i8** %5, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i8*, i8** %4, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @pg_log_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %95, %92
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %99, %90
  br label %101

101:                                              ; preds = %100, %84
  br label %102

102:                                              ; preds = %101, %78
  br label %103

103:                                              ; preds = %102, %65
  br label %104

104:                                              ; preds = %103, %52
  br label %105

105:                                              ; preds = %104, %42
  br label %106

106:                                              ; preds = %105, %32
  br label %107

107:                                              ; preds = %106, %22
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i64) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i32 @pg_log_error(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
