; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_typdefault.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_typdefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@Anum_pg_type_typdefaultbin = common dso_local global i32 0, align 4
@Anum_pg_type_typdefault = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_typdefault(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @TYPEOID, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @ObjectIdGetDatum(i32 %10)
  %12 = call i32 @SearchSysCache1(i32 %9, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @HeapTupleIsValid(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @GETSTRUCT(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %4, align 8
  %24 = load i32, i32* @TYPEOID, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @Anum_pg_type_typdefaultbin, align 4
  %27 = call i32 @SysCacheGetAttr(i32 %24, i32 %25, i32 %26, i32* %6)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @TextDatumGetCString(i32 %31)
  %33 = call i32* @stringToNode(i8* %32)
  store i32* %33, i32** %7, align 8
  br label %68

34:                                               ; preds = %20
  %35 = load i32, i32* @TYPEOID, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @Anum_pg_type_typdefault, align 4
  %38 = call i32 @SysCacheGetAttr(i32 %35, i32 %36, i32 %37, i32* %6)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @TextDatumGetCString(i32 %42)
  store i8* %43, i8** %8, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @getTypeIOParam(i32 %48)
  %50 = call i32 @OidInputFunctionCall(i32 %46, i8* %47, i32 %49, i32 -1)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %2, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @makeConst(i32 %51, i32 -1, i32 %54, i32 %57, i32 %58, i32 0, i32 %61)
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @pfree(i8* %64)
  br label %67

66:                                               ; preds = %34
  store i32* null, i32** %7, align 8
  br label %67

67:                                               ; preds = %66, %41
  br label %68

68:                                               ; preds = %67, %30
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @ReleaseSysCache(i32 %69)
  %71 = load i32*, i32** %7, align 8
  ret i32* %71
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @stringToNode(i8*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @OidInputFunctionCall(i32, i8*, i32, i32) #1

declare dso_local i32 @getTypeIOParam(i32) #1

declare dso_local i64 @makeConst(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
