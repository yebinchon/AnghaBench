; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_minmax.c_minmax_get_strategy_procinfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_minmax.c_minmax_get_strategy_procinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__** }
%struct.TYPE_12__ = type { i64* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64 }

@BTMaxStrategyNumber = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@AMOPSTRATEGY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"missing operator %d(%u,%u) in opfamily %u\00", align 1
@Anum_pg_amop_amopopr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*, i32, i64, i32)* @minmax_get_strategy_procinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @minmax_get_strategy_procinfo(%struct.TYPE_16__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @BTMaxStrategyNumber, align 4
  %21 = icmp sle i32 %19, %20
  br label %22

22:                                               ; preds = %18, %4
  %23 = phi i1 [ false, %4 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %28, i64 %31
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %9, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %57, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @BTMaxStrategyNumber, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i64, i64* @InvalidOid, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  store i64 %48, i64* %56, align 8
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %43

60:                                               ; preds = %43
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %22
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @InvalidOid, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %148

76:                                               ; preds = %64
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %13, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call %struct.TYPE_14__* @TupleDescAttr(i32 %89, i32 %91)
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %11, align 8
  %93 = load i32, i32* @AMOPSTRATEGY, align 4
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @ObjectIdGetDatum(i64 %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @ObjectIdGetDatum(i64 %98)
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @ObjectIdGetDatum(i64 %100)
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @Int16GetDatum(i32 %102)
  %104 = call i32 @SearchSysCache4(i32 %93, i32 %95, i32 %99, i32 %101, i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @HeapTupleIsValid(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %76
  %109 = load i32, i32* @ERROR, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @elog(i32 %109, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %110, i64 %113, i64 %114, i64 %115)
  br label %117

117:                                              ; preds = %108, %76
  %118 = load i32, i32* @AMOPSTRATEGY, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @Anum_pg_amop_amopopr, align 4
  %121 = call i32 @SysCacheGetAttr(i32 %118, i32 %119, i32 %120, i32* %15)
  %122 = call i64 @DatumGetObjectId(i32 %121)
  store i64 %122, i64* %14, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @ReleaseSysCache(i32 %123)
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %117
  %128 = load i64, i64* %14, align 8
  %129 = call i64 @RegProcedureIsValid(i64 %128)
  %130 = icmp ne i64 %129, 0
  br label %131

131:                                              ; preds = %127, %117
  %132 = phi i1 [ false, %117 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32
  %134 = call i32 @Assert(i32 %133)
  %135 = load i64, i64* %14, align 8
  %136 = call i32 @get_opcode(i64 %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i64 %142
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @fmgr_info_cxt(i32 %136, %struct.TYPE_15__* %143, i32 %146)
  br label %148

148:                                              ; preds = %131, %64
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i64 %154
  ret %struct.TYPE_15__* %155
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_14__* @TupleDescAttr(i32, i32) #1

declare dso_local i32 @SearchSysCache4(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i64, i64, i64) #1

declare dso_local i64 @DatumGetObjectId(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @RegProcedureIsValid(i64) #1

declare dso_local i32 @fmgr_info_cxt(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @get_opcode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
