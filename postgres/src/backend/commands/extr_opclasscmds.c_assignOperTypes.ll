; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_opclasscmds.c_assignOperTypes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_opclasscmds.c_assignOperTypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8, i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@OPEROID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for operator %u\00", align 1
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"index operators must be binary\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"access method \22%s\22 does not support ordering operators\00", align 1
@BOOLOID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"index search operators must return boolean\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @assignOperTypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assignOperTypes(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @OPEROID, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ObjectIdGetDatum(i32 %13)
  %15 = call i32 @SearchSysCache1(i32 %10, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @HeapTupleIsValid(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ERROR, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @elog(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @GETSTRUCT(i32 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %8, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 8
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 98
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @ereport(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %25
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @OidIsValid(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.TYPE_7__* @GetIndexAmRoutineByAmId(i32 %47, i32 0)
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %9, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @get_am_name(i32 %57)
  %59 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = call i32 @ereport(i32 %54, i32 %59)
  br label %61

61:                                               ; preds = %53, %46
  br label %75

62:                                               ; preds = %40
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BOOLOID, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %73 = call i32 @ereport(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %62
  br label %75

75:                                               ; preds = %74, %61
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @OidIsValid(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %75
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @OidIsValid(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %87
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @ReleaseSysCache(i32 %100)
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local %struct.TYPE_7__* @GetIndexAmRoutineByAmId(i32, i32) #1

declare dso_local i32 @get_am_name(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
