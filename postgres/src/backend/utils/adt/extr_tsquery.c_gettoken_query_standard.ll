; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_gettoken_query_standard.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_gettoken_query_standard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i32, i32 }

@OP_NOT = common dso_local global i32 0, align 4
@PT_OPR = common dso_local global i32 0, align 4
@PT_OPEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"syntax error in tsquery: \22%s\22\00", align 1
@PT_VAL = common dso_local global i32 0, align 4
@PT_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no operand in tsquery: \22%s\22\00", align 1
@OP_AND = common dso_local global i32 0, align 4
@OP_OR = common dso_local global i32 0, align 4
@OP_PHRASE = common dso_local global i32 0, align 4
@PT_ERR = common dso_local global i32 0, align 4
@PT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i8**, i64*, i32*)* @gettoken_query_standard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gettoken_query_standard(%struct.TYPE_4__* %0, i32* %1, i32* %2, i8** %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i64*, i64** %12, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %13, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %6, %226
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %226 [
    i32 130, label %20
    i32 129, label %20
    i32 128, label %126
  ]

20:                                               ; preds = %16, %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @t_iseq(i8* %23, i8 signext 33)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 129, i32* %32, align 8
  %33 = load i32, i32* @OP_NOT, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @PT_OPR, align 4
  store i32 %35, i32* %7, align 4
  br label %235

36:                                               ; preds = %20
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @t_iseq(i8* %39, i8 signext 40)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 129, i32* %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @PT_OPEN, align 4
  store i32 %53, i32* %7, align 4
  br label %235

54:                                               ; preds = %36
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @t_iseq(i8* %57, i8 signext 58)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = call i32 @ereport(i32 %61, i32 %67)
  br label %123

69:                                               ; preds = %54
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @t_isspace(i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %122, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @reset_tsvector_parser(i32 %78, i8* %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i8**, i8*** %11, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = call i32 @gettoken_tsvector(i32 %85, i8** %86, i32* %87, i32* null, i32* null, i8** %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %75
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i64*, i64** %12, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = call i8* @get_modifiers(i8* %95, i64* %96, i32* %97)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 128, i32* %102, align 8
  %103 = load i32, i32* @PT_VAL, align 4
  store i32 %103, i32* %7, align 4
  br label %235

104:                                              ; preds = %75
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 130
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @PT_END, align 4
  store i32 %110, i32* %7, align 4
  br label %235

111:                                              ; preds = %104
  %112 = load i32, i32* @ERROR, align 4
  %113 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %114 = call i32 @errcode(i32 %113)
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = call i32 @ereport(i32 %112, i32 %118)
  br label %120

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %69
  br label %123

123:                                              ; preds = %122, %60
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  br label %226

126:                                              ; preds = %16
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @t_iseq(i8* %129, i8 signext 38)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %126
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %134, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 129, i32* %138, align 8
  %139 = load i32, i32* @OP_AND, align 4
  %140 = load i32*, i32** %9, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* @PT_OPR, align 4
  store i32 %141, i32* %7, align 4
  br label %235

142:                                              ; preds = %126
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @t_iseq(i8* %145, i8 signext 124)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %142
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %150, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i32 129, i32* %154, align 8
  %155 = load i32, i32* @OP_OR, align 4
  %156 = load i32*, i32** %9, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* @PT_OPR, align 4
  store i32 %157, i32* %7, align 4
  br label %235

158:                                              ; preds = %142
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %160 = load i64*, i64** %12, align 8
  %161 = call i32 @parse_phrase_operator(%struct.TYPE_4__* %159, i64* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i32 129, i32* %165, align 8
  %166 = load i32, i32* @OP_PHRASE, align 4
  %167 = load i32*, i32** %9, align 8
  store i32 %166, i32* %167, align 4
  %168 = load i32, i32* @PT_OPR, align 4
  store i32 %168, i32* %7, align 4
  br label %235

169:                                              ; preds = %158
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @t_iseq(i8* %172, i8 signext 41)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %169
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %177, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %181, align 8
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %175
  %189 = load i32, i32* @PT_ERR, align 4
  br label %192

190:                                              ; preds = %175
  %191 = load i32, i32* @PT_CLOSE, align 4
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i32 [ %189, %188 ], [ %191, %190 ]
  store i32 %193, i32* %7, align 4
  br label %235

194:                                              ; preds = %169
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %194
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i32, i32* @PT_ERR, align 4
  br label %210

208:                                              ; preds = %201
  %209 = load i32, i32* @PT_END, align 4
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi i32 [ %207, %206 ], [ %209, %208 ]
  store i32 %211, i32* %7, align 4
  br label %235

212:                                              ; preds = %194
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @t_isspace(i8* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %212
  %219 = load i32, i32* @PT_ERR, align 4
  store i32 %219, i32* %7, align 4
  br label %235

220:                                              ; preds = %212
  br label %221

221:                                              ; preds = %220
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %16, %225, %125
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = call i64 @pg_mblen(i8* %229)
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 %230
  store i8* %234, i8** %232, align 8
  br label %16

235:                                              ; preds = %218, %210, %192, %163, %148, %132, %109, %92, %42, %26
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

declare dso_local i32 @t_iseq(i8*, i8 signext) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @t_isspace(i8*) #1

declare dso_local i32 @reset_tsvector_parser(i32, i8*) #1

declare dso_local i32 @gettoken_tsvector(i32, i8**, i32*, i32*, i32*, i8**) #1

declare dso_local i8* @get_modifiers(i8*, i64*, i32*) #1

declare dso_local i32 @parse_phrase_operator(%struct.TYPE_4__*, i64*) #1

declare dso_local i64 @pg_mblen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
