; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/foreign/extr_foreign.c_GetUserMapping.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/foreign/extr_foreign.c_GetUserMapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32 }

@USERMAPPINGUSERSERVER = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"user mapping not found for \22%s\22\00", align 1
@Anum_pg_user_mapping_umoptions = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @GetUserMapping(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @USERMAPPINGUSERSERVER, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @ObjectIdGetDatum(i8* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @ObjectIdGetDatum(i8* %12)
  %14 = call i32 @SearchSysCache2(i32 %9, i32 %11, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @HeapTupleIsValid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @USERMAPPINGUSERSERVER, align 4
  %20 = load i8*, i8** @InvalidOid, align 8
  %21 = call i32 @ObjectIdGetDatum(i8* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @ObjectIdGetDatum(i8* %22)
  %24 = call i32 @SearchSysCache2(i32 %19, i32 %21, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @HeapTupleIsValid(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @MappingUserName(i8* %33)
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 @ereport(i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %29, %25
  %38 = call i64 @palloc(i32 32)
  %39 = inttoptr i64 %38 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @GETSTRUCT(i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_5__*
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @USERMAPPINGUSERSERVER, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @Anum_pg_user_mapping_umoptions, align 4
  %56 = call i32 @SysCacheGetAttr(i32 %53, i32 %54, i32 %55, i32* %7)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %37
  %60 = load i32, i32* @NIL, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %68

63:                                               ; preds = %37
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @untransformRelOptions(i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ReleaseSysCache(i32 %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  ret %struct.TYPE_4__* %71
}

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @MappingUserName(i8*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @untransformRelOptions(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
