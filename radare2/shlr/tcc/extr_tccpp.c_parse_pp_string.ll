; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_parse_pp_string.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_parse_pp_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@file = common dso_local global %struct.TYPE_2__* null, align 8
@CH_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"missing terminating %c character\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"'\0A' after '\0D'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*)* @parse_pp_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_pp_string(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %5, align 8
  br label %11

11:                                               ; preds = %139, %3
  %12 = call i64 (...) @tcc_nerr()
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %140

14:                                               ; preds = %11
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %140

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 92
  br i1 %23, label %24, label %95

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = call i32 (...) @handle_eob()
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @CH_EOF, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %77, %35
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @tcc_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32* null, i32** %4, align 8
  br label %144

39:                                               ; preds = %24
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 92
  br i1 %41, label %42, label %93

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @PEEKC_EOB(i32 %43, i32* %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %5, align 8
  br label %92

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 13
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @PEEKC_EOB(i32 %59, i32* %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 10
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 @expect(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %144

66:                                               ; preds = %58
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %5, align 8
  br label %91

73:                                               ; preds = %55
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @CH_EOF, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %36

78:                                               ; preds = %73
  %79 = load i32*, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @cstr_ccat(i32* %82, i32 92)
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @cstr_ccat(i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %5, align 8
  br label %90

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90, %66
  br label %92

92:                                               ; preds = %91, %48
  br label %93

93:                                               ; preds = %92, %39
  br label %94

94:                                               ; preds = %93
  br label %138

95:                                               ; preds = %21
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %126

103:                                              ; preds = %95
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 13
  br i1 %105, label %106, label %125

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @PEEKC_EOB(i32 %107, i32* %108)
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 10
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i32*, i32** %7, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @cstr_ccat(i32* %116, i32 13)
  br label %118

118:                                              ; preds = %115, %112
  br label %124

119:                                              ; preds = %106
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  br label %126

124:                                              ; preds = %118
  br label %136

125:                                              ; preds = %103
  br label %126

126:                                              ; preds = %125, %119, %98
  %127 = load i32*, i32** %7, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @cstr_ccat(i32* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %5, align 8
  br label %136

136:                                              ; preds = %133, %124
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137, %94
  br label %139

139:                                              ; preds = %138
  br label %11

140:                                              ; preds = %20, %11
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %5, align 8
  %143 = load i32*, i32** %5, align 8
  store i32* %143, i32** %4, align 8
  br label %144

144:                                              ; preds = %140, %64, %36
  %145 = load i32*, i32** %4, align 8
  ret i32* %145
}

declare dso_local i64 @tcc_nerr(...) #1

declare dso_local i32 @handle_eob(...) #1

declare dso_local i32 @tcc_error(i8*, i32) #1

declare dso_local i32 @PEEKC_EOB(i32, i32*) #1

declare dso_local i32 @expect(i8*) #1

declare dso_local i32 @cstr_ccat(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
