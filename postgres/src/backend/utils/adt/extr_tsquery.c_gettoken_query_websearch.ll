; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_gettoken_query_websearch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_gettoken_query_websearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, i32 }

@OP_NOT = common dso_local global i32 0, align 4
@PT_OPR = common dso_local global i32 0, align 4
@PT_OPEN = common dso_local global i32 0, align 4
@PT_CLOSE = common dso_local global i32 0, align 4
@PT_VAL = common dso_local global i32 0, align 4
@PT_END = common dso_local global i32 0, align 4
@OP_AND = common dso_local global i32 0, align 4
@OP_OR = common dso_local global i32 0, align 4
@OP_PHRASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i8**, i32*, i32*)* @gettoken_query_websearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gettoken_query_websearch(%struct.TYPE_5__* %0, i32* %1, i32* %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i32*, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %13, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %6, %37, %69, %84, %203
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %203 [
    i32 130, label %20
    i32 129, label %20
    i32 128, label %133
  ]

20:                                               ; preds = %16, %16
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @t_iseq(i8* %23, i8 signext 45)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 129, i32* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %16

38:                                               ; preds = %26
  %39 = load i32, i32* @OP_NOT, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @PT_OPR, align 4
  store i32 %41, i32* %7, align 4
  br label %212

42:                                               ; preds = %20
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @t_iseq(i8* %45, i8 signext 34)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %50, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %48
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 129, i32* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strchr(i8* %62, i8 signext 34)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* @PT_OPEN, align 4
  store i32 %68, i32* %7, align 4
  br label %212

69:                                               ; preds = %57
  br label %16

70:                                               ; preds = %48
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store i32 0, i32* %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 128, i32* %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = call i32 @pushStop(%struct.TYPE_5__* %75)
  %77 = load i32, i32* @PT_CLOSE, align 4
  store i32 %77, i32* %7, align 4
  br label %212

78:                                               ; preds = %42
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @ISOPERATOR(i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %86, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 129, i32* %90, align 8
  br label %16

91:                                               ; preds = %78
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @t_isspace(i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %129, label %97

97:                                               ; preds = %91
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @reset_tsvector_parser(i32 %100, i8* %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i8**, i8*** %11, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = call i32 @gettoken_tsvector(i32 %107, i8** %108, i32* %109, i32* null, i32* null, i8** %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %97
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 128, i32* %116, align 8
  %117 = load i32, i32* @PT_VAL, align 4
  store i32 %117, i32* %7, align 4
  br label %212

118:                                              ; preds = %97
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 130
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @PT_END, align 4
  store i32 %124, i32* %7, align 4
  br label %212

125:                                              ; preds = %118
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %127 = call i32 @pushStop(%struct.TYPE_5__* %126)
  %128 = load i32, i32* @PT_END, align 4
  store i32 %128, i32* %7, align 4
  br label %212

129:                                              ; preds = %91
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  br label %203

133:                                              ; preds = %16
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @t_iseq(i8* %136, i8 signext 34)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %133
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 129, i32* %146, align 8
  %147 = load i32, i32* @OP_AND, align 4
  %148 = load i32*, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* @PT_OPR, align 4
  store i32 %149, i32* %7, align 4
  br label %212

150:                                              ; preds = %139
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %152, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  store i32 0, i32* %156, align 8
  %157 = load i32, i32* @PT_CLOSE, align 4
  store i32 %157, i32* %7, align 4
  br label %212

158:                                              ; preds = %133
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %160 = call i32 @parse_or_operator(%struct.TYPE_5__* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i32 129, i32* %164, align 8
  %165 = load i32, i32* @OP_OR, align 4
  %166 = load i32*, i32** %9, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* @PT_OPR, align 4
  store i32 %167, i32* %7, align 4
  br label %212

168:                                              ; preds = %158
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = load i32, i32* @PT_END, align 4
  store i32 %176, i32* %7, align 4
  br label %212

177:                                              ; preds = %168
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @t_isspace(i8* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %199, label %183

183:                                              ; preds = %177
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i32, i32* @OP_PHRASE, align 4
  %190 = load i32*, i32** %9, align 8
  store i32 %189, i32* %190, align 4
  %191 = load i32*, i32** %12, align 8
  store i32 1, i32* %191, align 4
  br label %195

192:                                              ; preds = %183
  %193 = load i32, i32* @OP_AND, align 4
  %194 = load i32*, i32** %9, align 8
  store i32 %193, i32* %194, align 4
  br label %195

195:                                              ; preds = %192, %188
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  store i32 129, i32* %197, align 8
  %198 = load i32, i32* @PT_OPR, align 4
  store i32 %198, i32* %7, align 4
  br label %212

199:                                              ; preds = %177
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %16, %202, %132
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = call i64 @pg_mblen(i8* %206)
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 %207
  store i8* %211, i8** %209, align 8
  br label %16

212:                                              ; preds = %195, %175, %162, %150, %144, %125, %123, %114, %70, %65, %38
  %213 = load i32, i32* %7, align 4
  ret i32 %213
}

declare dso_local i32 @t_iseq(i8*, i8 signext) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @pushStop(%struct.TYPE_5__*) #1

declare dso_local i32 @ISOPERATOR(i8*) #1

declare dso_local i32 @t_isspace(i8*) #1

declare dso_local i32 @reset_tsvector_parser(i32, i8*) #1

declare dso_local i32 @gettoken_tsvector(i32, i8**, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @parse_or_operator(%struct.TYPE_5__*) #1

declare dso_local i64 @pg_mblen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
