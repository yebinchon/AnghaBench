; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/foreign/extr_foreign.c_GetForeignServerExtended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/foreign/extr_foreign.c_GetForeignServerExtended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@FOREIGNSERVEROID = common dso_local global i32 0, align 4
@FSV_MISSING_OK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cache lookup failed for foreign server %u\00", align 1
@Anum_pg_foreign_server_srvtype = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvversion = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvoptions = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @GetForeignServerExtended(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @FOREIGNSERVEROID, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = call i32 @SearchSysCache1(i32 %11, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @HeapTupleIsValid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @FSV_MISSING_OK, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %18
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %101

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @GETSTRUCT(i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %6, align 8
  %32 = call i64 @palloc(i32 40)
  %33 = inttoptr i64 %32 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %7, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @NameStr(i32 %39)
  %41 = call i32 @pstrdup(i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @FOREIGNSERVEROID, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @Anum_pg_foreign_server_srvtype, align 4
  %57 = call i32 @SysCacheGetAttr(i32 %54, i32 %55, i32 %56, i32* %10)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %28
  br label %64

61:                                               ; preds = %28
  %62 = load i32, i32* %9, align 4
  %63 = call i32* @TextDatumGetCString(i32 %62)
  br label %64

64:                                               ; preds = %61, %60
  %65 = phi i32* [ null, %60 ], [ %63, %61 ]
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = load i32, i32* @FOREIGNSERVEROID, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @Anum_pg_foreign_server_srvversion, align 4
  %71 = call i32 @SysCacheGetAttr(i32 %68, i32 %69, i32 %70, i32* %10)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %78

75:                                               ; preds = %64
  %76 = load i32, i32* %9, align 4
  %77 = call i32* @TextDatumGetCString(i32 %76)
  br label %78

78:                                               ; preds = %75, %74
  %79 = phi i32* [ null, %74 ], [ %77, %75 ]
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load i32, i32* @FOREIGNSERVEROID, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @Anum_pg_foreign_server_srvoptions, align 4
  %85 = call i32 @SysCacheGetAttr(i32 %82, i32 %83, i32 %84, i32* %10)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i32, i32* @NIL, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %97

92:                                               ; preds = %78
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @untransformRelOptions(i32 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %92, %88
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @ReleaseSysCache(i32 %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %3, align 8
  br label %101

101:                                              ; preds = %97, %27
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %102
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @TextDatumGetCString(i32) #1

declare dso_local i32 @untransformRelOptions(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
