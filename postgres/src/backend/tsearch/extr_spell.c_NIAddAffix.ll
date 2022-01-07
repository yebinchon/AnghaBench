; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_NIAddAffix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_NIAddAffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i8, i8*, i32, i8*, i64, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@FF_SUFFIX = common dso_local global i32 0, align 4
@VoidString = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s$\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"^%s\00", align 1
@REG_ADVANCED = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_REGULAR_EXPRESSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"invalid regular expression: %s\00", align 1
@FF_COMPOUNDONLY = common dso_local global i32 0, align 4
@FF_COMPOUNDPERMITFLAG = common dso_local global i32 0, align 4
@FF_COMPOUNDFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i8, i8*, i8*, i8*, i32)* @NIAddAffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NIAddAffix(%struct.TYPE_7__* %0, i8* %1, i8 signext %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [100 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8 %2, i8* %10, align 1
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %7
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = bitcast %struct.TYPE_8__* %41 to i8*
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 64
  %48 = trunc i64 %47 to i32
  %49 = call i64 @repalloc(i8* %42, i32 %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_8__*
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %52, align 8
  br label %66

53:                                               ; preds = %29
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 16, i32* %55, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 64
  %61 = trunc i64 %60 to i32
  %62 = call i64 @palloc(i32 %61)
  %63 = inttoptr i64 %62 to %struct.TYPE_8__*
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %65, align 8
  br label %66

66:                                               ; preds = %53, %34
  br label %67

67:                                               ; preds = %66, %7
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %74
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %15, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %67
  %80 = load i8*, i8** %11, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79, %67
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  br label %178

89:                                               ; preds = %79
  %90 = load i8*, i8** %11, align 8
  %91 = call i64 @RS_isRegis(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %89
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @FF_SUFFIX, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i8*, i8** %11, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %93
  %110 = load i8*, i8** %11, align 8
  br label %113

111:                                              ; preds = %93
  %112 = load i8*, i8** @VoidString, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i8* [ %110, %109 ], [ %112, %111 ]
  %115 = call i32 @RS_compile(i32* %100, i32 %104, i8* %114)
  br label %177

116:                                              ; preds = %89
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = add nsw i32 %122, 3
  %124 = call i64 @tmpalloc(i32 %123)
  %125 = inttoptr i64 %124 to i8*
  store i8* %125, i8** %20, align 8
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @FF_SUFFIX, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %116
  %130 = load i8*, i8** %20, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @sprintf(i8* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %131)
  br label %137

133:                                              ; preds = %116
  %134 = load i8*, i8** %20, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @sprintf(i8* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %133, %129
  %138 = load i8*, i8** %20, align 8
  %139 = call i32 @strlen(i8* %138)
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = call i64 @tmpalloc(i32 %144)
  %146 = inttoptr i64 %145 to i32*
  store i32* %146, i32** %19, align 8
  %147 = load i8*, i8** %20, align 8
  %148 = load i32*, i32** %19, align 8
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @pg_mb2wchar_with_len(i8* %147, i32* %148, i32 %149)
  store i32 %150, i32* %17, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32*, i32** %19, align 8
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* @REG_ADVANCED, align 4
  %157 = load i32, i32* @REG_NOSUB, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @DEFAULT_COLLATION_OID, align 4
  %160 = call i32 @pg_regcomp(i32* %153, i32* %154, i32 %155, i32 %158, i32 %159)
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %18, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %137
  %164 = load i32, i32* %18, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %169 = call i32 @pg_regerror(i32 %164, i32* %167, i8* %168, i32 100)
  %170 = load i32, i32* @ERROR, align 4
  %171 = load i32, i32* @ERRCODE_INVALID_REGULAR_EXPRESSION, align 4
  %172 = call i32 @errcode(i32 %171)
  %173 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %174 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %173)
  %175 = call i32 @ereport(i32 %170, i32 %174)
  br label %176

176:                                              ; preds = %163, %137
  br label %177

177:                                              ; preds = %176, %113
  br label %178

178:                                              ; preds = %177, %84
  %179 = load i8, i8* %10, align 1
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  store i8 %179, i8* %181, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = load i8, i8* %183, align 8
  %185 = sext i8 %184 to i32
  %186 = load i32, i32* @FF_COMPOUNDONLY, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %178
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load i8, i8* %191, align 8
  %193 = sext i8 %192 to i32
  %194 = load i32, i32* @FF_COMPOUNDPERMITFLAG, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %189, %178
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  %200 = load i8, i8* %199, align 8
  %201 = sext i8 %200 to i32
  %202 = load i32, i32* @FF_COMPOUNDFLAG, align 4
  %203 = and i32 %201, %202
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %197
  %206 = load i32, i32* @FF_COMPOUNDFLAG, align 4
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = load i8, i8* %208, align 8
  %210 = sext i8 %209 to i32
  %211 = or i32 %210, %206
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %208, align 8
  br label %213

213:                                              ; preds = %205, %197
  br label %214

214:                                              ; preds = %213, %189
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %216 = load i8*, i8** %9, align 8
  %217 = call i8* @cpstrdup(%struct.TYPE_7__* %215, i8* %216)
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 3
  store i8* %217, i8** %219, align 8
  %220 = load i32, i32* %14, align 4
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 8
  %223 = load i8*, i8** %12, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %234

225:                                              ; preds = %214
  %226 = load i8*, i8** %12, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %232 = load i8*, i8** %12, align 8
  %233 = call i8* @cpstrdup(%struct.TYPE_7__* %231, i8* %232)
  br label %236

234:                                              ; preds = %225, %214
  %235 = load i8*, i8** @VoidString, align 8
  br label %236

236:                                              ; preds = %234, %230
  %237 = phi i8* [ %233, %230 ], [ %235, %234 ]
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 5
  store i8* %237, i8** %239, align 8
  %240 = load i8*, i8** %13, align 8
  %241 = call i32 @strlen(i8* %240)
  %242 = sext i32 %241 to i64
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 6
  store i64 %242, i64* %244, align 8
  %245 = icmp sgt i64 %242, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %236
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %248 = load i8*, i8** %13, align 8
  %249 = call i8* @cpstrdup(%struct.TYPE_7__* %247, i8* %248)
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 7
  store i8* %249, i8** %251, align 8
  br label %256

252:                                              ; preds = %236
  %253 = load i8*, i8** @VoidString, align 8
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 7
  store i8* %253, i8** %255, align 8
  br label %256

256:                                              ; preds = %252, %246
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 8
  ret void
}

declare dso_local i64 @repalloc(i8*, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @RS_isRegis(i8*) #1

declare dso_local i32 @RS_compile(i32*, i32, i8*) #1

declare dso_local i64 @tmpalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @pg_mb2wchar_with_len(i8*, i32*, i32) #1

declare dso_local i32 @pg_regcomp(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @pg_regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i8* @cpstrdup(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
