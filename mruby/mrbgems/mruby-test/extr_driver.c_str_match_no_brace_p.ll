; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-test/extr_driver.c_str_match_no_brace_p.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-test/extr_driver.c_str_match_no_brace_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @str_match_no_brace_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_match_no_brace_p(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  br label %27

27:                                               ; preds = %137, %130, %97, %78, %69, %4
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = icmp eq i8* %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %143

36:                                               ; preds = %27
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %102 [
    i32 42, label %40
    i32 63, label %72
    i32 91, label %83
  ]

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %10, align 8
  br label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 42
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i1 [ false, %44 ], [ %52, %48 ]
  br i1 %54, label %41, label %55

55:                                               ; preds = %53
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = call i8* @UNESCAPE(i8* %56, i8* %57)
  %59 = load i8*, i8** %12, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %5, align 4
  br label %143

63:                                               ; preds = %55
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %5, align 4
  br label %143

69:                                               ; preds = %63
  %70 = load i8*, i8** %10, align 8
  store i8* %70, i8** %14, align 8
  %71 = load i8*, i8** %11, align 8
  store i8* %71, i8** %15, align 8
  br label %27

72:                                               ; preds = %36
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = icmp eq i8* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %5, align 4
  br label %143

78:                                               ; preds = %72
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %10, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %11, align 8
  br label %27

83:                                               ; preds = %36
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %5, align 4
  br label %143

89:                                               ; preds = %83
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8*, i8** %12, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = call i8* @str_match_bracket(i8* %91, i8* %92, i8* %93, i8* %94)
  store i8* %95, i8** %16, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load i8*, i8** %16, align 8
  store i8* %98, i8** %10, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %11, align 8
  br label %27

101:                                              ; preds = %89
  br label %131

102:                                              ; preds = %36
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = call i8* @UNESCAPE(i8* %103, i8* %104)
  store i8* %105, i8** %10, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = icmp eq i8* %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load i8*, i8** %10, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = icmp eq i8* %110, %111
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %5, align 4
  br label %143

114:                                              ; preds = %102
  %115 = load i8*, i8** %10, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = icmp eq i8* %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %131

119:                                              ; preds = %114
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %10, align 8
  %122 = load i8, i8* %120, align 1
  %123 = sext i8 %122 to i32
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %11, align 8
  %126 = load i8, i8* %124, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %123, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %131

130:                                              ; preds = %119
  br label %27

131:                                              ; preds = %129, %118, %101
  %132 = load i8*, i8** %14, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load i8*, i8** %15, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i8*, i8** %14, align 8
  store i8* %138, i8** %10, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %15, align 8
  store i8* %140, i8** %11, align 8
  br label %27

141:                                              ; preds = %134, %131
  %142 = load i32, i32* @FALSE, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %109, %87, %76, %67, %61, %31
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i8* @UNESCAPE(i8*, i8*) #1

declare dso_local i8* @str_match_bracket(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
