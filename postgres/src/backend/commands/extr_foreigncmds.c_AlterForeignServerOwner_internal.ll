; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_AlterForeignServerOwner_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_AlterForeignServerOwner_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@Natts_pg_foreign_server = common dso_local global i32 0, align 4
@ACLCHECK_NOT_OWNER = common dso_local global i64 0, align 8
@OBJECT_FOREIGN_SERVER = common dso_local global i32 0, align 4
@ACL_USAGE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_FDW = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvowner = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvacl = common dso_local global i32 0, align 4
@ForeignServerRelationId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_11__*, i32)* @AlterForeignServerOwner_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AlterForeignServerOwner_internal(i32 %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @Natts_pg_foreign_server, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* @Natts_pg_foreign_server, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load i32, i32* @Natts_pg_foreign_server, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = call i64 @GETSTRUCT(%struct.TYPE_11__* %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %7, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %138

36:                                               ; preds = %3
  %37 = call i32 (...) @superuser()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %80, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i32 (...) @GetUserId()
  %45 = call i32 @pg_foreign_server_ownercheck(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load i64, i64* @ACLCHECK_NOT_OWNER, align 8
  %49 = load i32, i32* @OBJECT_FOREIGN_SERVER, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @NameStr(i32 %52)
  %54 = call i32 @aclcheck_error(i64 %48, i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %47, %39
  %56 = call i32 (...) @GetUserId()
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @check_is_member_of_role(i32 %56, i32 %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @ACL_USAGE, align 4
  %64 = call i64 @pg_foreign_data_wrapper_aclcheck(i32 %61, i32 %62, i32 %63)
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* @ACLCHECK_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %55
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_13__* @GetForeignDataWrapper(i32 %71)
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %17, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i32, i32* @OBJECT_FDW, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @aclcheck_error(i64 %73, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %68, %55
  br label %80

80:                                               ; preds = %79, %36
  %81 = mul nuw i64 4, %23
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memset(i32* %24, i32 0, i32 %82)
  %84 = mul nuw i64 4, %26
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memset(i32* %27, i32 0, i32 %85)
  %87 = load i32, i32* @Anum_pg_foreign_server_srvowner, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %27, i64 %89
  store i32 1, i32* %90, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @ObjectIdGetDatum(i32 %91)
  %93 = load i32, i32* @Anum_pg_foreign_server_srvowner, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %21, i64 %95
  store i32 %92, i32* %96, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = load i32, i32* @Anum_pg_foreign_server_srvacl, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @RelationGetDescr(i32 %99)
  %101 = call i32 @heap_getattr(%struct.TYPE_11__* %97, i32 %98, i32 %100, i32* %14)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %80
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @DatumGetAclP(i32 %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32* @aclnewowner(i32 %106, i32 %109, i32 %110)
  store i32* %111, i32** %12, align 8
  %112 = load i32, i32* @Anum_pg_foreign_server_srvacl, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %27, i64 %114
  store i32 1, i32* %115, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @PointerGetDatum(i32* %116)
  %118 = load i32, i32* @Anum_pg_foreign_server_srvacl, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %21, i64 %120
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %104, %80
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @RelationGetDescr(i32 %124)
  %126 = call %struct.TYPE_11__* @heap_modify_tuple(%struct.TYPE_11__* %123, i32 %125, i32* %21, i32* %24, i32* %27)
  store %struct.TYPE_11__* %126, %struct.TYPE_11__** %5, align 8
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = call i32 @CatalogTupleUpdate(i32 %127, i32* %129, %struct.TYPE_11__* %130)
  %132 = load i32, i32* @ForeignServerRelationId, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @changeDependencyOnOwner(i32 %132, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %122, %3
  %139 = load i32, i32* @ForeignServerRelationId, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @InvokeObjectPostAlterHook(i32 %139, i32 %142, i32 0)
  %144 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %144)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_11__*) #2

declare dso_local i32 @superuser(...) #2

declare dso_local i32 @pg_foreign_server_ownercheck(i32, i32) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i32 @aclcheck_error(i64, i32, i32) #2

declare dso_local i32 @NameStr(i32) #2

declare dso_local i32 @check_is_member_of_role(i32, i32) #2

declare dso_local i64 @pg_foreign_data_wrapper_aclcheck(i32, i32, i32) #2

declare dso_local %struct.TYPE_13__* @GetForeignDataWrapper(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @heap_getattr(%struct.TYPE_11__*, i32, i32, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32* @aclnewowner(i32, i32, i32) #2

declare dso_local i32 @DatumGetAclP(i32) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local %struct.TYPE_11__* @heap_modify_tuple(%struct.TYPE_11__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @changeDependencyOnOwner(i32, i32, i32) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
