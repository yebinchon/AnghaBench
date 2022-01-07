; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_tryAttachPartitionForeignKey.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_tryAttachPartitionForeignKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64*, i64*, i64*, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@CONSTROID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cache lookup failed for constraint %u\00", align 1
@TriggerRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_trigger_tgconstraint = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@TriggerConstraintIndexId = common dso_local global i32 0, align 4
@DROP_RESTRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i64, i32, i64*, i64*, i64*)* @tryAttachPartitionForeignKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tryAttachPartitionForeignKey(%struct.TYPE_7__* %0, i64 %1, i64 %2, i32 %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_5__*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %27 = load i32, i32* @CONSTROID, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @ObjectIdGetDatum(i64 %28)
  %30 = call i32* @SearchSysCache1(i32 %27, i32 %29)
  store i32* %30, i32** %16, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = call i32 @HeapTupleIsValid(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %7
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %34, %7
  %39 = load i32*, i32** %16, align 8
  %40 = call i64 @GETSTRUCT(i32* %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %17, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %38
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %38
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @ReleaseSysCache(i32* %56)
  store i32 0, i32* %8, align 4
  br label %260

58:                                               ; preds = %49
  store i32 0, i32* %24, align 4
  br label %59

59:                                               ; preds = %109, %58
  %60 = load i32, i32* %24, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %112

63:                                               ; preds = %59
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %24, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %13, align 8
  %72 = load i32, i32* %24, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %70, %75
  br i1 %76, label %105, label %77

77:                                               ; preds = %63
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %24, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = load i32, i32* %24, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %84, %89
  br i1 %90, label %105, label %91

91:                                               ; preds = %77
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %24, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %15, align 8
  %100 = load i32, i32* %24, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %98, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %91, %77, %63
  %106 = load i32*, i32** %16, align 8
  %107 = call i32 @ReleaseSysCache(i32* %106)
  store i32 0, i32* %8, align 4
  br label %260

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %24, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %24, align 4
  br label %59

112:                                              ; preds = %59
  %113 = load i32, i32* @CONSTROID, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @ObjectIdGetDatum(i64 %116)
  %118 = call i32* @SearchSysCache1(i32 %113, i32 %117)
  store i32* %118, i32** %18, align 8
  %119 = load i32*, i32** %18, align 8
  %120 = call i32 @HeapTupleIsValid(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %112
  %123 = load i32, i32* @ERROR, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @elog(i32 %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %122, %112
  %129 = load i32*, i32** %18, align 8
  %130 = call i64 @GETSTRUCT(i32* %129)
  %131 = inttoptr i64 %130 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %131, %struct.TYPE_6__** %19, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @OidIsValid(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %182, label %137

137:                                              ; preds = %128
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %182

142:                                              ; preds = %137
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %182, label %150

150:                                              ; preds = %142
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %182, label %158

158:                                              ; preds = %150
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %182, label %166

166:                                              ; preds = %158
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %182, label %174

174:                                              ; preds = %166
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %177, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %174, %166, %158, %150, %142, %137, %128
  %183 = load i32*, i32** %16, align 8
  %184 = call i32 @ReleaseSysCache(i32* %183)
  %185 = load i32*, i32** %18, align 8
  %186 = call i32 @ReleaseSysCache(i32* %185)
  store i32 0, i32* %8, align 4
  br label %260

187:                                              ; preds = %174
  %188 = load i32*, i32** %18, align 8
  %189 = call i32 @ReleaseSysCache(i32* %188)
  %190 = load i32*, i32** %16, align 8
  %191 = call i32 @ReleaseSysCache(i32* %190)
  %192 = load i32, i32* @TriggerRelationId, align 4
  %193 = load i32, i32* @RowExclusiveLock, align 4
  %194 = call i32 @table_open(i32 %192, i32 %193)
  store i32 %194, i32* %20, align 4
  %195 = load i32, i32* @Anum_pg_trigger_tgconstraint, align 4
  %196 = load i32, i32* @BTEqualStrategyNumber, align 4
  %197 = load i32, i32* @F_OIDEQ, align 4
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @ObjectIdGetDatum(i64 %200)
  %202 = call i32 @ScanKeyInit(i32* %21, i32 %195, i32 %196, i32 %197, i32 %201)
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* @TriggerConstraintIndexId, align 4
  %205 = call i32 @systable_beginscan(i32 %203, i32 %204, i32 1, i32* null, i32 1, i32* %21)
  store i32 %205, i32* %22, align 4
  br label %206

206:                                              ; preds = %231, %230, %221, %187
  %207 = load i32, i32* %22, align 4
  %208 = call i32* @systable_getnext(i32 %207)
  store i32* %208, i32** %23, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %247

210:                                              ; preds = %206
  %211 = load i32*, i32** %23, align 8
  %212 = call i64 @GETSTRUCT(i32* %211)
  %213 = inttoptr i64 %212 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %213, %struct.TYPE_5__** %25, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %216, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %210
  br label %206

222:                                              ; preds = %210
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %225, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  br label %206

231:                                              ; preds = %222
  %232 = load i32, i32* @TriggerRelationId, align 4
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @deleteDependencyRecordsFor(i32 %232, i32 %235, i32 0)
  %237 = call i32 (...) @CommandCounterIncrement()
  %238 = load i32, i32* %26, align 4
  %239 = load i32, i32* @TriggerRelationId, align 4
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @ObjectAddressSet(i32 %238, i32 %239, i32 %242)
  %244 = load i32, i32* @DROP_RESTRICT, align 4
  %245 = call i32 @performDeletion(i32* %26, i32 %244, i32 0)
  %246 = call i32 (...) @CommandCounterIncrement()
  br label %206

247:                                              ; preds = %206
  %248 = load i32, i32* %22, align 4
  %249 = call i32 @systable_endscan(i32 %248)
  %250 = load i32, i32* %20, align 4
  %251 = load i32, i32* @RowExclusiveLock, align 4
  %252 = call i32 @table_close(i32 %250, i32 %251)
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 5
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %11, align 8
  %257 = load i64, i64* %10, align 8
  %258 = call i32 @ConstraintSetParentConstraint(i64 %255, i64 %256, i64 %257)
  %259 = call i32 (...) @CommandCounterIncrement()
  store i32 1, i32* %8, align 4
  br label %260

260:                                              ; preds = %247, %182, %105, %55
  %261 = load i32, i32* %8, align 4
  ret i32 %261
}

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32) #1

declare dso_local i32 @deleteDependencyRecordsFor(i32, i32, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @performDeletion(i32*, i32, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @ConstraintSetParentConstraint(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
