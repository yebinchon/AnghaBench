; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-test/extr_driver.c_str_match_bracket.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-test/extr_driver.c_str_match_bracket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i8*)* @str_match_bracket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @str_match_bracket(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %121

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 33
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 94
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %20
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %30, %25
  br label %35

35:                                               ; preds = %110, %34
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 93
  br i1 %39, label %40, label %111

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i8* @UNESCAPE(i8* %42, i8* %43)
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i8* null, i8** %5, align 8
  br label %121

48:                                               ; preds = %40
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i8* null, i8** %5, align 8
  br label %121

54:                                               ; preds = %48
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 45
  br i1 %59, label %60, label %97

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 93
  br i1 %65, label %66, label %97

66:                                               ; preds = %60
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %68, i8** %13, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i8* @UNESCAPE(i8* %69, i8* %70)
  store i8* %71, i8** %13, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i8* null, i8** %5, align 8
  br label %121

75:                                               ; preds = %66
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8* %77, i8** %6, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %12, align 8
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %8, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @CHAR_CMP(i8 signext %82, i8 signext %84)
  %86 = icmp sle i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load i8*, i8** %8, align 8
  %89 = load i8, i8* %88, align 1
  %90 = load i8*, i8** %13, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @CHAR_CMP(i8 signext %89, i8 signext %91)
  %93 = icmp sle i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i64, i64* @TRUE, align 8
  store i64 %95, i64* %10, align 8
  br label %96

96:                                               ; preds = %94, %87, %80, %75
  br label %110

97:                                               ; preds = %60, %54
  %98 = load i64, i64* %10, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %97
  %101 = load i8*, i8** %12, align 8
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %8, align 8
  %104 = load i8, i8* %103, align 1
  %105 = call i64 @CHAR_CMP(i8 signext %102, i8 signext %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i64, i64* @TRUE, align 8
  store i64 %108, i64* %10, align 8
  br label %109

109:                                              ; preds = %107, %100, %97
  br label %110

110:                                              ; preds = %109, %96
  br label %35

111:                                              ; preds = %35
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %11, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %119

116:                                              ; preds = %111
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  br label %119

119:                                              ; preds = %116, %115
  %120 = phi i8* [ null, %115 ], [ %118, %116 ]
  store i8* %120, i8** %5, align 8
  br label %121

121:                                              ; preds = %119, %74, %53, %47, %19
  %122 = load i8*, i8** %5, align 8
  ret i8* %122
}

declare dso_local i8* @UNESCAPE(i8*, i8*) #1

declare dso_local i64 @CHAR_CMP(i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
