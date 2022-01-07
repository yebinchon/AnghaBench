; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_DefineEnum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_DefineEnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_SCHEMA = common dso_local global i32 0, align 4
@TYPENAMENSP = common dso_local global i32 0, align 4
@Anum_pg_type_oid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"type \22%s\22 already exists\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@TYPTYPE_ENUM = common dso_local global i32 0, align 4
@TYPCATEGORY_ENUM = common dso_local global i32 0, align 4
@DEFAULT_TYPDELIM = common dso_local global i32 0, align 4
@F_ENUM_IN = common dso_local global i32 0, align 4
@F_ENUM_OUT = common dso_local global i32 0, align 4
@F_ENUM_RECV = common dso_local global i32 0, align 4
@F_ENUM_SEND = common dso_local global i32 0, align 4
@TYPTYPE_BASE = common dso_local global i32 0, align 4
@TYPCATEGORY_ARRAY = common dso_local global i32 0, align 4
@F_ARRAY_IN = common dso_local global i32 0, align 4
@F_ARRAY_OUT = common dso_local global i32 0, align 4
@F_ARRAY_RECV = common dso_local global i32 0, align 4
@F_ARRAY_SEND = common dso_local global i32 0, align 4
@F_ARRAY_TYPANALYZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DefineEnum(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @QualifiedNameGetCreationNamespace(i32 %14, i8** %4)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (...) @GetUserId()
  %18 = load i32, i32* @ACL_CREATE, align 4
  %19 = call i64 @pg_namespace_aclcheck(i32 %16, i32 %17, i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @ACLCHECK_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @OBJECT_SCHEMA, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @get_namespace_name(i32 %26)
  %28 = call i32 @aclcheck_error(i64 %24, i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %23, %1
  %30 = load i32, i32* @TYPENAMENSP, align 4
  %31 = load i32, i32* @Anum_pg_type_oid, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @CStringGetDatum(i8* %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ObjectIdGetDatum(i32 %34)
  %36 = call i32 @GetSysCacheOid2(i32 %30, i32 %31, i32 %33, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @OidIsValid(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @moveArrayTypeName(i32 %41, i8* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = call i32 @ereport(i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53, %29
  %55 = call i32 (...) @AssignTypeArrayOid()
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @InvalidOid, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @InvalidOid, align 4
  %60 = call i32 (...) @GetUserId()
  %61 = load i32, i32* @TYPTYPE_ENUM, align 4
  %62 = load i32, i32* @TYPCATEGORY_ENUM, align 4
  %63 = load i32, i32* @DEFAULT_TYPDELIM, align 4
  %64 = load i32, i32* @F_ENUM_IN, align 4
  %65 = load i32, i32* @F_ENUM_OUT, align 4
  %66 = load i32, i32* @F_ENUM_RECV, align 4
  %67 = load i32, i32* @F_ENUM_SEND, align 4
  %68 = load i32, i32* @InvalidOid, align 4
  %69 = load i32, i32* @InvalidOid, align 4
  %70 = load i32, i32* @InvalidOid, align 4
  %71 = load i32, i32* @InvalidOid, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @InvalidOid, align 4
  %74 = load i32, i32* @InvalidOid, align 4
  %75 = call i32 @TypeCreate(i32 %56, i8* %57, i32 %58, i32 %59, i32 0, i32 %60, i32 4, i32 %61, i32 %62, i32 0, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 0, i32 %72, i32 %73, i32* null, i32* null, i32 1, i8 signext 105, i8 signext 112, i32 -1, i32 0, i32 0, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = bitcast %struct.TYPE_6__* %2 to i8*
  %78 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 4, i1 false)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @EnumValuesCreate(i32 %80, i32 %83)
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i8* @makeArrayTypeName(i8* %85, i32 %86)
  store i8* %87, i8** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @InvalidOid, align 4
  %92 = call i32 (...) @GetUserId()
  %93 = load i32, i32* @TYPTYPE_BASE, align 4
  %94 = load i32, i32* @TYPCATEGORY_ARRAY, align 4
  %95 = load i32, i32* @DEFAULT_TYPDELIM, align 4
  %96 = load i32, i32* @F_ARRAY_IN, align 4
  %97 = load i32, i32* @F_ARRAY_OUT, align 4
  %98 = load i32, i32* @F_ARRAY_RECV, align 4
  %99 = load i32, i32* @F_ARRAY_SEND, align 4
  %100 = load i32, i32* @InvalidOid, align 4
  %101 = load i32, i32* @InvalidOid, align 4
  %102 = load i32, i32* @F_ARRAY_TYPANALYZE, align 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @InvalidOid, align 4
  %106 = load i32, i32* @InvalidOid, align 4
  %107 = load i32, i32* @InvalidOid, align 4
  %108 = call i32 @TypeCreate(i32 %88, i8* %89, i32 %90, i32 %91, i32 0, i32 %92, i32 -1, i32 %93, i32 %94, i32 0, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %104, i32 1, i32 %105, i32 %106, i32* null, i32* null, i32 0, i8 signext 105, i8 signext 120, i32 -1, i32 0, i32 0, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @pfree(i8* %110)
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  ret i32 %113
}

declare dso_local i32 @QualifiedNameGetCreationNamespace(i32, i8**) #1

declare dso_local i64 @pg_namespace_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @GetSysCacheOid2(i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @moveArrayTypeName(i32, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @AssignTypeArrayOid(...) #1

declare dso_local i32 @TypeCreate(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i8 signext, i8 signext, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EnumValuesCreate(i32, i32) #1

declare dso_local i8* @makeArrayTypeName(i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
