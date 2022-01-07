; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterTypeOwner.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterTypeOwner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32 }

@TypeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"type \22%s\22 does not exist\00", align 1
@OBJECT_DOMAIN = common dso_local global i64 0, align 8
@TYPTYPE_DOMAIN = common dso_local global i64 0, align 8
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s is not a domain\00", align 1
@TYPTYPE_COMPOSITE = common dso_local global i64 0, align 8
@RELKIND_COMPOSITE_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s is a table's row type\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Use ALTER TABLE instead.\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot alter array type %s\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"You can alter type %s, which will alter the array type as well.\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_SCHEMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterTypeOwner(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32, i32* @TypeRelationId, align 4
  %16 = load i32, i32* @RowExclusiveLock, align 4
  %17 = call i32 @table_open(i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @makeTypeNameFromNameList(i32* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @LookupTypeName(i32* null, i32* %20, i32* null, i32 0)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @TypeNameToString(i32* %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 @ereport(i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %24, %3
  %33 = load i32*, i32** %10, align 8
  %34 = call i64 @typeTypeId(i32* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32* @heap_copytuple(i32* %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @ReleaseSysCache(i32* %37)
  %39 = load i32*, i32** %11, align 8
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i64 @GETSTRUCT(i32* %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** %12, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @OBJECT_DOMAIN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %32
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @format_type_be(i64 %56)
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = call i32 @ereport(i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %52, %46, %32
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TYPTYPE_COMPOSITE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @get_rel_relkind(i32 %69)
  %71 = load i64, i64* @RELKIND_COMPOSITE_TYPE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @format_type_be(i64 %77)
  %79 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %81 = call i32 @ereport(i32 %74, i32 %80)
  br label %82

82:                                               ; preds = %73, %66, %60
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @OidIsValid(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %82
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @get_array_type(i64 %91)
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %98 = call i32 @errcode(i32 %97)
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @format_type_be(i64 %99)
  %101 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @format_type_be(i64 %104)
  %106 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = call i32 @ereport(i32 %96, i32 %106)
  br label %108

108:                                              ; preds = %95, %88, %82
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %5, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %156

114:                                              ; preds = %108
  %115 = call i32 (...) @superuser()
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %152, label %117

117:                                              ; preds = %114
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (...) @GetUserId()
  %122 = call i32 @pg_type_ownercheck(i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @aclcheck_error_type(i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %117
  %131 = call i32 (...) @GetUserId()
  %132 = load i64, i64* %5, align 8
  %133 = call i32 @check_is_member_of_role(i32 %131, i64 %132)
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load i64, i64* %5, align 8
  %138 = load i32, i32* @ACL_CREATE, align 4
  %139 = call i64 @pg_namespace_aclcheck(i32 %136, i64 %137, i32 %138)
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* @ACLCHECK_OK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %130
  %144 = load i64, i64* %13, align 8
  %145 = load i32, i32* @OBJECT_SCHEMA, align 4
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @get_namespace_name(i32 %148)
  %150 = call i32 @aclcheck_error(i64 %144, i32 %145, i32 %149)
  br label %151

151:                                              ; preds = %143, %130
  br label %152

152:                                              ; preds = %151, %114
  %153 = load i64, i64* %8, align 8
  %154 = load i64, i64* %5, align 8
  %155 = call i32 @AlterTypeOwner_oid(i64 %153, i64 %154, i32 1)
  br label %156

156:                                              ; preds = %152, %108
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @TypeRelationId, align 4
  %159 = load i64, i64* %8, align 8
  %160 = call i32 @ObjectAddressSet(i32 %157, i32 %158, i64 %159)
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @RowExclusiveLock, align 4
  %163 = call i32 @table_close(i32 %161, i32 %162)
  %164 = load i32, i32* %14, align 4
  ret i32 %164
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32* @makeTypeNameFromNameList(i32*) #1

declare dso_local i32* @LookupTypeName(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @TypeNameToString(i32*) #1

declare dso_local i64 @typeTypeId(i32*) #1

declare dso_local i32* @heap_copytuple(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i64 @get_rel_relkind(i32) #1

declare dso_local i32 @errhint(i8*, ...) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @get_array_type(i64) #1

declare dso_local i32 @superuser(...) #1

declare dso_local i32 @pg_type_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error_type(i32, i32) #1

declare dso_local i32 @check_is_member_of_role(i32, i64) #1

declare dso_local i64 @pg_namespace_aclcheck(i32, i64, i32) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @AlterTypeOwner_oid(i64, i64, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i64) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
