; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/json/src/extr_json.c_parse_object.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/json/src/extr_json.c_parse_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32**)* @parse_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_object(i8** %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32* (...) @json_mkobject()
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32* [ %15, %14 ], [ null, %16 ]
  store i32* %18, i32** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  %21 = load i8, i8* %19, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 123
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %106

25:                                               ; preds = %17
  %26 = call i32 @skip_space(i8** %6)
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 125
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  br label %90

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %88, %34
  %36 = load i32**, i32*** %5, align 8
  %37 = icmp ne i32** %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %40

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %38
  %41 = phi i8** [ %8, %38 ], [ null, %39 ]
  %42 = call i32 @parse_string(i8** %6, i8** %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %106

45:                                               ; preds = %40
  %46 = call i32 @skip_space(i8** %6)
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 58
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %99

53:                                               ; preds = %45
  %54 = call i32 @skip_space(i8** %6)
  %55 = load i32**, i32*** %5, align 8
  %56 = icmp ne i32** %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %59

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %57
  %60 = phi i32** [ %9, %57 ], [ null, %58 ]
  %61 = call i32 @parse_value(i8** %6, i32** %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %99

64:                                               ; preds = %59
  %65 = call i32 @skip_space(i8** %6)
  %66 = load i32**, i32*** %5, align 8
  %67 = icmp ne i32** %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32*, i32** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @append_member(i32* %69, i8* %70, i32* %71)
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 125
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %6, align 8
  br label %90

81:                                               ; preds = %73
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  %84 = load i8, i8* %82, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 44
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %106

88:                                               ; preds = %81
  %89 = call i32 @skip_space(i8** %6)
  br label %35

90:                                               ; preds = %78, %31
  %91 = load i8*, i8** %6, align 8
  %92 = load i8**, i8*** %4, align 8
  store i8* %91, i8** %92, align 8
  %93 = load i32**, i32*** %5, align 8
  %94 = icmp ne i32** %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32*, i32** %7, align 8
  %97 = load i32**, i32*** %5, align 8
  store i32* %96, i32** %97, align 8
  br label %98

98:                                               ; preds = %95, %90
  store i32 1, i32* %3, align 4
  br label %109

99:                                               ; preds = %63, %52
  %100 = load i32**, i32*** %5, align 8
  %101 = icmp ne i32** %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @free(i8* %103)
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %87, %44, %24
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @json_delete(i32* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %106, %98
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32* @json_mkobject(...) #1

declare dso_local i32 @skip_space(i8**) #1

declare dso_local i32 @parse_string(i8**, i8**) #1

declare dso_local i32 @parse_value(i8**, i32**) #1

declare dso_local i32 @append_member(i32*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @json_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
