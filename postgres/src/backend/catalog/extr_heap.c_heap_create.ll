; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_heap_create.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_heap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"permission denied to create \22%s.%s\22\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"System catalog modifications are currently disallowed.\00", align 1
@InvalidTransactionId = common dso_local global i32 0, align 4
@InvalidMultiXactId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@MyDatabaseTableSpace = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @heap_create(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6, i8 signext %7, i8 signext %8, i32 %9, i32 %10, i32 %11, i32* %12, i32* %13) #0 {
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %15, align 8
  store i64 %1, i64* %16, align 8
  store i64 %2, i64* %17, align 8
  store i64 %3, i64* %18, align 8
  store i64 %4, i64* %19, align 8
  store i64 %5, i64* %20, align 8
  store i32 %6, i32* %21, align 4
  store i8 %7, i8* %22, align 1
  store i8 %8, i8* %23, align 1
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32* %12, i32** %27, align 8
  store i32* %13, i32** %28, align 8
  %31 = load i64, i64* %18, align 8
  %32 = call i32 @OidIsValid(i64 %31)
  %33 = call i32 @Assert(i32 %32)
  %34 = load i32, i32* %26, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %14
  %37 = load i64, i64* %16, align 8
  %38 = call i64 @IsCatalogNamespace(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8, i8* %22, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 135
  br i1 %43, label %48, label %44

44:                                               ; preds = %40, %36
  %45 = load i64, i64* %16, align 8
  %46 = call i64 @IsToastNamespace(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %44, %40
  %49 = call i64 (...) @IsNormalProcessingMode()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = load i64, i64* %16, align 8
  %56 = call i32 @get_namespace_name(i64 %55)
  %57 = load i8*, i8** %15, align 8
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %56, i8* %57)
  %59 = call i32 @errdetail(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @ereport(i32 %52, i32 %59)
  br label %61

61:                                               ; preds = %51, %48, %44, %14
  %62 = load i32, i32* @InvalidTransactionId, align 4
  %63 = load i32*, i32** %27, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @InvalidMultiXactId, align 4
  %65 = load i32*, i32** %28, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i8, i8* %22, align 1
  %67 = sext i8 %66 to i32
  switch i32 %67, label %72 [
    i32 128, label %68
    i32 137, label %68
    i32 136, label %68
    i32 130, label %70
  ]

68:                                               ; preds = %61, %61, %61
  %69 = load i64, i64* @InvalidOid, align 8
  store i64 %69, i64* %17, align 8
  br label %73

70:                                               ; preds = %61
  %71 = load i64, i64* @InvalidOid, align 8
  store i64 %71, i64* %17, align 8
  br label %73

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %70, %68
  %74 = load i8, i8* %22, align 1
  %75 = call i32 @RELKIND_HAS_STORAGE(i8 signext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i64, i64* %19, align 8
  %79 = call i32 @OidIsValid(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %73
  store i32 0, i32* %29, align 4
  br label %84

82:                                               ; preds = %77
  store i32 1, i32* %29, align 4
  %83 = load i64, i64* %18, align 8
  store i64 %83, i64* %19, align 8
  br label %84

84:                                               ; preds = %82, %81
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* @MyDatabaseTableSpace, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i64, i64* @InvalidOid, align 8
  store i64 %89, i64* %17, align 8
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i8*, i8** %15, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i32, i32* %21, align 4
  %94 = load i64, i64* %18, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %17, align 8
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %25, align 4
  %100 = load i8, i8* %23, align 1
  %101 = load i8, i8* %22, align 1
  %102 = call %struct.TYPE_8__* @RelationBuildLocalRelation(i8* %91, i64 %92, i32 %93, i64 %94, i64 %95, i64 %96, i64 %97, i32 %98, i32 %99, i8 signext %100, i8 signext %101)
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %30, align 8
  %103 = load i32, i32* %29, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %90
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %107 = call i32 @RelationOpenSmgr(%struct.TYPE_8__* %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %129 [
    i32 128, label %113
    i32 137, label %113
    i32 136, label %113
    i32 132, label %113
    i32 133, label %113
    i32 135, label %115
    i32 130, label %115
    i32 131, label %121
    i32 129, label %121
    i32 134, label %121
  ]

113:                                              ; preds = %105, %105, %105, %105, %105
  %114 = call i32 @Assert(i32 0)
  br label %129

115:                                              ; preds = %105, %105
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i8, i8* %23, align 1
  %120 = call i32 @RelationCreateStorage(i32 %118, i8 signext %119)
  br label %129

121:                                              ; preds = %105, %105, %105
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i8, i8* %23, align 1
  %126 = load i32*, i32** %27, align 8
  %127 = load i32*, i32** %28, align 8
  %128 = call i32 @table_relation_set_new_filenode(%struct.TYPE_8__* %122, i32* %124, i8 signext %125, i32* %126, i32* %127)
  br label %129

129:                                              ; preds = %105, %121, %115, %113
  br label %130

130:                                              ; preds = %129, %90
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  ret %struct.TYPE_8__* %131
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i64 @IsCatalogNamespace(i64) #1

declare dso_local i64 @IsToastNamespace(i64) #1

declare dso_local i64 @IsNormalProcessingMode(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*) #1

declare dso_local i32 @get_namespace_name(i64) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @RELKIND_HAS_STORAGE(i8 signext) #1

declare dso_local %struct.TYPE_8__* @RelationBuildLocalRelation(i8*, i64, i32, i64, i64, i64, i64, i32, i32, i8 signext, i8 signext) #1

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_8__*) #1

declare dso_local i32 @RelationCreateStorage(i32, i8 signext) #1

declare dso_local i32 @table_relation_set_new_filenode(%struct.TYPE_8__*, i32*, i8 signext, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
