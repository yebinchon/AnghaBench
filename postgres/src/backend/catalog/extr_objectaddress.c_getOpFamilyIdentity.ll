; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_getOpFamilyIdentity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_getOpFamilyIdentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@OPFAMILYOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for opfamily %u\00", align 1
@AMOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cache lookup failed for access method %u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s USING %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32**)* @getOpFamilyIdentity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getOpFamilyIdentity(i32 %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32, i32* @OPFAMILYOID, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ObjectIdGetDatum(i32 %13)
  %15 = call i32 @SearchSysCache1(i32 %12, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @HeapTupleIsValid(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @elog(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @GETSTRUCT(i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %8, align 8
  %27 = load i32, i32* @AMOID, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ObjectIdGetDatum(i32 %30)
  %32 = call i32 @SearchSysCache1(i32 %27, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @HeapTupleIsValid(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* @ERROR, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %23
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @GETSTRUCT(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %10, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @get_namespace_name_or_temp(i32 %48)
  store i8* %49, i8** %11, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @NameStr(i32 %54)
  %56 = call i32 @quote_qualified_identifier(i8* %51, i8* %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @NameStr(i32 %59)
  %61 = call i32 @appendStringInfo(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %56, i8* %60)
  %62 = load i32**, i32*** %6, align 8
  %63 = icmp ne i32** %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %42
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @NameStr(i32 %67)
  %69 = call i32 @pstrdup(i8* %68)
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @pstrdup(i8* %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @NameStr(i32 %74)
  %76 = call i32 @pstrdup(i8* %75)
  %77 = call i32* @list_make3(i32 %69, i32 %71, i32 %76)
  %78 = load i32**, i32*** %6, align 8
  store i32* %77, i32** %78, align 8
  br label %79

79:                                               ; preds = %64, %42
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @ReleaseSysCache(i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @ReleaseSysCache(i32 %82)
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @get_namespace_name_or_temp(i32) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, i8*) #1

declare dso_local i32 @quote_qualified_identifier(i8*, i8*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32* @list_make3(i32, i32, i32) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
