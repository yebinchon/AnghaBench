; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_RangeVarGetCreationNamespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_RangeVarGetCreationNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i64 }

@MyDatabaseId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"cross-database references are not implemented: \22%s.%s.%s\22\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pg_temp\00", align 1
@myTempNamespace = common dso_local global i32 0, align 4
@RELPERSISTENCE_TEMP = common dso_local global i64 0, align 8
@activeTempCreationPending = common dso_local global i64 0, align 8
@activeCreationNamespace = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_SCHEMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"no schema has been selected to create in\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RangeVarGetCreationNamespace(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @MyDatabaseId, align 4
  %14 = call i8* @get_database_name(i32 %13)
  %15 = call i64 @strcmp(i64 %12, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %9
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %26, i32 %29)
  %31 = call i32 @ereport(i32 %18, i32 %30)
  br label %32

32:                                               ; preds = %17, %9
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @strcmp(i64 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = call i32 @AccessTempTableNamespace(i32 0)
  %46 = load i32, i32* @myTempNamespace, align 4
  store i32 %46, i32* %2, align 4
  br label %83

47:                                               ; preds = %38
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @get_namespace_oid(i64 %50, i32 0)
  store i32 %51, i32* %4, align 4
  br label %81

52:                                               ; preds = %33
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RELPERSISTENCE_TEMP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = call i32 @AccessTempTableNamespace(i32 0)
  %60 = load i32, i32* @myTempNamespace, align 4
  store i32 %60, i32* %2, align 4
  br label %83

61:                                               ; preds = %52
  %62 = call i32 (...) @recomputeNamespacePath()
  %63 = load i64, i64* @activeTempCreationPending, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = call i32 @AccessTempTableNamespace(i32 1)
  %67 = load i32, i32* @myTempNamespace, align 4
  store i32 %67, i32* %2, align 4
  br label %83

68:                                               ; preds = %61
  %69 = load i32, i32* @activeCreationNamespace, align 4
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @OidIsValid(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_UNDEFINED_SCHEMA, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @ereport(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80, %47
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %65, %58, %44
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i8* @get_database_name(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @AccessTempTableNamespace(i32) #1

declare dso_local i32 @get_namespace_oid(i64, i32) #1

declare dso_local i32 @recomputeNamespacePath(...) #1

declare dso_local i32 @OidIsValid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
