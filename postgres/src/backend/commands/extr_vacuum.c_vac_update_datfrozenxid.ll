; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vac_update_datfrozenxid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vac_update_datfrozenxid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@PROCARRAY_FLAGS_VACUUM = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8
@RELKIND_TOASTVALUE = common dso_local global i64 0, align 8
@DatabaseRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@DATABASEOID = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not find tuple for database %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vac_update_datfrozenxid() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @PROCARRAY_FLAGS_VACUUM, align 4
  %14 = call i64 @GetOldestXmin(i32* null, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = call i64 (...) @GetOldestMultiXactId()
  store i64 %15, i64* %7, align 8
  %16 = call i64 (...) @ReadNewTransactionId()
  store i64 %16, i64* %8, align 8
  %17 = call i64 (...) @ReadNextMultiXactId()
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* @RelationRelationId, align 4
  %19 = load i32, i32* @AccessShareLock, align 4
  %20 = call i32 @table_open(i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @InvalidOid, align 4
  %23 = call i32 @systable_beginscan(i32 %21, i32 %22, i32 0, i32* null, i32 0, i32* null)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %123, %49, %0
  %25 = load i32, i32* %4, align 4
  %26 = call i32* @systable_getnext(i32 %25)
  store i32* %26, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %124

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @GETSTRUCT(i32* %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %12, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RELKIND_RELATION, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %28
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RELKIND_MATVIEW, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RELKIND_TOASTVALUE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @TransactionIdIsValid(i64 %52)
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @Assert(i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @MultiXactIdIsValid(i64 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @Assert(i32 %64)
  br label %24

66:                                               ; preds = %43, %37, %28
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @TransactionIdIsValid(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %66
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @TransactionIdIsNormal(i64 %75)
  %77 = call i32 @Assert(i32 %76)
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @TransactionIdPrecedes(i64 %78, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  store i32 1, i32* %10, align 4
  br label %124

85:                                               ; preds = %72
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i64 @TransactionIdPrecedes(i64 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %6, align 8
  br label %96

96:                                               ; preds = %92, %85
  br label %97

97:                                               ; preds = %96, %66
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @MultiXactIdIsValid(i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %97
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @MultiXactIdPrecedes(i64 %104, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 1, i32* %10, align 4
  br label %124

111:                                              ; preds = %103
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i64 @MultiXactIdPrecedes(i64 %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %7, align 8
  br label %122

122:                                              ; preds = %118, %111
  br label %123

123:                                              ; preds = %122, %97
  br label %24

124:                                              ; preds = %110, %84, %24
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @systable_endscan(i32 %125)
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @AccessShareLock, align 4
  %129 = call i32 @table_close(i32 %127, i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %237

133:                                              ; preds = %124
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @TransactionIdIsNormal(i64 %134)
  %136 = call i32 @Assert(i32 %135)
  %137 = load i64, i64* %7, align 8
  %138 = call i32 @MultiXactIdIsValid(i64 %137)
  %139 = call i32 @Assert(i32 %138)
  %140 = load i32, i32* @DatabaseRelationId, align 4
  %141 = load i32, i32* @RowExclusiveLock, align 4
  %142 = call i32 @table_open(i32 %140, i32 %141)
  store i32 %142, i32* %3, align 4
  %143 = load i32, i32* @DATABASEOID, align 4
  %144 = load i32, i32* @MyDatabaseId, align 4
  %145 = call i32 @ObjectIdGetDatum(i32 %144)
  %146 = call i32* @SearchSysCacheCopy1(i32 %143, i32 %145)
  store i32* %146, i32** %1, align 8
  %147 = load i32*, i32** %1, align 8
  %148 = call i32 @HeapTupleIsValid(i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %133
  %151 = load i32, i32* @ERROR, align 4
  %152 = load i32, i32* @MyDatabaseId, align 4
  %153 = call i32 @elog(i32 %151, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %150, %133
  %155 = load i32*, i32** %1, align 8
  %156 = call i64 @GETSTRUCT(i32* %155)
  %157 = inttoptr i64 %156 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %157, %struct.TYPE_3__** %2, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %6, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %181

163:                                              ; preds = %154
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = call i64 @TransactionIdPrecedes(i64 %166, i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %163
  %171 = load i64, i64* %8, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @TransactionIdPrecedes(i64 %171, i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %170, %163
  %178 = load i64, i64* %6, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  store i32 1, i32* %11, align 4
  br label %185

181:                                              ; preds = %170, %154
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %6, align 8
  br label %185

185:                                              ; preds = %181, %177
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %7, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %209

191:                                              ; preds = %185
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %7, align 8
  %196 = call i64 @MultiXactIdPrecedes(i64 %194, i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %191
  %199 = load i64, i64* %9, align 8
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @MultiXactIdPrecedes(i64 %199, i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %198, %191
  %206 = load i64, i64* %7, align 8
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  store i64 %206, i64* %208, align 8
  store i32 1, i32* %11, align 4
  br label %213

209:                                              ; preds = %198, %185
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %7, align 8
  br label %213

213:                                              ; preds = %209, %205
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32, i32* %3, align 4
  %218 = load i32*, i32** %1, align 8
  %219 = call i32 @heap_inplace_update(i32 %217, i32* %218)
  br label %220

220:                                              ; preds = %216, %213
  %221 = load i32*, i32** %1, align 8
  %222 = call i32 @heap_freetuple(i32* %221)
  %223 = load i32, i32* %3, align 4
  %224 = load i32, i32* @RowExclusiveLock, align 4
  %225 = call i32 @table_close(i32 %223, i32 %224)
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %220
  %229 = call i64 (...) @ForceTransactionIdLimitUpdate()
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %228, %220
  %232 = load i64, i64* %6, align 8
  %233 = load i64, i64* %7, align 8
  %234 = load i64, i64* %8, align 8
  %235 = load i64, i64* %9, align 8
  %236 = call i32 @vac_truncate_clog(i64 %232, i64 %233, i64 %234, i64 %235)
  br label %237

237:                                              ; preds = %132, %231, %228
  ret void
}

declare dso_local i64 @GetOldestXmin(i32*, i32) #1

declare dso_local i64 @GetOldestMultiXactId(...) #1

declare dso_local i64 @ReadNewTransactionId(...) #1

declare dso_local i64 @ReadNextMultiXactId(...) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @TransactionIdIsValid(i64) #1

declare dso_local i32 @MultiXactIdIsValid(i64) #1

declare dso_local i32 @TransactionIdIsNormal(i64) #1

declare dso_local i64 @TransactionIdPrecedes(i64, i64) #1

declare dso_local i64 @MultiXactIdPrecedes(i64, i64) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @heap_inplace_update(i32, i32*) #1

declare dso_local i32 @heap_freetuple(i32*) #1

declare dso_local i64 @ForceTransactionIdLimitUpdate(...) #1

declare dso_local i32 @vac_truncate_clog(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
