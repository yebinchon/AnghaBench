; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_pg_get_statisticsobj_worker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_pg_get_statisticsobj_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i8* }

@STATEXTOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cache lookup failed for statistics object %u\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CREATE STATISTICS %s\00", align 1
@Anum_pg_statistic_ext_stxkind = common dso_local global i32 0, align 4
@CHAROID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"stxkind is not a 1-D char array\00", align 1
@STATS_EXT_NDISTINCT = common dso_local global i8 0, align 1
@STATS_EXT_DEPENDENCIES = common dso_local global i8 0, align 1
@STATS_EXT_MCV = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ndistinct\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%sdependencies\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%smcv\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" ON \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" FROM %s\00", align 1
@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @pg_get_statisticsobj_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pg_get_statisticsobj_worker(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %22 = load i32, i32* @STATEXTOID, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ObjectIdGetDatum(i32 %23)
  %25 = call i32 @SearchSysCache1(i32 %22, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @HeapTupleIsValid(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* null, i8** %3, align 8
  br label %207

33:                                               ; preds = %29
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, ...) @elog(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %2
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @GETSTRUCT(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %6, align 8
  %41 = call i32 @initStringInfo(%struct.TYPE_9__* %8)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @get_namespace_name(i32 %44)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @NameStr(i32 %49)
  %51 = call i8* @quote_qualified_identifier(i8* %46, i32 %50)
  %52 = call i32 @appendStringInfo(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @STATEXTOID, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @Anum_pg_statistic_ext_stxkind, align 4
  %56 = call i32 @SysCacheGetAttr(i32 %53, i32 %54, i32 %55, i32* %14)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @Assert(i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = call i32* @DatumGetArrayTypeP(i32 %62)
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @ARR_NDIM(i32* %64)
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %76, label %67

67:                                               ; preds = %37
  %68 = load i32*, i32** %11, align 8
  %69 = call i64 @ARR_HASNULL(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %11, align 8
  %73 = call i64 @ARR_ELEMTYPE(i32* %72)
  %74 = load i64, i64* @CHAROID, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71, %67, %37
  %77 = load i32, i32* @ERROR, align 4
  %78 = call i32 (i32, i8*, ...) @elog(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32*, i32** %11, align 8
  %81 = call i64 @ARR_DATA_PTR(i32* %80)
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %83

83:                                               ; preds = %124, %79
  %84 = load i32, i32* %18, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = call i32* @ARR_DIMS(i32* %85)
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %83
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* @STATS_EXT_NDISTINCT, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  store i32 1, i32* %15, align 4
  br label %101

101:                                              ; preds = %100, %90
  %102 = load i8*, i8** %12, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* @STATS_EXT_DEPENDENCIES, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  store i32 1, i32* %16, align 4
  br label %112

112:                                              ; preds = %111, %101
  %113 = load i8*, i8** %12, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8, i8* @STATS_EXT_MCV, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  store i32 1, i32* %17, align 4
  br label %123

123:                                              ; preds = %122, %112
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  br label %83

127:                                              ; preds = %83
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %162, label %136

136:                                              ; preds = %133, %130, %127
  store i32 0, i32* %19, align 4
  %137 = call i32 @appendStringInfoString(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = call i32 @appendStringInfoString(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %142

142:                                              ; preds = %140, %136
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %150 = call i32 @appendStringInfo(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %149)
  store i32 1, i32* %19, align 4
  br label %151

151:                                              ; preds = %145, %142
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32, i32* %19, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %159 = call i32 @appendStringInfo(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %154, %151
  %161 = call i32 @appendStringInfoChar(%struct.TYPE_9__* %8, i8 signext 41)
  br label %162

162:                                              ; preds = %160, %133
  %163 = call i32 @appendStringInfoString(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %164

164:                                              ; preds = %193, %162
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %165, %169
  br i1 %170, label %171, label %196

171:                                              ; preds = %164
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %20, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %171
  %183 = call i32 @appendStringInfoString(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %171
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %20, align 4
  %189 = call i8* @get_attname(i32 %187, i32 %188, i32 0)
  store i8* %189, i8** %21, align 8
  %190 = load i8*, i8** %21, align 8
  %191 = call i8* @quote_identifier(i8* %190)
  %192 = call i32 @appendStringInfoString(%struct.TYPE_9__* %8, i8* %191)
  br label %193

193:                                              ; preds = %184
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  br label %164

196:                                              ; preds = %164
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @NIL, align 4
  %201 = call i8* @generate_relation_name(i32 %199, i32 %200)
  %202 = call i32 @appendStringInfo(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %201)
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @ReleaseSysCache(i32 %203)
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  store i8* %206, i8** %3, align 8
  br label %207

207:                                              ; preds = %196, %32
  %208 = load i8*, i8** %3, align 8
  ret i8* %208
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_9__*) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i8* @quote_qualified_identifier(i8*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i8* @get_attname(i32, i32, i32) #1

declare dso_local i8* @quote_identifier(i8*) #1

declare dso_local i8* @generate_relation_name(i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
