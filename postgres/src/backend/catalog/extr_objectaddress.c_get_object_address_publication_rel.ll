; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_publication_rel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_publication_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PublicationRelRelationId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@PUBLICATIONRELMAP = common dso_local global i32 0, align 4
@Anum_pg_publication_rel_oid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"publication relation \22%s\22 in publication \22%s\22 does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32)* @get_object_address_publication_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_object_address_publication_rel(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @PublicationRelRelationId, align 4
  %13 = load i32, i32* @InvalidOid, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ObjectAddressSet(i32 %15, i32 %12, i32 %13)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @linitial(i32* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @makeRangeVarFromNameList(i32* %19)
  %21 = load i32, i32* @AccessShareLock, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @relation_openrv_extended(i32 %20, i32 %21, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %75

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @lsecond(i32* %28)
  %30 = call i8* @strVal(i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.TYPE_6__* @GetPublicationByName(i8* %31, i32 %32)
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %11, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* @AccessShareLock, align 4
  %39 = call i32 @relation_close(i64 %37, i32 %38)
  br label %75

40:                                               ; preds = %27
  %41 = load i32, i32* @PUBLICATIONRELMAP, align 4
  %42 = load i32, i32* @Anum_pg_publication_rel_oid, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @RelationGetRelid(i64 %43)
  %45 = call i32 @ObjectIdGetDatum(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ObjectIdGetDatum(i32 %48)
  %50 = call i32 @GetSysCacheOid2(i32 %41, i32 %42, i32 %45, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @OidIsValid(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @RelationGetRelationName(i64 %63)
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %64, i8* %65)
  %67 = call i32 @ereport(i32 %60, i32 %66)
  br label %68

68:                                               ; preds = %59, %56
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* @AccessShareLock, align 4
  %71 = call i32 @relation_close(i64 %69, i32 %70)
  br label %75

72:                                               ; preds = %40
  %73 = load i64, i64* %8, align 8
  %74 = load i64*, i64** %6, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %68, %36, %26
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  ret i32 %77
}

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32* @linitial(i32*) #1

declare dso_local i64 @relation_openrv_extended(i32, i32, i32) #1

declare dso_local i32 @makeRangeVarFromNameList(i32*) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @lsecond(i32*) #1

declare dso_local %struct.TYPE_6__* @GetPublicationByName(i8*, i32) #1

declare dso_local i32 @relation_close(i64, i32) #1

declare dso_local i32 @GetSysCacheOid2(i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(i64) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*) #1

declare dso_local i32 @RelationGetRelationName(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
