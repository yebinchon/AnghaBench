; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_examine_attribute.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_examine_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64, %struct.TYPE_13__*, i32*, %struct.TYPE_15__*, i32*, i32*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32*, i32 }

@ATTRIBUTE_FIXED_PART_SIZE = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@anl_context = common dso_local global i32 0, align 4
@STATISTIC_NUM_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_14__*, i32, i32*)* @examine_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @examine_attribute(%struct.TYPE_14__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call %struct.TYPE_13__* @TupleDescAttr(i32 %15, i32 %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %8, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 17
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %221

24:                                               ; preds = %3
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %221

30:                                               ; preds = %24
  %31 = call i64 @palloc0(i32 120)
  %32 = inttoptr i64 %31 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %10, align 8
  %33 = load i32, i32* @ATTRIBUTE_FIXED_PART_SIZE, align 4
  %34 = call i64 @palloc(i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_13__*
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 3
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = load i32, i32* @ATTRIBUTE_FIXED_PART_SIZE, align 4
  %43 = call i32 @memcpy(%struct.TYPE_13__* %40, %struct.TYPE_13__* %41, i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %82

46:                                               ; preds = %30
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @exprType(i32* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @exprTypmod(i32* %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 15
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @OidIsValid(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %46
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 8
  br label %81

76:                                               ; preds = %46
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @exprCollation(i32* %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 13
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %65
  br label %98

82:                                               ; preds = %30
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 16
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 14
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 15
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 12
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 13
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %82, %81
  %99 = load i32, i32* @TYPEOID, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ObjectIdGetDatum(i32 %102)
  %104 = call i32 @SearchSysCacheCopy1(i32 %99, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @HeapTupleIsValid(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %98
  %109 = load i32, i32* @ERROR, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @elog(i32 %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %108, %98
  %115 = load i32, i32* %9, align 4
  %116 = call i64 @GETSTRUCT(i32 %115)
  %117 = inttoptr i64 %116 to %struct.TYPE_15__*
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 5
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** %119, align 8
  %120 = load i32, i32* @anl_context, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 11
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %173, %114
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @STATISTIC_NUM_SLOTS, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %176

130:                                              ; preds = %126
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 10
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %133, i32* %139, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 8
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 7
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 5
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 6
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %166, i32* %172, align 4
  br label %173

173:                                              ; preds = %130
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %126

176:                                              ; preds = %126
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @OidIsValid(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %176
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 5
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %191 = call i32 @PointerGetDatum(%struct.TYPE_13__* %190)
  %192 = call i32 @OidFunctionCall1(i32 %189, i32 %191)
  %193 = call i32 @DatumGetBool(i32 %192)
  store i32 %193, i32* %12, align 4
  br label %197

194:                                              ; preds = %176
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %196 = call i32 @std_typanalyze(%struct.TYPE_13__* %195)
  store i32 %196, i32* %12, align 4
  br label %197

197:                                              ; preds = %194, %184
  %198 = load i32, i32* %12, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %210, label %205

205:                                              ; preds = %200
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp sle i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %205, %200, %197
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @heap_freetuple(i32 %211)
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = call i32 @pfree(%struct.TYPE_13__* %215)
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %218 = call i32 @pfree(%struct.TYPE_13__* %217)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %221

219:                                              ; preds = %205
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %220, %struct.TYPE_13__** %4, align 8
  br label %221

221:                                              ; preds = %219, %210, %29, %23
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %222
}

declare dso_local %struct.TYPE_13__* @TupleDescAttr(i32, i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @exprType(i32*) #1

declare dso_local i32 @exprTypmod(i32*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @exprCollation(i32*) #1

declare dso_local i32 @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @OidFunctionCall1(i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_13__*) #1

declare dso_local i32 @std_typanalyze(%struct.TYPE_13__*) #1

declare dso_local i32 @heap_freetuple(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
