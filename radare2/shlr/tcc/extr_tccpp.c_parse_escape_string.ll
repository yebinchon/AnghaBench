; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_parse_escape_string.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_parse_escape_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gnu_ext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unknown escape sequence: '\\%c'\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unknown escape sequence: '\\x%x'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @parse_escape_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_escape_string(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %9, align 8
  br label %11

11:                                               ; preds = %148, %3
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %149

17:                                               ; preds = %11
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 92
  br i1 %19, label %20, label %132

20:                                               ; preds = %17
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %117 [
    i32 48, label %26
    i32 49, label %26
    i32 50, label %26
    i32 51, label %26
    i32 52, label %26
    i32 53, label %26
    i32 54, label %26
    i32 55, label %26
    i32 120, label %60
    i32 117, label %60
    i32 85, label %60
    i32 97, label %104
    i32 98, label %105
    i32 102, label %106
    i32 110, label %107
    i32 114, label %108
    i32 116, label %109
    i32 118, label %110
    i32 101, label %111
    i32 39, label %116
    i32 34, label %116
    i32 92, label %116
    i32 63, label %116
  ]

26:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 48
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @isoct(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  %41 = sub nsw i32 %40, 48
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @isoct(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %36
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %50, 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %51, %52
  %54 = sub nsw i32 %53, 48
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %9, align 8
  br label %57

57:                                               ; preds = %49, %36
  br label %58

58:                                               ; preds = %57, %26
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %7, align 4
  br label %135

60:                                               ; preds = %20, %20, %20
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %95, %60
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sge i32 %66, 97
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  %70 = icmp sle i32 %69, 102
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, 97
  %74 = add nsw i32 %73, 10
  store i32 %74, i32* %7, align 4
  br label %95

75:                                               ; preds = %68, %63
  %76 = load i32, i32* %7, align 4
  %77 = icmp sge i32 %76, 65
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = icmp sle i32 %79, 70
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %82, 65
  %84 = add nsw i32 %83, 10
  store i32 %84, i32* %7, align 4
  br label %94

85:                                               ; preds = %78, %75
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @isnum(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, 48
  store i32 %91, i32* %7, align 4
  br label %93

92:                                               ; preds = %85
  br label %102

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %81
  br label %95

95:                                               ; preds = %94, %71
  %96 = load i32, i32* %8, align 4
  %97 = mul nsw i32 %96, 16
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %8, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %9, align 8
  br label %63

102:                                              ; preds = %92
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %7, align 4
  br label %135

104:                                              ; preds = %20
  store i32 7, i32* %7, align 4
  br label %131

105:                                              ; preds = %20
  store i32 8, i32* %7, align 4
  br label %131

106:                                              ; preds = %20
  store i32 12, i32* %7, align 4
  br label %131

107:                                              ; preds = %20
  store i32 10, i32* %7, align 4
  br label %131

108:                                              ; preds = %20
  store i32 13, i32* %7, align 4
  br label %131

109:                                              ; preds = %20
  store i32 9, i32* %7, align 4
  br label %131

110:                                              ; preds = %20
  store i32 11, i32* %7, align 4
  br label %131

111:                                              ; preds = %20
  %112 = load i32, i32* @gnu_ext, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  br label %118

115:                                              ; preds = %111
  store i32 27, i32* %7, align 4
  br label %131

116:                                              ; preds = %20, %20, %20, %20
  br label %131

117:                                              ; preds = %20
  br label %118

118:                                              ; preds = %117, %114
  %119 = load i32, i32* %7, align 4
  %120 = icmp sge i32 %119, 33
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %7, align 4
  %123 = icmp sle i32 %122, 126
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @tcc_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %125)
  br label %130

127:                                              ; preds = %121, %118
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @tcc_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %130, %116, %115, %110, %109, %108, %107, %106, %105, %104
  br label %132

132:                                              ; preds = %131, %17
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %9, align 8
  br label %135

135:                                              ; preds = %132, %102, %58
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* %7, align 4
  %141 = trunc i32 %140 to i8
  %142 = call i32 @cstr_ccat(i32* %139, i8 signext %141)
  br label %148

143:                                              ; preds = %135
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = trunc i32 %145 to i8
  %147 = call i32 @cstr_wccat(i32* %144, i8 signext %146)
  br label %148

148:                                              ; preds = %143, %138
  br label %11

149:                                              ; preds = %16
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @cstr_ccat(i32* %153, i8 signext 0)
  br label %158

155:                                              ; preds = %149
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @cstr_wccat(i32* %156, i8 signext 0)
  br label %158

158:                                              ; preds = %155, %152
  ret void
}

declare dso_local i32 @isoct(i32) #1

declare dso_local i32 @isnum(i32) #1

declare dso_local i32 @tcc_warning(i8*, i32) #1

declare dso_local i32 @cstr_ccat(i32*, i8 signext) #1

declare dso_local i32 @cstr_wccat(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
