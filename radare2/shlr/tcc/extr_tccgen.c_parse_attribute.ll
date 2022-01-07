; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_parse_attribute.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_parse_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@tok = common dso_local global i8 0, align 1
@TOK_ATTRIBUTE1 = common dso_local global i8 0, align 1
@TOK_ATTRIBUTE2 = common dso_local global i8 0, align 1
@TOK_IDENT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [15 x i8] c"attribute name\00", align 1
@TOK_STR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"alias(\22target\22)\00", align 1
@tokc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"alignment must be a positive power of two\00", align 1
@MAX_ALIGN = common dso_local global i64 0, align 8
@FUNC_CDECL = common dso_local global i32 0, align 4
@FUNC_STDCALL = common dso_local global i32 0, align 4
@VT_INT64 = common dso_local global i32 0, align 4
@VT_INT16 = common dso_local global i32 0, align 4
@VT_INT32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"__mode__(%s) not supported\0A\00", align 1
@tcc_state = common dso_local global %struct.TYPE_11__* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"'%s' attribute ignored\00", align 1
@FUNC_FASTCALL1 = common dso_local global i32 0, align 4
@FUNC_FASTCALLW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @parse_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_attribute(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  br label %6

6:                                                ; preds = %189, %1
  %7 = load i8, i8* @tok, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @TOK_ATTRIBUTE1, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load i8, i8* @tok, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @TOK_ATTRIBUTE2, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi i1 [ true, %6 ], [ %17, %12 ]
  br i1 %19, label %20, label %192

20:                                               ; preds = %18
  %21 = call i32 (...) @next()
  %22 = call i32 @skip(i8 signext 40)
  %23 = call i32 @skip(i8 signext 40)
  br label %24

24:                                               ; preds = %187, %20
  %25 = load i8, i8* @tok, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 41
  br i1 %27, label %28, label %189

28:                                               ; preds = %24
  %29 = load i8, i8* @tok, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @TOK_IDENT, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @expect(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i8, i8* @tok, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %3, align 4
  %39 = call i32 (...) @next()
  %40 = load i32, i32* %3, align 4
  switch i32 %40, label %140 [
    i32 156, label %41
    i32 155, label %41
    i32 154, label %66
    i32 153, label %66
    i32 138, label %91
    i32 137, label %91
    i32 129, label %94
    i32 128, label %94
    i32 131, label %97
    i32 130, label %97
    i32 140, label %98
    i32 139, label %98
    i32 152, label %99
    i32 151, label %99
    i32 150, label %99
    i32 134, label %103
    i32 133, label %103
    i32 132, label %103
    i32 144, label %107
    i32 149, label %134
    i32 148, label %137
  ]

41:                                               ; preds = %36, %36
  %42 = call i32 @skip(i8 signext 40)
  %43 = load i8, i8* @tok, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* @TOK_STR, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 @expect(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %41
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tokc, i32 0, i32 0), align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tokc, i32 0, i32 0), align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = call %struct.TYPE_10__* @tok_alloc(i8* %54, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = call i32 (...) @next()
  %65 = call i32 @skip(i8 signext 41)
  br label %182

66:                                               ; preds = %36, %36
  %67 = load i8, i8* @tok, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 40
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = call i32 (...) @next()
  %72 = call i64 (...) @expr_const()
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* %4, align 8
  %74 = icmp sle i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = sub nsw i64 %77, 1
  %79 = and i64 %76, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75, %70
  %82 = call i32 @TCC_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %75
  %84 = call i32 @skip(i8 signext 41)
  br label %87

85:                                               ; preds = %66
  %86 = load i64, i64* @MAX_ALIGN, align 8
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i64, i64* %4, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %182

91:                                               ; preds = %36, %36
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 8
  br label %182

94:                                               ; preds = %36, %36
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  store i32 1, i32* %96, align 4
  br label %182

97:                                               ; preds = %36, %36
  br label %182

98:                                               ; preds = %36, %36
  br label %182

99:                                               ; preds = %36, %36, %36
  %100 = load i32, i32* @FUNC_CDECL, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 4
  br label %182

103:                                              ; preds = %36, %36, %36
  %104 = load i32, i32* @FUNC_STDCALL, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 4
  br label %182

107:                                              ; preds = %36
  %108 = call i32 @skip(i8 signext 40)
  %109 = load i8, i8* @tok, align 1
  %110 = sext i8 %109 to i32
  switch i32 %110, label %126 [
    i32 143, label %111
    i32 142, label %116
    i32 141, label %121
  ]

111:                                              ; preds = %107
  %112 = load i32, i32* @VT_INT64, align 4
  %113 = add nsw i32 %112, 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 8
  br label %131

116:                                              ; preds = %107
  %117 = load i32, i32* @VT_INT16, align 4
  %118 = add nsw i32 %117, 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  br label %131

121:                                              ; preds = %107
  %122 = load i32, i32* @VT_INT32, align 4
  %123 = add nsw i32 %122, 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  br label %131

126:                                              ; preds = %107
  %127 = load i8, i8* @tok, align 1
  %128 = sext i8 %127 to i32
  %129 = call i32 @get_tok_str(i32 %128, i32* null)
  %130 = call i32 @tcc_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %126, %121, %116, %111
  %132 = call i32 (...) @next()
  %133 = call i32 @skip(i8 signext 41)
  br label %182

134:                                              ; preds = %36
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  store i32 1, i32* %136, align 8
  br label %182

137:                                              ; preds = %36
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  store i32 1, i32* %139, align 4
  br label %182

140:                                              ; preds = %36
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcc_state, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @get_tok_str(i32 %146, i32* null)
  %148 = call i32 @tcc_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %145, %140
  %150 = load i8, i8* @tok, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 40
  br i1 %152, label %153, label %181

153:                                              ; preds = %149
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %178, %153
  %155 = load i8, i8* @tok, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 40
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %5, align 4
  br label %169

161:                                              ; preds = %154
  %162 = load i8, i8* @tok, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 41
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %165, %161
  br label %169

169:                                              ; preds = %168, %158
  %170 = call i32 (...) @next()
  br label %171

171:                                              ; preds = %169
  %172 = load i32, i32* %5, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i8, i8* @tok, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, -1
  br label %178

178:                                              ; preds = %174, %171
  %179 = phi i1 [ false, %171 ], [ %177, %174 ]
  br i1 %179, label %154, label %180

180:                                              ; preds = %178
  br label %181

181:                                              ; preds = %180, %149
  br label %182

182:                                              ; preds = %181, %137, %134, %131, %103, %99, %98, %97, %94, %91, %87, %50
  %183 = load i8, i8* @tok, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp ne i32 %184, 44
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %189

187:                                              ; preds = %182
  %188 = call i32 (...) @next()
  br label %24

189:                                              ; preds = %186, %24
  %190 = call i32 @skip(i8 signext 41)
  %191 = call i32 @skip(i8 signext 41)
  br label %6

192:                                              ; preds = %18
  ret void
}

declare dso_local i32 @next(...) #1

declare dso_local i32 @skip(i8 signext) #1

declare dso_local i32 @expect(i8*) #1

declare dso_local %struct.TYPE_10__* @tok_alloc(i8*, i32) #1

declare dso_local i64 @expr_const(...) #1

declare dso_local i32 @TCC_ERR(i8*) #1

declare dso_local i32 @tcc_warning(i8*, i32) #1

declare dso_local i32 @get_tok_str(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
