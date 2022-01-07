; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_fmgr_symbol.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_fmgr_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@Anum_pg_proc_proconfig = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"fmgr_security_definer\00", align 1
@Anum_pg_proc_prosrc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"null prosrc\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"null prosrc for C function %u\00", align 1
@Anum_pg_proc_probin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"null probin for C function %u\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"fmgr_sql\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fmgr_symbol(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %12 = load i32, i32* @PROCOID, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ObjectIdGetDatum(i32 %13)
  %15 = call i32 @SearchSysCache1(i32 %12, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @HeapTupleIsValid(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i32, i8*, ...) @elog(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @GETSTRUCT(i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %8, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @Anum_pg_proc_proconfig, align 4
  %34 = call i32 @heap_attisnull(i32 %32, i32 %33, i32* null)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @FmgrHookIsNeeded(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36, %31, %23
  %41 = load i8**, i8*** %5, align 8
  store i8* null, i8** %41, align 8
  %42 = call i8* @pstrdup(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8**, i8*** %6, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ReleaseSysCache(i32 %44)
  br label %104

46:                                               ; preds = %36
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %98 [
    i32 129, label %50
    i32 130, label %65
    i32 128, label %94
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* @PROCOID, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @Anum_pg_proc_prosrc, align 4
  %54 = call i32 @SysCacheGetAttr(i32 %51, i32 %52, i32 %53, i32* %9)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @ERROR, align 4
  %59 = call i32 (i32, i8*, ...) @elog(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %50
  %61 = load i8**, i8*** %5, align 8
  store i8* null, i8** %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i8* @TextDatumGetCString(i32 %62)
  %64 = load i8**, i8*** %6, align 8
  store i8* %63, i8** %64, align 8
  br label %101

65:                                               ; preds = %46
  %66 = load i32, i32* @PROCOID, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @Anum_pg_proc_prosrc, align 4
  %69 = call i32 @SysCacheGetAttr(i32 %66, i32 %67, i32 %68, i32* %9)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i32, i8*, ...) @elog(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i32, i32* @PROCOID, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @Anum_pg_proc_probin, align 4
  %80 = call i32 @SysCacheGetAttr(i32 %77, i32 %78, i32 %79, i32* %9)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @ERROR, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (i32, i8*, ...) @elog(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %76
  %88 = load i32, i32* %11, align 4
  %89 = call i8* @TextDatumGetCString(i32 %88)
  %90 = load i8**, i8*** %5, align 8
  store i8* %89, i8** %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i8* @TextDatumGetCString(i32 %91)
  %93 = load i8**, i8*** %6, align 8
  store i8* %92, i8** %93, align 8
  br label %101

94:                                               ; preds = %46
  %95 = load i8**, i8*** %5, align 8
  store i8* null, i8** %95, align 8
  %96 = call i8* @pstrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i8**, i8*** %6, align 8
  store i8* %96, i8** %97, align 8
  br label %101

98:                                               ; preds = %46
  %99 = load i8**, i8*** %5, align 8
  store i8* null, i8** %99, align 8
  %100 = load i8**, i8*** %6, align 8
  store i8* null, i8** %100, align 8
  br label %101

101:                                              ; preds = %98, %94, %87, %60
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @ReleaseSysCache(i32 %102)
  br label %104

104:                                              ; preds = %101, %40
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @heap_attisnull(i32, i32, i32*) #1

declare dso_local i64 @FmgrHookIsNeeded(i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
