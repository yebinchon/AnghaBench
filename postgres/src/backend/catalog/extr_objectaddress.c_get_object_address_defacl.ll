; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_defacl.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_defacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@DefaultAclRelationId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"tables\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sequences\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"schemas\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"unrecognized default ACL object type \22%c\22\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Valid object types are \22%c\22, \22%c\22, \22%c\22, \22%c\22, \22%c\22.\00", align 1
@AUTHNAME = common dso_local global i32 0, align 4
@DEFACLROLENSPOBJ = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [62 x i8] c"default ACL for user \22%s\22 in schema \22%s\22 on %s does not exist\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"default ACL for user \22%s\22 on %s does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_object_address_defacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_object_address_defacl(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @DefaultAclRelationId, align 4
  %14 = load i64, i64* @InvalidOid, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ObjectAddressSet(i32 %16, i32 %13, i64 %14)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @lsecond(i32* %18)
  %20 = call i8* @strVal(i32 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @list_length(i32* %21)
  %23 = icmp sge i32 %22, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @lthird(i32* %25)
  %27 = call i8* @strVal(i32 %26)
  store i8* %27, i8** %10, align 8
  br label %29

28:                                               ; preds = %2
  store i8* null, i8** %10, align 8
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @linitial(i32* %30)
  %32 = call i8* @strVal(i32 %31)
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %11, align 1
  %35 = load i8, i8* %11, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %42 [
    i32 130, label %37
    i32 129, label %38
    i32 132, label %39
    i32 128, label %40
    i32 131, label %41
  ]

37:                                               ; preds = %29
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %51

38:                                               ; preds = %29
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %51

39:                                               ; preds = %29
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %51

40:                                               ; preds = %29
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %51

41:                                               ; preds = %29
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %51

42:                                               ; preds = %29
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load i8, i8* %11, align 1
  %47 = sext i8 %46 to i32
  %48 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = call i32 @errhint(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 130, i32 129, i32 132, i32 128, i32 131)
  %50 = call i32 @ereport(i32 %43, i32 %49)
  br label %51

51:                                               ; preds = %42, %41, %40, %39, %38, %37
  %52 = load i32, i32* @AUTHNAME, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @CStringGetDatum(i8* %53)
  %55 = call i32 @SearchSysCache1(i32 %52, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @HeapTupleIsValid(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %102

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @GETSTRUCT(i32 %61)
  %63 = inttoptr i64 %62 to %struct.TYPE_8__*
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @ReleaseSysCache(i32 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %60
  %71 = load i8*, i8** %10, align 8
  %72 = call i64 @get_namespace_oid(i8* %71, i32 1)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @InvalidOid, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %102

77:                                               ; preds = %70
  br label %80

78:                                               ; preds = %60
  %79 = load i64, i64* @InvalidOid, align 8
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %78, %77
  %81 = load i32, i32* @DEFACLROLENSPOBJ, align 4
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @ObjectIdGetDatum(i64 %82)
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @ObjectIdGetDatum(i64 %84)
  %86 = load i8, i8* %11, align 1
  %87 = call i32 @CharGetDatum(i8 signext %86)
  %88 = call i32 @SearchSysCache3(i32 %81, i32 %83, i32 %85, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @HeapTupleIsValid(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %80
  br label %102

93:                                               ; preds = %80
  %94 = load i32, i32* %6, align 4
  %95 = call i64 @GETSTRUCT(i32 %94)
  %96 = inttoptr i64 %95 to %struct.TYPE_7__*
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @ReleaseSysCache(i32 %100)
  br label %127

102:                                              ; preds = %92, %76, %59
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %126, label %105

105:                                              ; preds = %102
  %106 = load i8*, i8** %10, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i32, i32* @ERROR, align 4
  %110 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %111 = call i32 @errcode(i32 %110)
  %112 = load i8*, i8** %9, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i8* %112, i8* %113, i8* %114)
  %116 = call i32 @ereport(i32 %109, i32 %115)
  br label %125

117:                                              ; preds = %105
  %118 = load i32, i32* @ERROR, align 4
  %119 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %120 = call i32 @errcode(i32 %119)
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i8* %121, i8* %122)
  %124 = call i32 @ereport(i32 %118, i32 %123)
  br label %125

125:                                              ; preds = %117, %108
  br label %126

126:                                              ; preds = %125, %102
  br label %127

127:                                              ; preds = %126, %93
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  ret i32 %129
}

declare dso_local i32 @ObjectAddressSet(i32, i32, i64) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @lsecond(i32*) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @lthird(i32*) #1

declare dso_local i32 @linitial(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @get_namespace_oid(i8*, i32) #1

declare dso_local i32 @SearchSysCache3(i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @CharGetDatum(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
