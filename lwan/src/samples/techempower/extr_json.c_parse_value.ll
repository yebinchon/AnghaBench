; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_json.c_parse_value.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_json.c_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32**)* @parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_value(i8** %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  store i8** %0, i8*** %4, align 8
  store i32** %1, i32*** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %89 [
    i32 110, label %14
    i32 102, label %27
    i32 116, label %40
    i32 34, label %53
    i32 91, label %73
    i32 123, label %81
  ]

14:                                               ; preds = %2
  %15 = call i32 @expect_literal(i8** %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32**, i32*** %5, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = call i32* (...) @json_mknull()
  %22 = load i32**, i32*** %5, align 8
  store i32* %21, i32** %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i8*, i8** %6, align 8
  %25 = load i8**, i8*** %4, align 8
  store i8* %24, i8** %25, align 8
  store i32 1, i32* %3, align 4
  br label %109

26:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %109

27:                                               ; preds = %2
  %28 = call i32 @expect_literal(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32**, i32*** %5, align 8
  %32 = icmp ne i32** %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = call i32* @json_mkbool(i32 0)
  %35 = load i32**, i32*** %5, align 8
  store i32* %34, i32** %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i8*, i8** %6, align 8
  %38 = load i8**, i8*** %4, align 8
  store i8* %37, i8** %38, align 8
  store i32 1, i32* %3, align 4
  br label %109

39:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %109

40:                                               ; preds = %2
  %41 = call i32 @expect_literal(i8** %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32**, i32*** %5, align 8
  %45 = icmp ne i32** %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i32* @json_mkbool(i32 1)
  %48 = load i32**, i32*** %5, align 8
  store i32* %47, i32** %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i8*, i8** %6, align 8
  %51 = load i8**, i8*** %4, align 8
  store i8* %50, i8** %51, align 8
  store i32 1, i32* %3, align 4
  br label %109

52:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %109

53:                                               ; preds = %2
  %54 = load i32**, i32*** %5, align 8
  %55 = icmp ne i32** %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %58

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %56
  %59 = phi i8** [ %7, %56 ], [ null, %57 ]
  %60 = call i32 @parse_string(i8** %6, i8** %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32**, i32*** %5, align 8
  %64 = icmp ne i32** %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = call i32* @mkstring(i8* %66)
  %68 = load i32**, i32*** %5, align 8
  store i32* %67, i32** %68, align 8
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i8*, i8** %6, align 8
  %71 = load i8**, i8*** %4, align 8
  store i8* %70, i8** %71, align 8
  store i32 1, i32* %3, align 4
  br label %109

72:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %109

73:                                               ; preds = %2
  %74 = load i32**, i32*** %5, align 8
  %75 = call i32 @parse_array(i8** %6, i32** %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i8*, i8** %6, align 8
  %79 = load i8**, i8*** %4, align 8
  store i8* %78, i8** %79, align 8
  store i32 1, i32* %3, align 4
  br label %109

80:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %109

81:                                               ; preds = %2
  %82 = load i32**, i32*** %5, align 8
  %83 = call i32 @parse_object(i8** %6, i32** %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8
  %87 = load i8**, i8*** %4, align 8
  store i8* %86, i8** %87, align 8
  store i32 1, i32* %3, align 4
  br label %109

88:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %109

89:                                               ; preds = %2
  %90 = load i32**, i32*** %5, align 8
  %91 = icmp ne i32** %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %94

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %92
  %95 = phi double* [ %8, %92 ], [ null, %93 ]
  %96 = call i32 @parse_number(i8** %6, double* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32**, i32*** %5, align 8
  %100 = icmp ne i32** %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load double, double* %8, align 8
  %103 = call i32* @json_mknumber(double %102)
  %104 = load i32**, i32*** %5, align 8
  store i32* %103, i32** %104, align 8
  br label %105

105:                                              ; preds = %101, %98
  %106 = load i8*, i8** %6, align 8
  %107 = load i8**, i8*** %4, align 8
  store i8* %106, i8** %107, align 8
  store i32 1, i32* %3, align 4
  br label %109

108:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %105, %88, %85, %80, %77, %72, %69, %52, %49, %39, %36, %26, %23
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @expect_literal(i8**, i8*) #1

declare dso_local i32* @json_mknull(...) #1

declare dso_local i32* @json_mkbool(i32) #1

declare dso_local i32 @parse_string(i8**, i8**) #1

declare dso_local i32* @mkstring(i8*) #1

declare dso_local i32 @parse_array(i8**, i32**) #1

declare dso_local i32 @parse_object(i8**, i32**) #1

declare dso_local i32 @parse_number(i8**, double*) #1

declare dso_local i32* @json_mknumber(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
