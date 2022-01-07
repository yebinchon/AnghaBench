; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_parse_comment.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_parse_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@file = common dso_local global %struct.TYPE_2__* null, align 8
@CH_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unexpected end of file in comment\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_comment(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %5, i32** %2, align 8
  br label %6

6:                                                ; preds = %146, %1
  br label %7

7:                                                ; preds = %33, %6
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 42
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 92
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %7
  br label %36

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %2, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 42
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 92
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26, %19
  br label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %2, align 8
  br label %7

36:                                               ; preds = %32, %18
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %2, align 8
  br label %146

46:                                               ; preds = %36
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 42
  br i1 %48, label %49, label %124

49:                                               ; preds = %46
  %50 = load i32*, i32** %2, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %2, align 8
  br label %52

52:                                               ; preds = %121, %49
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp eq i32 %55, 42
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32*, i32** %2, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %2, align 8
  br label %121

60:                                               ; preds = %52
  %61 = load i32, i32* %3, align 4
  %62 = icmp eq i32 %61, 47
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %147

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = icmp eq i32 %65, 92
  br i1 %66, label %67, label %118

67:                                               ; preds = %64
  %68 = load i32*, i32** %2, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = call i32 (...) @handle_eob()
  store i32 %71, i32* %3, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %2, align 8
  %75 = load i32, i32* %3, align 4
  %76 = icmp eq i32 %75, 92
  br i1 %76, label %77, label %117

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %115, %77
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %79, 92
  br i1 %80, label %81, label %116

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @PEEKC_EOB(i32 %82, i32* %83)
  %85 = load i32, i32* %3, align 4
  %86 = icmp eq i32 %85, 10
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* %3, align 4
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @PEEKC_EOB(i32 %92, i32* %93)
  br label %115

95:                                               ; preds = %81
  %96 = load i32, i32* %3, align 4
  %97 = icmp eq i32 %96, 13
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @PEEKC_EOB(i32 %99, i32* %100)
  %102 = load i32, i32* %3, align 4
  %103 = icmp eq i32 %102, 10
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* %3, align 4
  %110 = load i32*, i32** %2, align 8
  %111 = call i32 @PEEKC_EOB(i32 %109, i32* %110)
  br label %112

112:                                              ; preds = %104, %98
  br label %114

113:                                              ; preds = %95
  br label %123

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114, %87
  br label %78

116:                                              ; preds = %78
  br label %117

117:                                              ; preds = %116, %67
  br label %119

118:                                              ; preds = %64
  br label %122

119:                                              ; preds = %117
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120, %57
  br label %52

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122, %113
  br label %145

124:                                              ; preds = %46
  %125 = load i32*, i32** %2, align 8
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i32* %125, i32** %127, align 8
  %128 = call i32 (...) @handle_eob()
  store i32 %128, i32* %3, align 4
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %2, align 8
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @CH_EOF, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = call i32 @tcc_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %144

137:                                              ; preds = %124
  %138 = load i32, i32* %3, align 4
  %139 = icmp eq i32 %138, 92
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32*, i32** %2, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %2, align 8
  br label %143

143:                                              ; preds = %140, %137
  br label %144

144:                                              ; preds = %143, %135
  br label %145

145:                                              ; preds = %144, %123
  br label %146

146:                                              ; preds = %145, %39
  br label %6

147:                                              ; preds = %63
  %148 = load i32*, i32** %2, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %2, align 8
  %150 = load i32*, i32** %2, align 8
  ret i32* %150
}

declare dso_local i32 @handle_eob(...) #1

declare dso_local i32 @PEEKC_EOB(i32, i32*) #1

declare dso_local i32 @tcc_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
