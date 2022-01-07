; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_preprocess_skip.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_preprocess_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i32 }

@file = common dso_local global %struct.TYPE_2__* null, align 8
@CH_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"#endif\00", align 1
@ch = common dso_local global i8 0, align 1
@tok = common dso_local global i32 0, align 4
@TOK_ELSE = common dso_local global i32 0, align 4
@TOK_ELIF = common dso_local global i32 0, align 4
@TOK_ENDIF = common dso_local global i32 0, align 4
@TOK_IF = common dso_local global i32 0, align 4
@TOK_IFDEF = common dso_local global i32 0, align 4
@TOK_IFNDEF = common dso_local global i32 0, align 4
@TOK_ERROR = common dso_local global i32 0, align 4
@TOK_WARNING = common dso_local global i32 0, align 4
@TOK_LINEFEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @preprocess_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preprocess_skip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i8**, i8*** %7, align 8
  store i8** %8, i8*** %5, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %160, %22, %0
  store i32 1, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %170, %9
  %11 = call i64 (...) @tcc_nerr()
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %171

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %51, %19, %13
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %167 [
    i32 32, label %19
    i32 9, label %19
    i32 12, label %19
    i32 11, label %19
    i32 13, label %19
    i32 10, label %22
    i32 92, label %29
    i32 34, label %55
    i32 39, label %55
    i32 47, label %67
    i32 35, label %97
  ]

19:                                               ; preds = %14, %14, %14, %14, %14
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %5, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %5, align 8
  br label %9

29:                                               ; preds = %14
  %30 = load i8**, i8*** %5, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8** %30, i8*** %32, align 8
  %33 = call i32 (...) @handle_eob()
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @CH_EOF, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @expect(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %176

39:                                               ; preds = %29
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 92
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %47 to i8
  store i8 %48, i8* @ch, align 1
  %49 = call i32 (...) @handle_stray_noerror()
  br label %50

50:                                               ; preds = %42, %39
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  store i8** %54, i8*** %5, align 8
  br label %14

55:                                               ; preds = %14, %14
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %166

59:                                               ; preds = %55
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i8** @parse_pp_string(i8** %60, i32 %61, i32* null)
  store i8** %62, i8*** %5, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = icmp eq i8** %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %176

66:                                               ; preds = %59
  br label %170

67:                                               ; preds = %14
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %166

71:                                               ; preds = %67
  %72 = load i8**, i8*** %5, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i8** %72, i8*** %74, align 8
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %76 to i8
  store i8 %77, i8* @ch, align 1
  %78 = call i32 (...) @minp()
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  store i8** %81, i8*** %5, align 8
  %82 = load i8, i8* @ch, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 42
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load i8**, i8*** %5, align 8
  %87 = call i8** @parse_comment(i8** %86)
  store i8** %87, i8*** %5, align 8
  br label %96

88:                                               ; preds = %71
  %89 = load i8, i8* @ch, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 47
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i8**, i8*** %5, align 8
  %94 = call i8** @parse_line_comment(i8** %93)
  store i8** %94, i8*** %5, align 8
  br label %95

95:                                               ; preds = %92, %88
  br label %96

96:                                               ; preds = %95, %85
  br label %170

97:                                               ; preds = %14
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i32 1
  store i8** %99, i8*** %5, align 8
  %100 = load i32, i32* %2, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %165

102:                                              ; preds = %97
  %103 = load i8**, i8*** %5, align 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i8** %103, i8*** %105, align 8
  %106 = call i32 (...) @next_nomacro()
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i8**, i8*** %108, align 8
  store i8** %109, i8*** %5, align 8
  %110 = load i32, i32* %1, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %102
  %113 = load i32, i32* @tok, align 4
  %114 = load i32, i32* @TOK_ELSE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* @tok, align 4
  %118 = load i32, i32* @TOK_ELIF, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* @tok, align 4
  %122 = load i32, i32* @TOK_ENDIF, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %116, %112
  br label %172

125:                                              ; preds = %120, %102
  %126 = load i32, i32* @tok, align 4
  %127 = load i32, i32* @TOK_IF, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %137, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* @tok, align 4
  %131 = load i32, i32* @TOK_IFDEF, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* @tok, align 4
  %135 = load i32, i32* @TOK_IFNDEF, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133, %129, %125
  %138 = load i32, i32* %1, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %1, align 4
  br label %164

140:                                              ; preds = %133
  %141 = load i32, i32* @tok, align 4
  %142 = load i32, i32* @TOK_ENDIF, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* %1, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %1, align 4
  br label %163

147:                                              ; preds = %140
  %148 = load i32, i32* @tok, align 4
  %149 = load i32, i32* @TOK_ERROR, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* @tok, align 4
  %153 = load i32, i32* @TOK_WARNING, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151, %147
  store i32 1, i32* %4, align 4
  br label %162

156:                                              ; preds = %151
  %157 = load i32, i32* @tok, align 4
  %158 = load i32, i32* @TOK_LINEFEED, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %9

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161, %155
  br label %163

163:                                              ; preds = %162, %144
  br label %164

164:                                              ; preds = %163, %137
  br label %165

165:                                              ; preds = %164, %97
  br label %170

166:                                              ; preds = %70, %58
  br label %167

167:                                              ; preds = %14, %166
  %168 = load i8**, i8*** %5, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i32 1
  store i8** %169, i8*** %5, align 8
  br label %170

170:                                              ; preds = %167, %165, %96, %66
  store i32 0, i32* %2, align 4
  br label %10

171:                                              ; preds = %10
  br label %172

172:                                              ; preds = %171, %124
  %173 = load i8**, i8*** %5, align 8
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store i8** %173, i8*** %175, align 8
  br label %176

176:                                              ; preds = %172, %65, %37
  ret void
}

declare dso_local i64 @tcc_nerr(...) #1

declare dso_local i32 @handle_eob(...) #1

declare dso_local i32 @expect(i8*) #1

declare dso_local i32 @handle_stray_noerror(...) #1

declare dso_local i8** @parse_pp_string(i8**, i32, i32*) #1

declare dso_local i32 @minp(...) #1

declare dso_local i8** @parse_comment(i8**) #1

declare dso_local i8** @parse_line_comment(i8**) #1

declare dso_local i32 @next_nomacro(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
