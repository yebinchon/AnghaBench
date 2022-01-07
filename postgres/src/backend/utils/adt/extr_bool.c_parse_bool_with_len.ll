; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_bool.c_parse_bool_with_len.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_bool.c_parse_bool_with_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_bool_with_len(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %115 [
    i32 116, label %11
    i32 84, label %11
    i32 102, label %23
    i32 70, label %23
    i32 121, label %35
    i32 89, label %35
    i32 110, label %47
    i32 78, label %47
    i32 111, label %59
    i32 79, label %59
    i32 49, label %95
    i32 48, label %105
  ]

11:                                               ; preds = %3, %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @pg_strncasecmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %16
  store i32 1, i32* %4, align 4
  br label %122

22:                                               ; preds = %11
  br label %116

23:                                               ; preds = %3, %3
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @pg_strncasecmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %28
  store i32 1, i32* %4, align 4
  br label %122

34:                                               ; preds = %23
  br label %116

35:                                               ; preds = %3, %3
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @pg_strncasecmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32*, i32** %7, align 8
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %40
  store i32 1, i32* %4, align 4
  br label %122

46:                                               ; preds = %35
  br label %116

47:                                               ; preds = %3, %3
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @pg_strncasecmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %55, %52
  store i32 1, i32* %4, align 4
  br label %122

58:                                               ; preds = %47
  br label %116

59:                                               ; preds = %3, %3
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ugt i64 %61, 2
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* %6, align 8
  br label %66

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i64 [ %64, %63 ], [ 2, %65 ]
  %68 = call i32 @pg_strncasecmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32*, i32** %7, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %73, %70
  store i32 1, i32* %4, align 4
  br label %122

76:                                               ; preds = %66
  %77 = load i8*, i8** %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = icmp ugt i64 %78, 2
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  br label %83

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i64 [ %81, %80 ], [ 2, %82 ]
  %85 = call i32 @pg_strncasecmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %84)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32*, i32** %7, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32*, i32** %7, align 8
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %90, %87
  store i32 1, i32* %4, align 4
  br label %122

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93
  br label %116

95:                                               ; preds = %3
  %96 = load i64, i64* %6, align 8
  %97 = icmp eq i64 %96, 1
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32*, i32** %7, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32*, i32** %7, align 8
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %101, %98
  store i32 1, i32* %4, align 4
  br label %122

104:                                              ; preds = %95
  br label %116

105:                                              ; preds = %3
  %106 = load i64, i64* %6, align 8
  %107 = icmp eq i64 %106, 1
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32*, i32** %7, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32*, i32** %7, align 8
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %111, %108
  store i32 1, i32* %4, align 4
  br label %122

114:                                              ; preds = %105
  br label %116

115:                                              ; preds = %3
  br label %116

116:                                              ; preds = %115, %114, %104, %94, %58, %46, %34, %22
  %117 = load i32*, i32** %7, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32*, i32** %7, align 8
  store i32 0, i32* %120, align 4
  br label %121

121:                                              ; preds = %119, %116
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %113, %103, %92, %75, %57, %45, %33, %21
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @pg_strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
