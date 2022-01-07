; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/statistics/extr_mcv.c_statext_mcv_load.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/statistics/extr_mcv.c_statext_mcv_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATEXTDATASTXOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cache lookup failed for statistics object %u\00", align 1
@Anum_pg_statistic_ext_data_stxdmcv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"requested statistic kind \22%c\22 is not yet built for statistics object %u\00", align 1
@STATS_EXT_DEPENDENCIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @statext_mcv_load(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @STATEXTDATASTXOID, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @ObjectIdGetDatum(i32 %8)
  %10 = call i32 @SearchSysCache1(i32 %7, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @HeapTupleIsValid(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i32, i8*, i32, ...) @elog(i32 %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* @STATEXTDATASTXOID, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @Anum_pg_statistic_ext_data_stxdmcv, align 4
  %22 = call i32 @SysCacheGetAttr(i32 %19, i32 %20, i32 %21, i32* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @STATS_EXT_DEPENDENCIES, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i32, i8*, i32, ...) @elog(i32 %26, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @DatumGetByteaP(i32 %31)
  %33 = call i32* @statext_mcv_deserialize(i32 %32)
  store i32* %33, i32** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ReleaseSysCache(i32 %34)
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @statext_mcv_deserialize(i32) #1

declare dso_local i32 @DatumGetByteaP(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
