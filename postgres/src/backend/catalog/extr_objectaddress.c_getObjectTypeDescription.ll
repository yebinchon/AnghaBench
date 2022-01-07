; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_getObjectTypeDescription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_getObjectTypeDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cast\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"collation\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"conversion\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"default value\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"large object\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"operator class\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"operator family\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"access method\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"operator of access method\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"function of access method\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"statistics object\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"text search parser\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"text search dictionary\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"text search template\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"text search configuration\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"database\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"tablespace\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"foreign-data wrapper\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"user mapping\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"default acl\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"event trigger\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"publication\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"publication relation\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"subscription\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"transform\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getObjectTypeDescription(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = call i32 @initStringInfo(%struct.TYPE_10__* %3)
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = call i32 @getObjectClass(%struct.TYPE_11__* %5)
  switch i32 %6, label %95 [
    i32 161, label %7
    i32 144, label %15
    i32 129, label %20
    i32 162, label %22
    i32 160, label %24
    i32 159, label %26
    i32 158, label %31
    i32 155, label %33
    i32 150, label %35
    i32 149, label %37
    i32 147, label %39
    i32 148, label %41
    i32 146, label %43
    i32 165, label %45
    i32 164, label %47
    i32 163, label %49
    i32 141, label %51
    i32 134, label %53
    i32 139, label %55
    i32 138, label %57
    i32 131, label %59
    i32 132, label %61
    i32 130, label %63
    i32 133, label %65
    i32 140, label %67
    i32 157, label %69
    i32 136, label %71
    i32 152, label %73
    i32 151, label %75
    i32 128, label %77
    i32 156, label %79
    i32 153, label %81
    i32 154, label %83
    i32 145, label %85
    i32 143, label %87
    i32 142, label %89
    i32 137, label %91
    i32 135, label %93
  ]

7:                                                ; preds = %1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @getRelationTypeDescription(%struct.TYPE_10__* %3, i32 %10, i32 %13)
  br label %95

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @getProcedureTypeDescription(%struct.TYPE_10__* %3, i32 %18)
  br label %95

20:                                               ; preds = %1
  %21 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %95

22:                                               ; preds = %1
  %23 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %95

24:                                               ; preds = %1
  %25 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %95

26:                                               ; preds = %1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @getConstraintTypeDescription(%struct.TYPE_10__* %3, i32 %29)
  br label %95

31:                                               ; preds = %1
  %32 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %95

33:                                               ; preds = %1
  %34 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %95

35:                                               ; preds = %1
  %36 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %95

37:                                               ; preds = %1
  %38 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %95

39:                                               ; preds = %1
  %40 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %95

41:                                               ; preds = %1
  %42 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %95

43:                                               ; preds = %1
  %44 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %95

45:                                               ; preds = %1
  %46 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %95

47:                                               ; preds = %1
  %48 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %95

49:                                               ; preds = %1
  %50 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %95

51:                                               ; preds = %1
  %52 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %95

53:                                               ; preds = %1
  %54 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %95

55:                                               ; preds = %1
  %56 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %95

57:                                               ; preds = %1
  %58 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  br label %95

59:                                               ; preds = %1
  %60 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  br label %95

61:                                               ; preds = %1
  %62 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  br label %95

63:                                               ; preds = %1
  %64 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  br label %95

65:                                               ; preds = %1
  %66 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  br label %95

67:                                               ; preds = %1
  %68 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  br label %95

69:                                               ; preds = %1
  %70 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  br label %95

71:                                               ; preds = %1
  %72 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  br label %95

73:                                               ; preds = %1
  %74 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  br label %95

75:                                               ; preds = %1
  %76 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  br label %95

77:                                               ; preds = %1
  %78 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  br label %95

79:                                               ; preds = %1
  %80 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  br label %95

81:                                               ; preds = %1
  %82 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  br label %95

83:                                               ; preds = %1
  %84 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0))
  br label %95

85:                                               ; preds = %1
  %86 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  br label %95

87:                                               ; preds = %1
  %88 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0))
  br label %95

89:                                               ; preds = %1
  %90 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  br label %95

91:                                               ; preds = %1
  %92 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  br label %95

93:                                               ; preds = %1
  %94 = call i32 @appendStringInfoString(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0))
  br label %95

95:                                               ; preds = %1, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %26, %24, %22, %20, %15, %7
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  ret i8* %97
}

declare dso_local i32 @initStringInfo(%struct.TYPE_10__*) #1

declare dso_local i32 @getObjectClass(%struct.TYPE_11__*) #1

declare dso_local i32 @getRelationTypeDescription(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @getProcedureTypeDescription(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @getConstraintTypeDescription(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
