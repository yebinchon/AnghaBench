; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_AlterForeignDataWrapperOwner_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_AlterForeignDataWrapperOwner_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@Natts_pg_foreign_data_wrapper = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"permission denied to change owner of foreign-data wrapper \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Must be superuser to change owner of a foreign-data wrapper.\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"The owner of a foreign-data wrapper must be a superuser.\00", align 1
@Anum_pg_foreign_data_wrapper_fdwowner = common dso_local global i32 0, align 4
@Anum_pg_foreign_data_wrapper_fdwacl = common dso_local global i32 0, align 4
@ForeignDataWrapperRelationId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*, i32)* @AlterForeignDataWrapperOwner_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AlterForeignDataWrapperOwner_internal(i32 %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @Natts_pg_foreign_data_wrapper, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @Natts_pg_foreign_data_wrapper, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i32, i32* @Natts_pg_foreign_data_wrapper, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = call i64 @GETSTRUCT(%struct.TYPE_9__* %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %7, align 8
  %28 = call i32 (...) @superuser()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @NameStr(i32 %36)
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = call i32 @errhint(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @ereport(i32 %31, i32 %39)
  br label %41

41:                                               ; preds = %30, %3
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @superuser_arg(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @NameStr(i32 %51)
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = call i32 @errhint(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @ereport(i32 %46, i32 %54)
  br label %56

56:                                               ; preds = %45, %41
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %120

62:                                               ; preds = %56
  %63 = mul nuw i64 4, %20
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memset(i32* %21, i32 0, i32 %64)
  %66 = mul nuw i64 4, %23
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memset(i32* %24, i32 0, i32 %67)
  %69 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwowner, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %24, i64 %71
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @ObjectIdGetDatum(i32 %73)
  %75 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwowner, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %18, i64 %77
  store i32 %74, i32* %78, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwacl, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @RelationGetDescr(i32 %81)
  %83 = call i32 @heap_getattr(%struct.TYPE_9__* %79, i32 %80, i32 %82, i32* %14)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %104, label %86

86:                                               ; preds = %62
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @DatumGetAclP(i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32* @aclnewowner(i32 %88, i32 %91, i32 %92)
  store i32* %93, i32** %12, align 8
  %94 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwacl, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %24, i64 %96
  store i32 1, i32* %97, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @PointerGetDatum(i32* %98)
  %100 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwacl, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %18, i64 %102
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %86, %62
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @RelationGetDescr(i32 %106)
  %108 = call %struct.TYPE_9__* @heap_modify_tuple(%struct.TYPE_9__* %105, i32 %107, i32* %18, i32* %21, i32* %24)
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %5, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = call i32 @CatalogTupleUpdate(i32 %109, i32* %111, %struct.TYPE_9__* %112)
  %114 = load i32, i32* @ForeignDataWrapperRelationId, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @changeDependencyOnOwner(i32 %114, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %104, %56
  %121 = load i32, i32* @ForeignDataWrapperRelationId, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @InvokeObjectPostAlterHook(i32 %121, i32 %124, i32 0)
  %126 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %126)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_9__*) #2

declare dso_local i32 @superuser(...) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i32 @NameStr(i32) #2

declare dso_local i32 @errhint(i8*) #2

declare dso_local i32 @superuser_arg(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @heap_getattr(%struct.TYPE_9__*, i32, i32, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32* @aclnewowner(i32, i32, i32) #2

declare dso_local i32 @DatumGetAclP(i32) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local %struct.TYPE_9__* @heap_modify_tuple(%struct.TYPE_9__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_9__*) #2

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
