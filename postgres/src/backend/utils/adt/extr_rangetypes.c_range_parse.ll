; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_parse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RANGE_EMPTY_LITERAL = common dso_local global i32 0, align 4
@RANGE_EMPTY = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"malformed range literal: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Junk after \22empty\22 key word.\00", align 1
@RANGE_LB_INC = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Missing left parenthesis or bracket.\00", align 1
@RANGE_LB_INF = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Missing comma after lower bound.\00", align 1
@RANGE_UB_INF = common dso_local global i8 0, align 1
@RANGE_UB_INC = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Too many commas.\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Junk after right parenthesis or bracket.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**, i8**)* @range_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_parse(i8* %0, i8* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  store i8 0, i8* %12, align 1
  br label %13

13:                                               ; preds = %25, %4
  %14 = load i8*, i8** %9, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 zeroext %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %9, align 8
  br label %13

28:                                               ; preds = %23
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* @RANGE_EMPTY_LITERAL, align 4
  %31 = load i32, i32* @RANGE_EMPTY_LITERAL, align 4
  %32 = call i32 @strlen(i32 %31)
  %33 = call i64 @pg_strncasecmp(i8* %29, i32 %30, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %28
  %36 = load i8, i8* @RANGE_EMPTY, align 1
  %37 = load i8*, i8** %6, align 8
  store i8 %36, i8* %37, align 1
  %38 = load i8**, i8*** %7, align 8
  store i8* null, i8** %38, align 8
  %39 = load i8**, i8*** %8, align 8
  store i8* null, i8** %39, align 8
  %40 = load i32, i32* @RANGE_EMPTY_LITERAL, align 4
  %41 = call i32 @strlen(i32 %40)
  %42 = load i8*, i8** %9, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %57, %35
  %46 = load i8*, i8** %9, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %9, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @isspace(i8 zeroext %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ false, %45 ], [ %54, %50 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %9, align 8
  br label %45

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = call i32 @errdetail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 @ereport(i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %65, %60
  br label %213

74:                                               ; preds = %28
  %75 = load i8*, i8** %9, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 91
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load i8, i8* @RANGE_LB_INC, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = or i32 %84, %81
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %82, align 1
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %9, align 8
  br label %106

89:                                               ; preds = %74
  %90 = load i8*, i8** %9, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 40
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %9, align 8
  br label %105

97:                                               ; preds = %89
  %98 = load i32, i32* @ERROR, align 4
  %99 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %100 = call i32 @errcode(i32 %99)
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %101)
  %103 = call i32 @errdetail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %104 = call i32 @ereport(i32 %98, i32 %103)
  br label %105

105:                                              ; preds = %97, %94
  br label %106

106:                                              ; preds = %105, %79
  %107 = load i8*, i8** %5, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i8**, i8*** %7, align 8
  %110 = call i8* @range_parse_bound(i8* %107, i8* %108, i8** %109, i32* %10)
  store i8* %110, i8** %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load i8, i8* @RANGE_LB_INF, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8*, i8** %6, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = or i32 %118, %115
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %116, align 1
  br label %121

121:                                              ; preds = %113, %106
  %122 = load i8*, i8** %9, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 44
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i8*, i8** %9, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %9, align 8
  br label %137

129:                                              ; preds = %121
  %130 = load i32, i32* @ERROR, align 4
  %131 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %132 = call i32 @errcode(i32 %131)
  %133 = load i8*, i8** %5, align 8
  %134 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %133)
  %135 = call i32 @errdetail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %136 = call i32 @ereport(i32 %130, i32 %135)
  br label %137

137:                                              ; preds = %129, %126
  %138 = load i8*, i8** %5, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = load i8**, i8*** %8, align 8
  %141 = call i8* @range_parse_bound(i8* %138, i8* %139, i8** %140, i32* %10)
  store i8* %141, i8** %9, align 8
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load i8, i8* @RANGE_UB_INF, align 1
  %146 = sext i8 %145 to i32
  %147 = load i8*, i8** %6, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = or i32 %149, %146
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %147, align 1
  br label %152

152:                                              ; preds = %144, %137
  %153 = load i8*, i8** %9, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 93
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = load i8, i8* @RANGE_UB_INC, align 1
  %159 = sext i8 %158 to i32
  %160 = load i8*, i8** %6, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = or i32 %162, %159
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %160, align 1
  %165 = load i8*, i8** %9, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %9, align 8
  br label %184

167:                                              ; preds = %152
  %168 = load i8*, i8** %9, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 41
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i8*, i8** %9, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %9, align 8
  br label %183

175:                                              ; preds = %167
  %176 = load i32, i32* @ERROR, align 4
  %177 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %178 = call i32 @errcode(i32 %177)
  %179 = load i8*, i8** %5, align 8
  %180 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %179)
  %181 = call i32 @errdetail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %182 = call i32 @ereport(i32 %176, i32 %181)
  br label %183

183:                                              ; preds = %175, %172
  br label %184

184:                                              ; preds = %183, %157
  br label %185

185:                                              ; preds = %197, %184
  %186 = load i8*, i8** %9, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i8*, i8** %9, align 8
  %192 = load i8, i8* %191, align 1
  %193 = call i64 @isspace(i8 zeroext %192)
  %194 = icmp ne i64 %193, 0
  br label %195

195:                                              ; preds = %190, %185
  %196 = phi i1 [ false, %185 ], [ %194, %190 ]
  br i1 %196, label %197, label %200

197:                                              ; preds = %195
  %198 = load i8*, i8** %9, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %9, align 8
  br label %185

200:                                              ; preds = %195
  %201 = load i8*, i8** %9, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %200
  %206 = load i32, i32* @ERROR, align 4
  %207 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %208 = call i32 @errcode(i32 %207)
  %209 = load i8*, i8** %5, align 8
  %210 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %209)
  %211 = call i32 @errdetail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %212 = call i32 @ereport(i32 %206, i32 %211)
  br label %213

213:                                              ; preds = %73, %205, %200
  ret void
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @pg_strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i8* @range_parse_bound(i8*, i8*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
