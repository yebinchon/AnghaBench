; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_scanner.c_plpgsql_yylex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_scanner.c_plpgsql_yylex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_8__ }

@IDENT = common dso_local global i32 0, align 4
@PARAM = common dso_local global i32 0, align 4
@T_DATUM = common dso_local global i32 0, align 4
@T_CWORD = common dso_local global i32 0, align 4
@core_yy = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@UnreservedPLKeywords = common dso_local global i32 0, align 4
@UnreservedPLKeywordTokens = common dso_local global i32* null, align 8
@T_WORD = common dso_local global i32 0, align 4
@plpgsql_yytoken = common dso_local global i32 0, align 4
@COLON_EQUALS = common dso_local global i32 0, align 4
@plpgsql_yylval = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@plpgsql_yylloc = common dso_local global i64 0, align 8
@plpgsql_yyleng = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @plpgsql_yylex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = call i32 @internal_yylex(%struct.TYPE_7__* %2)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @IDENT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %0
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @PARAM, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %215

20:                                               ; preds = %16, %0
  %21 = call i32 @internal_yylex(%struct.TYPE_7__* %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %151

24:                                               ; preds = %20
  %25 = call i32 @internal_yylex(%struct.TYPE_7__* %7)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IDENT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %103

29:                                               ; preds = %24
  %30 = call i32 @internal_yylex(%struct.TYPE_7__* %9)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 46
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = call i32 @internal_yylex(%struct.TYPE_7__* %11)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @IDENT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  %52 = call i64 @plpgsql_parse_tripword(i32 %41, i32 %44, i32 %47, i32* %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = load i32, i32* @T_DATUM, align 4
  store i32 %55, i32* %1, align 4
  br label %58

56:                                               ; preds = %38
  %57 = load i32, i32* @T_CWORD, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %56, %54
  br label %81

59:                                               ; preds = %33
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @push_back_token(i32 %60, %struct.TYPE_7__* %11)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @push_back_token(i32 %62, %struct.TYPE_7__* %9)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = call i64 @plpgsql_parse_dblword(i32 %66, i32 %69, i32* %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %59
  %77 = load i32, i32* @T_DATUM, align 4
  store i32 %77, i32* %1, align 4
  br label %80

78:                                               ; preds = %59
  %79 = load i32, i32* @T_CWORD, align 4
  store i32 %79, i32* %1, align 4
  br label %80

80:                                               ; preds = %78, %76
  br label %81

81:                                               ; preds = %80, %58
  br label %102

82:                                               ; preds = %29
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @push_back_token(i32 %83, %struct.TYPE_7__* %9)
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = call i64 @plpgsql_parse_dblword(i32 %87, i32 %90, i32* %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = load i32, i32* @T_DATUM, align 4
  store i32 %98, i32* %1, align 4
  br label %101

99:                                               ; preds = %82
  %100 = load i32, i32* @T_CWORD, align 4
  store i32 %100, i32* %1, align 4
  br label %101

101:                                              ; preds = %99, %97
  br label %102

102:                                              ; preds = %101, %81
  br label %150

103:                                              ; preds = %24
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @push_back_token(i32 %104, %struct.TYPE_7__* %7)
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @push_back_token(i32 %106, %struct.TYPE_7__* %5)
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @core_yy, i32 0, i32 0), align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %111, %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = call i64 @plpgsql_parse_word(i32 %110, i64 %114, i32 1, i32* %116, %struct.TYPE_9__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %103
  %122 = load i32, i32* @T_DATUM, align 4
  store i32 %122, i32* %1, align 4
  br label %149

123:                                              ; preds = %103
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %146, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ScanKeywordLookup(i32 %133, i32* @UnreservedPLKeywords)
  store i32 %134, i32* %3, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %129
  %137 = load i32, i32* %3, align 4
  %138 = call i8* @GetScanKeyword(i32 %137, i32* @UnreservedPLKeywords)
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  %141 = load i32*, i32** @UnreservedPLKeywordTokens, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %1, align 4
  br label %148

146:                                              ; preds = %129, %123
  %147 = load i32, i32* @T_WORD, align 4
  store i32 %147, i32* %1, align 4
  br label %148

148:                                              ; preds = %146, %136
  br label %149

149:                                              ; preds = %148, %121
  br label %150

150:                                              ; preds = %149, %102
  br label %214

151:                                              ; preds = %20
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @push_back_token(i32 %152, %struct.TYPE_7__* %5)
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @core_yy, i32 0, i32 0), align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %157, %159
  %161 = load i32, i32* @plpgsql_yytoken, align 4
  %162 = call i32 @AT_STMT_START(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %151
  %165 = load i32, i32* %4, align 4
  %166 = icmp eq i32 %165, 61
  br i1 %166, label %174, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @COLON_EQUALS, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %4, align 4
  %173 = icmp eq i32 %172, 91
  br label %174

174:                                              ; preds = %171, %167, %164
  %175 = phi i1 [ true, %167 ], [ true, %164 ], [ %173, %171 ]
  br label %176

176:                                              ; preds = %174, %151
  %177 = phi i1 [ true, %151 ], [ %175, %174 ]
  %178 = zext i1 %177 to i32
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = call i64 @plpgsql_parse_word(i32 %156, i64 %160, i32 %178, i32* %180, %struct.TYPE_9__* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %176
  %186 = load i32, i32* @T_DATUM, align 4
  store i32 %186, i32* %1, align 4
  br label %213

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %210, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @ScanKeywordLookup(i32 %197, i32* @UnreservedPLKeywords)
  store i32 %198, i32* %3, align 4
  %199 = icmp sge i32 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %193
  %201 = load i32, i32* %3, align 4
  %202 = call i8* @GetScanKeyword(i32 %201, i32* @UnreservedPLKeywords)
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  %205 = load i32*, i32** @UnreservedPLKeywordTokens, align 8
  %206 = load i32, i32* %3, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %1, align 4
  br label %212

210:                                              ; preds = %193, %187
  %211 = load i32, i32* @T_WORD, align 4
  store i32 %211, i32* %1, align 4
  br label %212

212:                                              ; preds = %210, %200
  br label %213

213:                                              ; preds = %212, %185
  br label %214

214:                                              ; preds = %213, %150
  br label %216

215:                                              ; preds = %16
  br label %216

216:                                              ; preds = %215, %214
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %218 = bitcast %struct.TYPE_8__* %217 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_8__* @plpgsql_yylval to i8*), i8* align 8 %218, i64 32, i1 false)
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* @plpgsql_yylloc, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* @plpgsql_yyleng, align 4
  %223 = load i32, i32* %1, align 4
  store i32 %223, i32* @plpgsql_yytoken, align 4
  %224 = load i32, i32* %1, align 4
  ret i32 %224
}

declare dso_local i32 @internal_yylex(%struct.TYPE_7__*) #1

declare dso_local i64 @plpgsql_parse_tripword(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @push_back_token(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @plpgsql_parse_dblword(i32, i32, i32*, i32*) #1

declare dso_local i64 @plpgsql_parse_word(i32, i64, i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @ScanKeywordLookup(i32, i32*) #1

declare dso_local i8* @GetScanKeyword(i32, i32*) #1

declare dso_local i32 @AT_STMT_START(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
