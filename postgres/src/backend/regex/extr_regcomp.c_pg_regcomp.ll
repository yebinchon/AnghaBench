; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_pg_regcomp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_pg_regcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i32, i32*, i8*, i32, i32 }
%struct.vars = type { i64, i32, i32, i32, %struct.subre*, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i64, %struct.TYPE_18__*, i32*, i32, i32*, i64, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32, i32*, i32* }
%struct.subre = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.guts = type { i32, i32, %struct.subre*, i32, i32, %struct.TYPE_19__*, i64, i32, i32, i32, i32 }
%struct.nfa = type { i32 }

@REG_INVARG = common dso_local global i32 0, align 4
@REG_QUOTE = common dso_local global i32 0, align 4
@REG_ADVANCED = common dso_local global i32 0, align 4
@REG_EXPANDED = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_ADVF = common dso_local global i32 0, align 4
@COLORLESS = common dso_local global i32 0, align 4
@REMAGIC = common dso_local global i32 0, align 4
@functions = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@REG_NLSTOP = common dso_local global i32 0, align 4
@REG_NLANCH = common dso_local global i32 0, align 4
@EOS = common dso_local global i32 0, align 4
@PLAIN = common dso_local global i32 0, align 4
@SHORTER = common dso_local global i32 0, align 4
@REG_USHORTEST = common dso_local global i32 0, align 4
@GUTSMAGIC = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@casecmp = common dso_local global i32 0, align 4
@cmp = common dso_local global i32 0, align 4
@REG_DUMP = common dso_local global i32 0, align 4
@REG_PROGRESS = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_regcomp(%struct.TYPE_17__* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vars, align 8
  %13 = alloca %struct.vars*, align 8
  %14 = alloca %struct.guts*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.subre*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.vars* %12, %struct.vars** %13, align 8
  store i32* null, i32** %17, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %20 = icmp eq %struct.TYPE_17__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %5
  %25 = load i32, i32* @REG_INVARG, align 4
  store i32 %25, i32* %6, align 4
  br label %517

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @REG_QUOTE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @REG_ADVANCED, align 4
  %34 = load i32, i32* @REG_EXPANDED, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @REG_NEWLINE, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %32, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @REG_INVARG, align 4
  store i32 %41, i32* %6, align 4
  br label %517

42:                                               ; preds = %31, %26
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @REG_EXTENDED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @REG_ADVF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @REG_INVARG, align 4
  store i32 %53, i32* %6, align 4
  br label %517

54:                                               ; preds = %47, %42
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @pg_set_regex_collation(i32 %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = load %struct.vars*, %struct.vars** %13, align 8
  %59 = getelementptr inbounds %struct.vars, %struct.vars* %58, i32 0, i32 7
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %59, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.vars*, %struct.vars** %13, align 8
  %62 = getelementptr inbounds %struct.vars, %struct.vars* %61, i32 0, i32 22
  store i32* %60, i32** %62, align 8
  %63 = load %struct.vars*, %struct.vars** %13, align 8
  %64 = getelementptr inbounds %struct.vars, %struct.vars* %63, i32 0, i32 22
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load %struct.vars*, %struct.vars** %13, align 8
  %69 = getelementptr inbounds %struct.vars, %struct.vars* %68, i32 0, i32 23
  store i32* %67, i32** %69, align 8
  %70 = load %struct.vars*, %struct.vars** %13, align 8
  %71 = getelementptr inbounds %struct.vars, %struct.vars* %70, i32 0, i32 20
  store i32* null, i32** %71, align 8
  %72 = load %struct.vars*, %struct.vars** %13, align 8
  %73 = getelementptr inbounds %struct.vars, %struct.vars* %72, i32 0, i32 21
  store i32 0, i32* %73, align 8
  %74 = load %struct.vars*, %struct.vars** %13, align 8
  %75 = getelementptr inbounds %struct.vars, %struct.vars* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.vars*, %struct.vars** %13, align 8
  %78 = getelementptr inbounds %struct.vars, %struct.vars* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.vars*, %struct.vars** %13, align 8
  %80 = getelementptr inbounds %struct.vars, %struct.vars* %79, i32 0, i32 8
  store i64 0, i64* %80, align 8
  %81 = load %struct.vars*, %struct.vars** %13, align 8
  %82 = getelementptr inbounds %struct.vars, %struct.vars* %81, i32 0, i32 19
  %83 = load i32**, i32*** %82, align 8
  %84 = load %struct.vars*, %struct.vars** %13, align 8
  %85 = getelementptr inbounds %struct.vars, %struct.vars* %84, i32 0, i32 18
  store i32** %83, i32*** %85, align 8
  %86 = load %struct.vars*, %struct.vars** %13, align 8
  %87 = getelementptr inbounds %struct.vars, %struct.vars* %86, i32 0, i32 2
  store i32 10, i32* %87, align 4
  store i64 0, i64* %16, align 8
  br label %88

88:                                               ; preds = %101, %54
  %89 = load i64, i64* %16, align 8
  %90 = load %struct.vars*, %struct.vars** %13, align 8
  %91 = getelementptr inbounds %struct.vars, %struct.vars* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ult i64 %89, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %88
  %96 = load %struct.vars*, %struct.vars** %13, align 8
  %97 = getelementptr inbounds %struct.vars, %struct.vars* %96, i32 0, i32 18
  %98 = load i32**, i32*** %97, align 8
  %99 = load i64, i64* %16, align 8
  %100 = getelementptr inbounds i32*, i32** %98, i64 %99
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %95
  %102 = load i64, i64* %16, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %16, align 8
  br label %88

104:                                              ; preds = %88
  %105 = load %struct.vars*, %struct.vars** %13, align 8
  %106 = getelementptr inbounds %struct.vars, %struct.vars* %105, i32 0, i32 9
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %106, align 8
  %107 = load %struct.vars*, %struct.vars** %13, align 8
  %108 = getelementptr inbounds %struct.vars, %struct.vars* %107, i32 0, i32 10
  store i32* null, i32** %108, align 8
  %109 = load i32, i32* @COLORLESS, align 4
  %110 = load %struct.vars*, %struct.vars** %13, align 8
  %111 = getelementptr inbounds %struct.vars, %struct.vars* %110, i32 0, i32 11
  store i32 %109, i32* %111, align 8
  %112 = load %struct.vars*, %struct.vars** %13, align 8
  %113 = getelementptr inbounds %struct.vars, %struct.vars* %112, i32 0, i32 17
  store i32* null, i32** %113, align 8
  %114 = load %struct.vars*, %struct.vars** %13, align 8
  %115 = getelementptr inbounds %struct.vars, %struct.vars* %114, i32 0, i32 6
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %115, align 8
  %116 = load %struct.vars*, %struct.vars** %13, align 8
  %117 = getelementptr inbounds %struct.vars, %struct.vars* %116, i32 0, i32 16
  store i32* null, i32** %117, align 8
  %118 = load %struct.vars*, %struct.vars** %13, align 8
  %119 = getelementptr inbounds %struct.vars, %struct.vars* %118, i32 0, i32 15
  store i32* null, i32** %119, align 8
  %120 = load %struct.vars*, %struct.vars** %13, align 8
  %121 = getelementptr inbounds %struct.vars, %struct.vars* %120, i32 0, i32 12
  store i32* null, i32** %121, align 8
  %122 = load %struct.vars*, %struct.vars** %13, align 8
  %123 = getelementptr inbounds %struct.vars, %struct.vars* %122, i32 0, i32 14
  store i32* null, i32** %123, align 8
  %124 = load %struct.vars*, %struct.vars** %13, align 8
  %125 = getelementptr inbounds %struct.vars, %struct.vars* %124, i32 0, i32 4
  store %struct.subre* null, %struct.subre** %125, align 8
  %126 = load %struct.vars*, %struct.vars** %13, align 8
  %127 = getelementptr inbounds %struct.vars, %struct.vars* %126, i32 0, i32 3
  store i32 0, i32* %127, align 8
  %128 = load %struct.vars*, %struct.vars** %13, align 8
  %129 = getelementptr inbounds %struct.vars, %struct.vars* %128, i32 0, i32 13
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* @REMAGIC, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 2
  store i32 0, i32* %134, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  store i32 4, i32* %136, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 3
  store i32* null, i32** %141, align 8
  %142 = call i8* @VS(i32* @functions)
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  %145 = call i32* @MALLOC(i32 56)
  %146 = call i8* @VS(i32* %145)
  %147 = bitcast i8* %146 to i32*
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 3
  store i32* %147, i32** %149, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %104
  %155 = load %struct.vars*, %struct.vars** %13, align 8
  %156 = load i32, i32* @REG_ESPACE, align 4
  %157 = call i32 @freev(%struct.vars* %155, i32 %156)
  store i32 %157, i32* %6, align 4
  br label %517

158:                                              ; preds = %104
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = bitcast i32* %161 to %struct.guts*
  store %struct.guts* %162, %struct.guts** %14, align 8
  %163 = load %struct.guts*, %struct.guts** %14, align 8
  %164 = getelementptr inbounds %struct.guts, %struct.guts* %163, i32 0, i32 5
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %164, align 8
  %165 = load %struct.vars*, %struct.vars** %13, align 8
  %166 = load %struct.guts*, %struct.guts** %14, align 8
  %167 = getelementptr inbounds %struct.guts, %struct.guts* %166, i32 0, i32 10
  %168 = call i32 @initcm(%struct.vars* %165, i32* %167)
  %169 = load %struct.guts*, %struct.guts** %14, align 8
  %170 = getelementptr inbounds %struct.guts, %struct.guts* %169, i32 0, i32 10
  %171 = load %struct.vars*, %struct.vars** %13, align 8
  %172 = getelementptr inbounds %struct.vars, %struct.vars* %171, i32 0, i32 10
  store i32* %170, i32** %172, align 8
  %173 = load %struct.guts*, %struct.guts** %14, align 8
  %174 = getelementptr inbounds %struct.guts, %struct.guts* %173, i32 0, i32 2
  store %struct.subre* null, %struct.subre** %174, align 8
  %175 = load %struct.guts*, %struct.guts** %14, align 8
  %176 = getelementptr inbounds %struct.guts, %struct.guts* %175, i32 0, i32 0
  store i32 0, i32* %176, align 8
  %177 = load %struct.guts*, %struct.guts** %14, align 8
  %178 = getelementptr inbounds %struct.guts, %struct.guts* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @ZAPCNFA(i32 %179)
  %181 = load %struct.vars*, %struct.vars** %13, align 8
  %182 = load %struct.vars*, %struct.vars** %13, align 8
  %183 = getelementptr inbounds %struct.vars, %struct.vars* %182, i32 0, i32 10
  %184 = load i32*, i32** %183, align 8
  %185 = call %struct.TYPE_18__* @newnfa(%struct.vars* %181, i32* %184, %struct.nfa* null)
  %186 = load %struct.vars*, %struct.vars** %13, align 8
  %187 = getelementptr inbounds %struct.vars, %struct.vars* %186, i32 0, i32 9
  store %struct.TYPE_18__* %185, %struct.TYPE_18__** %187, align 8
  %188 = call i32 (...) @ISERR()
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %158
  %191 = load %struct.vars*, %struct.vars** %13, align 8
  %192 = load %struct.vars*, %struct.vars** %13, align 8
  %193 = getelementptr inbounds %struct.vars, %struct.vars* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = call i32 @freev(%struct.vars* %191, i32 %195)
  store i32 %196, i32* %6, align 4
  br label %517

197:                                              ; preds = %158
  %198 = call i32* @newcvec(i32 100, i32 20)
  %199 = load %struct.vars*, %struct.vars** %13, align 8
  %200 = getelementptr inbounds %struct.vars, %struct.vars* %199, i32 0, i32 12
  store i32* %198, i32** %200, align 8
  %201 = load %struct.vars*, %struct.vars** %13, align 8
  %202 = getelementptr inbounds %struct.vars, %struct.vars* %201, i32 0, i32 12
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %197
  %206 = load %struct.vars*, %struct.vars** %13, align 8
  %207 = load i32, i32* @REG_ESPACE, align 4
  %208 = call i32 @freev(%struct.vars* %206, i32 %207)
  store i32 %208, i32* %6, align 4
  br label %517

209:                                              ; preds = %197
  %210 = load %struct.vars*, %struct.vars** %13, align 8
  %211 = call i32 @lexstart(%struct.vars* %210)
  %212 = load %struct.vars*, %struct.vars** %13, align 8
  %213 = getelementptr inbounds %struct.vars, %struct.vars* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @REG_NLSTOP, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %209
  %219 = load %struct.vars*, %struct.vars** %13, align 8
  %220 = getelementptr inbounds %struct.vars, %struct.vars* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @REG_NLANCH, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %240

225:                                              ; preds = %218, %209
  %226 = load %struct.vars*, %struct.vars** %13, align 8
  %227 = getelementptr inbounds %struct.vars, %struct.vars* %226, i32 0, i32 10
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 (...) @newline()
  %230 = call i32 @subcolor(i32* %228, i32 %229)
  %231 = load %struct.vars*, %struct.vars** %13, align 8
  %232 = getelementptr inbounds %struct.vars, %struct.vars* %231, i32 0, i32 11
  store i32 %230, i32* %232, align 8
  %233 = load %struct.vars*, %struct.vars** %13, align 8
  %234 = getelementptr inbounds %struct.vars, %struct.vars* %233, i32 0, i32 9
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %234, align 8
  %236 = load %struct.vars*, %struct.vars** %13, align 8
  %237 = getelementptr inbounds %struct.vars, %struct.vars* %236, i32 0, i32 10
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @okcolors(%struct.TYPE_18__* %235, i32* %238)
  br label %240

240:                                              ; preds = %225, %218
  %241 = call i32 (...) @ISERR()
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %240
  %244 = load %struct.vars*, %struct.vars** %13, align 8
  %245 = load %struct.vars*, %struct.vars** %13, align 8
  %246 = getelementptr inbounds %struct.vars, %struct.vars* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = trunc i64 %247 to i32
  %249 = call i32 @freev(%struct.vars* %244, i32 %248)
  store i32 %249, i32* %6, align 4
  br label %517

250:                                              ; preds = %240
  %251 = load %struct.vars*, %struct.vars** %13, align 8
  %252 = load i32, i32* @EOS, align 4
  %253 = load i32, i32* @PLAIN, align 4
  %254 = load %struct.vars*, %struct.vars** %13, align 8
  %255 = getelementptr inbounds %struct.vars, %struct.vars* %254, i32 0, i32 9
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.vars*, %struct.vars** %13, align 8
  %260 = getelementptr inbounds %struct.vars, %struct.vars* %259, i32 0, i32 9
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call %struct.TYPE_19__* @parse(%struct.vars* %251, i32 %252, i32 %253, i32 %258, i32 %263)
  %265 = load %struct.vars*, %struct.vars** %13, align 8
  %266 = getelementptr inbounds %struct.vars, %struct.vars* %265, i32 0, i32 6
  store %struct.TYPE_19__* %264, %struct.TYPE_19__** %266, align 8
  %267 = load i32, i32* @EOS, align 4
  %268 = call i32 @SEE(i32 %267)
  %269 = call i32 @assert(i32 %268)
  %270 = call i32 (...) @ISERR()
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %250
  %273 = load %struct.vars*, %struct.vars** %13, align 8
  %274 = load %struct.vars*, %struct.vars** %13, align 8
  %275 = getelementptr inbounds %struct.vars, %struct.vars* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = trunc i64 %276 to i32
  %278 = call i32 @freev(%struct.vars* %273, i32 %277)
  store i32 %278, i32* %6, align 4
  br label %517

279:                                              ; preds = %250
  %280 = load %struct.vars*, %struct.vars** %13, align 8
  %281 = getelementptr inbounds %struct.vars, %struct.vars* %280, i32 0, i32 6
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %281, align 8
  %283 = icmp ne %struct.TYPE_19__* %282, null
  %284 = zext i1 %283 to i32
  %285 = call i32 @assert(i32 %284)
  %286 = load %struct.vars*, %struct.vars** %13, align 8
  %287 = getelementptr inbounds %struct.vars, %struct.vars* %286, i32 0, i32 9
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %287, align 8
  %289 = call i32 @specialcolors(%struct.TYPE_18__* %288)
  %290 = call i32 (...) @ISERR()
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %279
  %293 = load %struct.vars*, %struct.vars** %13, align 8
  %294 = load %struct.vars*, %struct.vars** %13, align 8
  %295 = getelementptr inbounds %struct.vars, %struct.vars* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  %298 = call i32 @freev(%struct.vars* %293, i32 %297)
  store i32 %298, i32* %6, align 4
  br label %517

299:                                              ; preds = %279
  %300 = load %struct.vars*, %struct.vars** %13, align 8
  %301 = load %struct.vars*, %struct.vars** %13, align 8
  %302 = getelementptr inbounds %struct.vars, %struct.vars* %301, i32 0, i32 6
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %302, align 8
  %304 = call i32 @optst(%struct.vars* %300, %struct.TYPE_19__* %303)
  %305 = load %struct.vars*, %struct.vars** %13, align 8
  %306 = getelementptr inbounds %struct.vars, %struct.vars* %305, i32 0, i32 6
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %306, align 8
  %308 = call i32 @numst(%struct.TYPE_19__* %307, i32 1)
  %309 = load %struct.vars*, %struct.vars** %13, align 8
  %310 = getelementptr inbounds %struct.vars, %struct.vars* %309, i32 0, i32 5
  store i32 %308, i32* %310, align 8
  %311 = load %struct.vars*, %struct.vars** %13, align 8
  %312 = getelementptr inbounds %struct.vars, %struct.vars* %311, i32 0, i32 6
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %312, align 8
  %314 = call i32 @markst(%struct.TYPE_19__* %313)
  %315 = load %struct.vars*, %struct.vars** %13, align 8
  %316 = call i32 @cleanst(%struct.vars* %315)
  %317 = load %struct.vars*, %struct.vars** %13, align 8
  %318 = load %struct.vars*, %struct.vars** %13, align 8
  %319 = getelementptr inbounds %struct.vars, %struct.vars* %318, i32 0, i32 6
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %319, align 8
  %321 = load i32*, i32** %17, align 8
  %322 = call i32 @nfatree(%struct.vars* %317, %struct.TYPE_19__* %320, i32* %321)
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = or i32 %325, %322
  store i32 %326, i32* %324, align 8
  %327 = call i32 (...) @ISERR()
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %299
  %330 = load %struct.vars*, %struct.vars** %13, align 8
  %331 = load %struct.vars*, %struct.vars** %13, align 8
  %332 = getelementptr inbounds %struct.vars, %struct.vars* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = trunc i64 %333 to i32
  %335 = call i32 @freev(%struct.vars* %330, i32 %334)
  store i32 %335, i32* %6, align 4
  br label %517

336:                                              ; preds = %299
  %337 = load %struct.vars*, %struct.vars** %13, align 8
  %338 = getelementptr inbounds %struct.vars, %struct.vars* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %346, label %341

341:                                              ; preds = %336
  %342 = load %struct.vars*, %struct.vars** %13, align 8
  %343 = getelementptr inbounds %struct.vars, %struct.vars* %342, i32 0, i32 4
  %344 = load %struct.subre*, %struct.subre** %343, align 8
  %345 = icmp ne %struct.subre* %344, null
  br label %346

346:                                              ; preds = %341, %336
  %347 = phi i1 [ true, %336 ], [ %345, %341 ]
  %348 = zext i1 %347 to i32
  %349 = call i32 @assert(i32 %348)
  store i32 1, i32* %15, align 4
  br label %350

350:                                              ; preds = %374, %346
  %351 = load i32, i32* %15, align 4
  %352 = load %struct.vars*, %struct.vars** %13, align 8
  %353 = getelementptr inbounds %struct.vars, %struct.vars* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = icmp slt i32 %351, %354
  br i1 %355, label %356, label %377

356:                                              ; preds = %350
  %357 = load %struct.vars*, %struct.vars** %13, align 8
  %358 = getelementptr inbounds %struct.vars, %struct.vars* %357, i32 0, i32 4
  %359 = load %struct.subre*, %struct.subre** %358, align 8
  %360 = load i32, i32* %15, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.subre, %struct.subre* %359, i64 %361
  store %struct.subre* %362, %struct.subre** %18, align 8
  %363 = load %struct.vars*, %struct.vars** %13, align 8
  %364 = load %struct.subre*, %struct.subre** %18, align 8
  %365 = load %struct.subre*, %struct.subre** %18, align 8
  %366 = getelementptr inbounds %struct.subre, %struct.subre* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @LATYPE_IS_AHEAD(i32 %367)
  %369 = icmp ne i32 %368, 0
  %370 = xor i1 %369, true
  %371 = zext i1 %370 to i32
  %372 = load i32*, i32** %17, align 8
  %373 = call i32 @nfanode(%struct.vars* %363, %struct.subre* %364, i32 %371, i32* %372)
  br label %374

374:                                              ; preds = %356
  %375 = load i32, i32* %15, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %15, align 4
  br label %350

377:                                              ; preds = %350
  %378 = call i32 (...) @ISERR()
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %377
  %381 = load %struct.vars*, %struct.vars** %13, align 8
  %382 = load %struct.vars*, %struct.vars** %13, align 8
  %383 = getelementptr inbounds %struct.vars, %struct.vars* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = trunc i64 %384 to i32
  %386 = call i32 @freev(%struct.vars* %381, i32 %385)
  store i32 %386, i32* %6, align 4
  br label %517

387:                                              ; preds = %377
  %388 = load %struct.vars*, %struct.vars** %13, align 8
  %389 = getelementptr inbounds %struct.vars, %struct.vars* %388, i32 0, i32 6
  %390 = load %struct.TYPE_19__*, %struct.TYPE_19__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @SHORTER, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %387
  %397 = load i32, i32* @REG_USHORTEST, align 4
  %398 = call i32 @NOTE(i32 %397)
  br label %399

399:                                              ; preds = %396, %387
  %400 = load %struct.vars*, %struct.vars** %13, align 8
  %401 = getelementptr inbounds %struct.vars, %struct.vars* %400, i32 0, i32 9
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %401, align 8
  %403 = load i32*, i32** %17, align 8
  %404 = call i32 @optimize(%struct.TYPE_18__* %402, i32* %403)
  %405 = call i32 (...) @ISERR()
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %414

407:                                              ; preds = %399
  %408 = load %struct.vars*, %struct.vars** %13, align 8
  %409 = load %struct.vars*, %struct.vars** %13, align 8
  %410 = getelementptr inbounds %struct.vars, %struct.vars* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = trunc i64 %411 to i32
  %413 = call i32 @freev(%struct.vars* %408, i32 %412)
  store i32 %413, i32* %6, align 4
  br label %517

414:                                              ; preds = %399
  %415 = load %struct.vars*, %struct.vars** %13, align 8
  %416 = load %struct.vars*, %struct.vars** %13, align 8
  %417 = getelementptr inbounds %struct.vars, %struct.vars* %416, i32 0, i32 9
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** %417, align 8
  %419 = call i32 @makesearch(%struct.vars* %415, %struct.TYPE_18__* %418)
  %420 = call i32 (...) @ISERR()
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %429

422:                                              ; preds = %414
  %423 = load %struct.vars*, %struct.vars** %13, align 8
  %424 = load %struct.vars*, %struct.vars** %13, align 8
  %425 = getelementptr inbounds %struct.vars, %struct.vars* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = trunc i64 %426 to i32
  %428 = call i32 @freev(%struct.vars* %423, i32 %427)
  store i32 %428, i32* %6, align 4
  br label %517

429:                                              ; preds = %414
  %430 = load %struct.vars*, %struct.vars** %13, align 8
  %431 = getelementptr inbounds %struct.vars, %struct.vars* %430, i32 0, i32 9
  %432 = load %struct.TYPE_18__*, %struct.TYPE_18__** %431, align 8
  %433 = load %struct.guts*, %struct.guts** %14, align 8
  %434 = getelementptr inbounds %struct.guts, %struct.guts* %433, i32 0, i32 9
  %435 = call i32 @compact(%struct.TYPE_18__* %432, i32* %434)
  %436 = call i32 (...) @ISERR()
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %445

438:                                              ; preds = %429
  %439 = load %struct.vars*, %struct.vars** %13, align 8
  %440 = load %struct.vars*, %struct.vars** %13, align 8
  %441 = getelementptr inbounds %struct.vars, %struct.vars* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = trunc i64 %442 to i32
  %444 = call i32 @freev(%struct.vars* %439, i32 %443)
  store i32 %444, i32* %6, align 4
  br label %517

445:                                              ; preds = %429
  %446 = load %struct.vars*, %struct.vars** %13, align 8
  %447 = getelementptr inbounds %struct.vars, %struct.vars* %446, i32 0, i32 8
  %448 = load i64, i64* %447, align 8
  %449 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %449, i32 0, i32 1
  store i64 %448, i64* %450, align 8
  %451 = load %struct.vars*, %struct.vars** %13, align 8
  %452 = getelementptr inbounds %struct.vars, %struct.vars* %451, i32 0, i32 7
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %452, align 8
  %453 = load i32, i32* @GUTSMAGIC, align 4
  %454 = load %struct.guts*, %struct.guts** %14, align 8
  %455 = getelementptr inbounds %struct.guts, %struct.guts* %454, i32 0, i32 8
  store i32 %453, i32* %455, align 4
  %456 = load %struct.vars*, %struct.vars** %13, align 8
  %457 = getelementptr inbounds %struct.vars, %struct.vars* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.guts*, %struct.guts** %14, align 8
  %460 = getelementptr inbounds %struct.guts, %struct.guts* %459, i32 0, i32 1
  store i32 %458, i32* %460, align 4
  %461 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %462 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.guts*, %struct.guts** %14, align 8
  %465 = getelementptr inbounds %struct.guts, %struct.guts* %464, i32 0, i32 7
  store i32 %463, i32* %465, align 8
  %466 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %467 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %466, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = load %struct.guts*, %struct.guts** %14, align 8
  %470 = getelementptr inbounds %struct.guts, %struct.guts* %469, i32 0, i32 6
  store i64 %468, i64* %470, align 8
  %471 = load %struct.vars*, %struct.vars** %13, align 8
  %472 = getelementptr inbounds %struct.vars, %struct.vars* %471, i32 0, i32 6
  %473 = load %struct.TYPE_19__*, %struct.TYPE_19__** %472, align 8
  %474 = load %struct.guts*, %struct.guts** %14, align 8
  %475 = getelementptr inbounds %struct.guts, %struct.guts* %474, i32 0, i32 5
  store %struct.TYPE_19__* %473, %struct.TYPE_19__** %475, align 8
  %476 = load %struct.vars*, %struct.vars** %13, align 8
  %477 = getelementptr inbounds %struct.vars, %struct.vars* %476, i32 0, i32 6
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %477, align 8
  %478 = load %struct.vars*, %struct.vars** %13, align 8
  %479 = getelementptr inbounds %struct.vars, %struct.vars* %478, i32 0, i32 5
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.guts*, %struct.guts** %14, align 8
  %482 = getelementptr inbounds %struct.guts, %struct.guts* %481, i32 0, i32 4
  store i32 %480, i32* %482, align 4
  %483 = load %struct.vars*, %struct.vars** %13, align 8
  %484 = getelementptr inbounds %struct.vars, %struct.vars* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @REG_ICASE, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %491

489:                                              ; preds = %445
  %490 = load i32, i32* @casecmp, align 4
  br label %493

491:                                              ; preds = %445
  %492 = load i32, i32* @cmp, align 4
  br label %493

493:                                              ; preds = %491, %489
  %494 = phi i32 [ %490, %489 ], [ %492, %491 ]
  %495 = load %struct.guts*, %struct.guts** %14, align 8
  %496 = getelementptr inbounds %struct.guts, %struct.guts* %495, i32 0, i32 3
  store i32 %494, i32* %496, align 8
  %497 = load %struct.vars*, %struct.vars** %13, align 8
  %498 = getelementptr inbounds %struct.vars, %struct.vars* %497, i32 0, i32 4
  %499 = load %struct.subre*, %struct.subre** %498, align 8
  %500 = load %struct.guts*, %struct.guts** %14, align 8
  %501 = getelementptr inbounds %struct.guts, %struct.guts* %500, i32 0, i32 2
  store %struct.subre* %499, %struct.subre** %501, align 8
  %502 = load %struct.vars*, %struct.vars** %13, align 8
  %503 = getelementptr inbounds %struct.vars, %struct.vars* %502, i32 0, i32 4
  store %struct.subre* null, %struct.subre** %503, align 8
  %504 = load %struct.vars*, %struct.vars** %13, align 8
  %505 = getelementptr inbounds %struct.vars, %struct.vars* %504, i32 0, i32 3
  %506 = load i32, i32* %505, align 8
  %507 = load %struct.guts*, %struct.guts** %14, align 8
  %508 = getelementptr inbounds %struct.guts, %struct.guts* %507, i32 0, i32 0
  store i32 %506, i32* %508, align 8
  %509 = load %struct.vars*, %struct.vars** %13, align 8
  %510 = getelementptr inbounds %struct.vars, %struct.vars* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = icmp eq i64 %511, 0
  %513 = zext i1 %512 to i32
  %514 = call i32 @assert(i32 %513)
  %515 = load %struct.vars*, %struct.vars** %13, align 8
  %516 = call i32 @freev(%struct.vars* %515, i32 0)
  store i32 %516, i32* %6, align 4
  br label %517

517:                                              ; preds = %493, %438, %422, %407, %380, %329, %292, %272, %243, %205, %190, %154, %52, %40, %24
  %518 = load i32, i32* %6, align 4
  ret i32 %518
}

declare dso_local i32 @pg_set_regex_collation(i32) #1

declare dso_local i8* @VS(i32*) #1

declare dso_local i32* @MALLOC(i32) #1

declare dso_local i32 @freev(%struct.vars*, i32) #1

declare dso_local i32 @initcm(%struct.vars*, i32*) #1

declare dso_local i32 @ZAPCNFA(i32) #1

declare dso_local %struct.TYPE_18__* @newnfa(%struct.vars*, i32*, %struct.nfa*) #1

declare dso_local i32 @ISERR(...) #1

declare dso_local i32* @newcvec(i32, i32) #1

declare dso_local i32 @lexstart(%struct.vars*) #1

declare dso_local i32 @subcolor(i32*, i32) #1

declare dso_local i32 @newline(...) #1

declare dso_local i32 @okcolors(%struct.TYPE_18__*, i32*) #1

declare dso_local %struct.TYPE_19__* @parse(%struct.vars*, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SEE(i32) #1

declare dso_local i32 @specialcolors(%struct.TYPE_18__*) #1

declare dso_local i32 @optst(%struct.vars*, %struct.TYPE_19__*) #1

declare dso_local i32 @numst(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @markst(%struct.TYPE_19__*) #1

declare dso_local i32 @cleanst(%struct.vars*) #1

declare dso_local i32 @nfatree(%struct.vars*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @nfanode(%struct.vars*, %struct.subre*, i32, i32*) #1

declare dso_local i32 @LATYPE_IS_AHEAD(i32) #1

declare dso_local i32 @NOTE(i32) #1

declare dso_local i32 @optimize(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @makesearch(%struct.vars*, %struct.TYPE_18__*) #1

declare dso_local i32 @compact(%struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
