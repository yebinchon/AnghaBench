; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_attstatsslot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_attstatsslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32*, i32*, i32*, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@STATISTIC_NUM_SLOTS = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4
@STATRELATTINH = common dso_local global i32 0, align 4
@Anum_pg_statistic_stavalues1 = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"stavalues is null\00", align 1
@TYPEOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@ATTSTATSSLOT_NUMBERS = common dso_local global i32 0, align 4
@Anum_pg_statistic_stanumbers1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"stanumbers is null\00", align 1
@FLOAT4OID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"stanumbers is not a 1-D float4 array\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_attstatsslot(%struct.TYPE_8__* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @GETSTRUCT(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %12, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = call i32 @memset(%struct.TYPE_8__* %24, i32 0, i32 64)
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %54, %5
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @STATISTIC_NUM_SLOTS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %30
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @InvalidOid, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43, %39
  br label %57

53:                                               ; preds = %43, %30
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %26

57:                                               ; preds = %52, %26
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @STATISTIC_NUM_SLOTS, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %214

62:                                               ; preds = %57
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @InvalidOid, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %62
  %85 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %62
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %158

93:                                               ; preds = %88
  %94 = load i32, i32* @STATRELATTINH, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i64, i64* @Anum_pg_statistic_stavalues1, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = call i32 @SysCacheGetAttr(i32 %94, i32 %95, i64 %99, i32* %15)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load i32, i32* @ERROR, align 4
  %105 = call i32 (i32, i8*, ...) @elog(i32 %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %93
  %107 = load i32, i32* %14, align 4
  %108 = call i32* @DatumGetArrayTypePCopy(i32 %107)
  store i32* %108, i32** %16, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = call i64 @ARR_ELEMTYPE(i32* %109)
  store i64 %110, i64* %17, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 8
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* @TYPEOID, align 4
  %114 = load i64, i64* %17, align 8
  %115 = call i32 @ObjectIdGetDatum(i64 %114)
  %116 = call i32 @SearchSysCache1(i32 %113, i32 %115)
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %19, align 4
  %118 = call i32 @HeapTupleIsValid(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %106
  %121 = load i32, i32* @ERROR, align 4
  %122 = load i64, i64* %17, align 8
  %123 = call i32 (i32, i8*, ...) @elog(i32 %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %122)
  br label %124

124:                                              ; preds = %120, %106
  %125 = load i32, i32* %19, align 4
  %126 = call i64 @GETSTRUCT(i32 %125)
  %127 = inttoptr i64 %126 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %127, %struct.TYPE_6__** %20, align 8
  %128 = load i32*, i32** %16, align 8
  %129 = load i64, i64* %17, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 7
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 6
  %143 = call i32 @deconstruct_array(i32* %128, i64 %129, i32 %132, i32 %135, i32 %138, i32* %140, i32* null, i32* %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %124
  %149 = load i32*, i32** %16, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 5
  store i32* %149, i32** %151, align 8
  br label %155

152:                                              ; preds = %124
  %153 = load i32*, i32** %16, align 8
  %154 = call i32 @pfree(i32* %153)
  br label %155

155:                                              ; preds = %152, %148
  %156 = load i32, i32* %19, align 4
  %157 = call i32 @ReleaseSysCache(i32 %156)
  br label %158

158:                                              ; preds = %155, %88
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %213

163:                                              ; preds = %158
  %164 = load i32, i32* @STATRELATTINH, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i64, i64* @Anum_pg_statistic_stanumbers1, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %166, %168
  %170 = call i32 @SysCacheGetAttr(i32 %164, i32 %165, i64 %169, i32* %15)
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %163
  %174 = load i32, i32* @ERROR, align 4
  %175 = call i32 (i32, i8*, ...) @elog(i32 %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %163
  %177 = load i32, i32* %14, align 4
  %178 = call i32* @DatumGetArrayTypePCopy(i32 %177)
  store i32* %178, i32** %16, align 8
  %179 = load i32*, i32** %16, align 8
  %180 = call i32* @ARR_DIMS(i32* %179)
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %18, align 4
  %183 = load i32*, i32** %16, align 8
  %184 = call i32 @ARR_NDIM(i32* %183)
  %185 = icmp ne i32 %184, 1
  br i1 %185, label %198, label %186

186:                                              ; preds = %176
  %187 = load i32, i32* %18, align 4
  %188 = icmp sle i32 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %186
  %190 = load i32*, i32** %16, align 8
  %191 = call i64 @ARR_HASNULL(i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %189
  %194 = load i32*, i32** %16, align 8
  %195 = call i64 @ARR_ELEMTYPE(i32* %194)
  %196 = load i64, i64* @FLOAT4OID, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %193, %189, %186, %176
  %199 = load i32, i32* @ERROR, align 4
  %200 = call i32 (i32, i8*, ...) @elog(i32 %199, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %193
  %202 = load i32*, i32** %16, align 8
  %203 = call i64 @ARR_DATA_PTR(i32* %202)
  %204 = inttoptr i64 %203 to i32*
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 4
  store i32* %204, i32** %206, align 8
  %207 = load i32, i32* %18, align 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  %210 = load i32*, i32** %16, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  store i32* %210, i32** %212, align 8
  br label %213

213:                                              ; preds = %201, %158
  store i32 1, i32* %6, align 4
  br label %214

214:                                              ; preds = %213, %61
  %215 = load i32, i32* %6, align 4
  ret i32 %215
}

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i64, i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32* @DatumGetArrayTypePCopy(i32) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @deconstruct_array(i32*, i64, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
