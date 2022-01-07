; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_usermapping.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_usermapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@UserMappingRelationId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"public\00", align 1
@AUTHNAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"user mapping for user \22%s\22 on server \22%s\22 does not exist\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"server \22%s\22 does not exist\00", align 1
@USERMAPPINGUSERSERVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_object_address_usermapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_object_address_usermapping(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @UserMappingRelationId, align 4
  %12 = load i32, i32* @InvalidOid, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ObjectAddressSet(i32 %14, i32 %11, i32 %12)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @linitial(i32* %16)
  %18 = call i8* @strVal(i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @lsecond(i32* %19)
  %21 = call i8* @strVal(i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @InvalidOid, align 4
  store i32 %26, i32* %6, align 4
  br label %55

27:                                               ; preds = %2
  %28 = load i32, i32* @AUTHNAME, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @CStringGetDatum(i8* %29)
  %31 = call i32 @SearchSysCache1(i32 %28, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @HeapTupleIsValid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %43)
  %45 = call i32 @ereport(i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %38, %35
  br label %104

47:                                               ; preds = %27
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @GETSTRUCT(i32 %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_10__*
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @ReleaseSysCache(i32 %53)
  br label %55

55:                                               ; preds = %47, %25
  %56 = load i8*, i8** %8, align 8
  %57 = call %struct.TYPE_11__* @GetForeignServerByName(i8* %56, i32 1)
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %9, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @ERROR, align 4
  %65 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %66 = call i32 @errcode(i32 %65)
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = call i32 @ereport(i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %63, %60
  br label %104

71:                                               ; preds = %55
  %72 = load i32, i32* @USERMAPPINGUSERSERVER, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @ObjectIdGetDatum(i32 %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ObjectIdGetDatum(i32 %77)
  %79 = call i32 @SearchSysCache2(i32 %72, i32 %74, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @HeapTupleIsValid(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %90, i8* %91)
  %93 = call i32 @ereport(i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %86, %83
  br label %104

95:                                               ; preds = %71
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @GETSTRUCT(i32 %96)
  %98 = inttoptr i64 %97 to %struct.TYPE_9__*
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @ReleaseSysCache(i32 %102)
  br label %104

104:                                              ; preds = %95, %94, %70, %46
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  ret i32 %106
}

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @linitial(i32*) #1

declare dso_local i32 @lsecond(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local %struct.TYPE_11__* @GetForeignServerByName(i8*, i32) #1

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
