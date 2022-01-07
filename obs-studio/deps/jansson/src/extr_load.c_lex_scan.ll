; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_lex_scan.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_lex_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }

@TOKEN_STRING = common dso_local global i64 0, align 8
@STREAM_STATE_EOF = common dso_local global i32 0, align 4
@TOKEN_EOF = common dso_local global i64 0, align 8
@STREAM_STATE_ERROR = common dso_local global i32 0, align 4
@TOKEN_INVALID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@TOKEN_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@TOKEN_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@TOKEN_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @lex_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_scan(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = call i32 @strbuffer_clear(i32* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TOKEN_STRING, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = call i32 @lex_free_string(%struct.TYPE_11__* %16)
  br label %18

18:                                               ; preds = %15, %2
  br label %19

19:                                               ; preds = %35, %18
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @lex_get(%struct.TYPE_11__* %20, i32* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 13
  br label %35

35:                                               ; preds = %32, %29, %26, %23
  %36 = phi i1 [ true, %29 ], [ true, %26 ], [ true, %23 ], [ %34, %32 ]
  br i1 %36, label %19, label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @STREAM_STATE_EOF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* @TOKEN_EOF, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %167

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @STREAM_STATE_ERROR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8*, i8** @TOKEN_INVALID, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %167

54:                                               ; preds = %45
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @lex_save(%struct.TYPE_11__* %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 123
  br i1 %59, label %75, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 125
  br i1 %62, label %75, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 91
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 93
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 58
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, 44
  br i1 %74, label %75, label %80

75:                                               ; preds = %72, %69, %66, %63, %60, %54
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %166

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 34
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @lex_scan_string(%struct.TYPE_11__* %84, i32* %85)
  br label %165

87:                                               ; preds = %80
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @l_isdigit(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = icmp eq i32 %92, 45
  br i1 %93, label %94, label %102

94:                                               ; preds = %91, %87
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32*, i32** %4, align 8
  %98 = call i64 @lex_scan_number(%struct.TYPE_11__* %95, i32 %96, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %167

101:                                              ; preds = %94
  br label %164

102:                                              ; preds = %91
  %103 = load i32, i32* %5, align 4
  %104 = call i64 @l_isalpha(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %156

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %111, %106
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @lex_get_save(%struct.TYPE_11__* %108, i32* %109)
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %5, align 4
  %113 = call i64 @l_isalpha(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %107, label %115

115:                                              ; preds = %111
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @lex_unget_unsave(%struct.TYPE_11__* %116, i32 %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = call i8* @strbuffer_value(i32* %120)
  store i8* %121, i8** %6, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %115
  %126 = load i32, i32* @TOKEN_TRUE, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %155

130:                                              ; preds = %115
  %131 = load i8*, i8** %6, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i32, i32* @TOKEN_FALSE, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %154

139:                                              ; preds = %130
  %140 = load i8*, i8** %6, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i32, i32* @TOKEN_NULL, align 4
  %145 = sext i32 %144 to i64
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %153

148:                                              ; preds = %139
  %149 = load i8*, i8** @TOKEN_INVALID, align 8
  %150 = ptrtoint i8* %149 to i64
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %148, %143
  br label %154

154:                                              ; preds = %153, %134
  br label %155

155:                                              ; preds = %154, %125
  br label %163

156:                                              ; preds = %102
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %158 = call i32 @lex_save_cached(%struct.TYPE_11__* %157)
  %159 = load i8*, i8** @TOKEN_INVALID, align 8
  %160 = ptrtoint i8* %159 to i64
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %156, %155
  br label %164

164:                                              ; preds = %163, %101
  br label %165

165:                                              ; preds = %164, %83
  br label %166

166:                                              ; preds = %165, %75
  br label %167

167:                                              ; preds = %166, %100, %49, %41
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  ret i32 %171
}

declare dso_local i32 @strbuffer_clear(i32*) #1

declare dso_local i32 @lex_free_string(%struct.TYPE_11__*) #1

declare dso_local i32 @lex_get(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @lex_save(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @lex_scan_string(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @l_isdigit(i32) #1

declare dso_local i64 @lex_scan_number(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i64 @l_isalpha(i32) #1

declare dso_local i32 @lex_get_save(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @lex_unget_unsave(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @strbuffer_value(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @lex_save_cached(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
