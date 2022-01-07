; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_compute_return_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_compute_return_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@SQLlanguageId = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_FUNCTION_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"SQL function cannot return shell type %s\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"return type %s is only a shell\00", align 1
@INTERNALlanguageId = common dso_local global i64 0, align 8
@ClanguageId = common dso_local global i64 0, align 8
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"type \22%s\22 does not exist\00", align 1
@NIL = common dso_local global i64 0, align 8
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"type modifier cannot be specified for shell type \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"type \22%s\22 is not yet defined\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Creating a shell type definition.\00", align 1
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_SCHEMA = common dso_local global i32 0, align 4
@ACL_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i64*, i32*)* @compute_return_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_return_type(%struct.TYPE_8__* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = call i64 @LookupTypeName(i32* null, %struct.TYPE_8__* %18, i32* null, i32 0)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %4
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @GETSTRUCT(i64 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_10__*
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @SQLlanguageId, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = call i8* @TypeNameToString(%struct.TYPE_8__* %37)
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = call i32 @ereport(i32 %34, i32 %39)
  br label %49

41:                                               ; preds = %29
  %42 = load i32, i32* @NOTICE, align 4
  %43 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = call i8* @TypeNameToString(%struct.TYPE_8__* %45)
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = call i32 @ereport(i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %41, %33
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @typeTypeId(i64 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @ReleaseSysCache(i64 %53)
  br label %123

55:                                               ; preds = %4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = call i8* @TypeNameToString(%struct.TYPE_8__* %56)
  store i8* %57, i8** %12, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @INTERNALlanguageId, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @ClanguageId, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = call i32 @ereport(i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %65, %61, %55
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NIL, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i32, i32* @ERROR, align 4
  %80 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %81 = call i32 @errcode(i32 %80)
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = call i32 @ereport(i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %78, %72
  %86 = load i32, i32* @NOTICE, align 4
  %87 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = call i32 @errdetail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %92 = call i32 @ereport(i32 %86, i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @QualifiedNameGetCreationNamespace(i32 %95, i8** %15)
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i32 (...) @GetUserId()
  %99 = load i32, i32* @ACL_CREATE, align 4
  %100 = call i64 @pg_namespace_aclcheck(i64 %97, i32 %98, i32 %99)
  store i64 %100, i64* %14, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* @ACLCHECK_OK, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %85
  %105 = load i64, i64* %14, align 8
  %106 = load i32, i32* @OBJECT_SCHEMA, align 4
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @get_namespace_name(i64 %107)
  %109 = call i32 @aclcheck_error(i64 %105, i32 %106, i32 %108)
  br label %110

110:                                              ; preds = %104, %85
  %111 = load i8*, i8** %15, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i32 (...) @GetUserId()
  %114 = call i64 @TypeShellMake(i8* %111, i64 %112, i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 %114, i64* %115, align 8
  %116 = bitcast %struct.TYPE_9__* %16 to i8*
  %117 = bitcast %struct.TYPE_9__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 8, i1 false)
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %9, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @OidIsValid(i64 %120)
  %122 = call i32 @Assert(i32 %121)
  br label %123

123:                                              ; preds = %110, %50
  %124 = load i64, i64* %9, align 8
  %125 = call i32 (...) @GetUserId()
  %126 = load i32, i32* @ACL_USAGE, align 4
  %127 = call i64 @pg_type_aclcheck(i64 %124, i32 %125, i32 %126)
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* @ACLCHECK_OK, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @aclcheck_error_type(i64 %132, i64 %133)
  br label %135

135:                                              ; preds = %131, %123
  %136 = load i64, i64* %9, align 8
  %137 = load i64*, i64** %7, align 8
  store i64 %136, i64* %137, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %8, align 8
  store i32 %140, i32* %141, align 4
  ret void
}

declare dso_local i64 @LookupTypeName(i32*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i64 @GETSTRUCT(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i8* @TypeNameToString(%struct.TYPE_8__*) #1

declare dso_local i64 @typeTypeId(i64) #1

declare dso_local i32 @ReleaseSysCache(i64) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i64 @QualifiedNameGetCreationNamespace(i32, i8**) #1

declare dso_local i64 @pg_namespace_aclcheck(i64, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @get_namespace_name(i64) #1

declare dso_local i64 @TypeShellMake(i8*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i64 @pg_type_aclcheck(i64, i32, i32) #1

declare dso_local i32 @aclcheck_error_type(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
