; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_fastpath.c_fetch_fp_info.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_fastpath.c_fetch_fp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_info = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"function with OID %u does not exist\00", align 1
@FUNC_MAX_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"function %s has more than %d arguments\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fp_info*)* @fetch_fp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_fp_info(i32 %0, %struct.fp_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fp_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fp_info* %1, %struct.fp_info** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @OidIsValid(i32 %7)
  %9 = call i32 @Assert(i32 %8)
  %10 = load %struct.fp_info*, %struct.fp_info** %4, align 8
  %11 = icmp ne %struct.fp_info* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load %struct.fp_info*, %struct.fp_info** %4, align 8
  %15 = call i32 @MemSet(%struct.fp_info* %14, i32 0, i32 24)
  %16 = load i32, i32* @InvalidOid, align 4
  %17 = load %struct.fp_info*, %struct.fp_info** %4, align 8
  %18 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.fp_info*, %struct.fp_info** %4, align 8
  %21 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %20, i32 0, i32 5
  %22 = call i32 @fmgr_info(i32 %19, i32* %21)
  %23 = load i32, i32* @PROCOID, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ObjectIdGetDatum(i32 %24)
  %26 = call i32 @SearchSysCache1(i32 %23, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @HeapTupleIsValid(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 @ereport(i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %30, %2
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @GETSTRUCT(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %6, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load i32, i32* @ERROR, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @NameStr(i32 %50)
  %52 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %53 = call i32 @elog(i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %37
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fp_info*, %struct.fp_info** %4, align 8
  %59 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fp_info*, %struct.fp_info** %4, align 8
  %64 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.fp_info*, %struct.fp_info** %4, align 8
  %66 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(i32 %67, i32 %71, i32 %77)
  %79 = load %struct.fp_info*, %struct.fp_info** %4, align 8
  %80 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @NameStr(i32 %84)
  %86 = load i32, i32* @NAMEDATALEN, align 4
  %87 = call i32 @strlcpy(i32 %81, i32 %85, i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @ReleaseSysCache(i32 %88)
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.fp_info*, %struct.fp_info** %4, align 8
  %92 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @MemSet(%struct.fp_info*, i32, i32) #1

declare dso_local i32 @fmgr_info(i32, i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
