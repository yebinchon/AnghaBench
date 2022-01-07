; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_parse_define.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_parse_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32 }

@tok = common dso_local global i8 0, align 1
@TOK_IDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid macro name '%s'\00", align 1
@tokc = common dso_local global i32 0, align 4
@MACRO_OBJ = common dso_local global i32 0, align 4
@TOK_DOTS = common dso_local global i32 0, align 4
@TOK___VA_ARGS__ = common dso_local global i32 0, align 4
@gnu_ext = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"badly punctuated parameter list\00", align 1
@define_stack = common dso_local global i32 0, align 4
@SYM_FIELD = common dso_local global i32 0, align 4
@MACRO_FUNC = common dso_local global i32 0, align 4
@TOK_LINEFEED = common dso_local global i8 0, align 1
@TOK_EOF = common dso_local global i8 0, align 1
@TOK_TWOSHARPS = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_define() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = load i8, i8* @tok, align 1
  %11 = sext i8 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @TOK_IDENT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %0
  %16 = load i8, i8* @tok, align 1
  %17 = sext i8 %16 to i32
  %18 = call i8* @get_tok_str(i32 %17, i32* @tokc)
  %19 = call i32 (i8*, ...) @tcc_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %15, %0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  %21 = load i32, i32* @MACRO_OBJ, align 4
  store i32 %21, i32* %5, align 4
  %22 = call i32 (...) @next_nomacro_spc()
  %23 = load i8, i8* @tok, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 40
  br i1 %25, label %26, label %86

26:                                               ; preds = %20
  %27 = call i32 (...) @next_nomacro()
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %3, align 8
  br label %28

28:                                               ; preds = %76, %26
  %29 = load i8, i8* @tok, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 41
  br i1 %31, label %32, label %78

32:                                               ; preds = %28
  %33 = load i8, i8* @tok, align 1
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = call i32 (...) @next_nomacro()
  store i32 0, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @TOK_DOTS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @TOK___VA_ARGS__, align 4
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %52

41:                                               ; preds = %32
  %42 = load i8, i8* @tok, align 1
  %43 = sext i8 %42 to i32
  %44 = load i32, i32* @TOK_DOTS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i64, i64* @gnu_ext, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  store i32 1, i32* %7, align 4
  %50 = call i32 (...) @next_nomacro()
  br label %51

51:                                               ; preds = %49, %46, %41
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @TOK_IDENT, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 (i8*, ...) @tcc_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SYM_FIELD, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = call %struct.TYPE_9__* @sym_push2(i32* @define_stack, i32 %61, i32 %62, i32 0)
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %1, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %65 = icmp ne %struct.TYPE_9__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %148

67:                                               ; preds = %58
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store %struct.TYPE_9__** %71, %struct.TYPE_9__*** %3, align 8
  %72 = load i8, i8* @tok, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 44
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %78

76:                                               ; preds = %67
  %77 = call i32 (...) @next_nomacro()
  br label %28

78:                                               ; preds = %75, %28
  %79 = load i8, i8* @tok, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 41
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 (...) @next_nomacro_spc()
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i32, i32* @MACRO_FUNC, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %20
  %87 = call i32 @tok_str_new(%struct.TYPE_8__* %9)
  store i32 2, i32* %8, align 4
  br label %88

88:                                               ; preds = %131, %86
  %89 = load i8, i8* @tok, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, i8* @TOK_LINEFEED, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i8, i8* @tok, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* @TOK_EOF, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %96, %98
  br label %100

100:                                              ; preds = %94, %88
  %101 = phi i1 [ false, %88 ], [ %99, %94 ]
  br i1 %101, label %102, label %133

102:                                              ; preds = %100
  %103 = load i8, i8* @TOK_TWOSHARPS, align 1
  %104 = sext i8 %103 to i32
  %105 = load i8, i8* @tok, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 1, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %111, %108
  store i32 2, i32* %8, align 4
  br label %128

116:                                              ; preds = %102
  %117 = load i8, i8* @tok, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 35, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 2, i32* %8, align 4
  br label %127

121:                                              ; preds = %116
  %122 = load i8, i8* @tok, align 1
  %123 = call i64 @check_space(i8 signext %122, i32* %8)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %131

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %120
  br label %128

128:                                              ; preds = %127, %115
  %129 = load i8, i8* @tok, align 1
  %130 = call i32 @tok_str_add2(%struct.TYPE_8__* %9, i8 signext %129, i32* @tokc)
  br label %131

131:                                              ; preds = %128, %125
  %132 = call i32 (...) @next_nomacro_spc()
  br label %88

133:                                              ; preds = %100
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %136, %133
  %141 = call i32 @tok_str_add(%struct.TYPE_8__* %9, i32 0)
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %5, align 4
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %147 = call i32 @define_push(i32 %142, i32 %143, i32 %145, %struct.TYPE_9__* %146)
  br label %148

148:                                              ; preds = %140, %66
  ret void
}

declare dso_local i32 @tcc_error(i8*, ...) #1

declare dso_local i8* @get_tok_str(i32, i32*) #1

declare dso_local i32 @next_nomacro_spc(...) #1

declare dso_local i32 @next_nomacro(...) #1

declare dso_local %struct.TYPE_9__* @sym_push2(i32*, i32, i32, i32) #1

declare dso_local i32 @tok_str_new(%struct.TYPE_8__*) #1

declare dso_local i64 @check_space(i8 signext, i32*) #1

declare dso_local i32 @tok_str_add2(%struct.TYPE_8__*, i8 signext, i32*) #1

declare dso_local i32 @tok_str_add(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @define_push(i32, i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
