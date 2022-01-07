; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_vtabBestIndex.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_vtabBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)* }
%struct.TYPE_19__ = type { %struct.TYPE_24__* }

@.str = private unnamed_addr constant [19 x i8] c"xBestIndex for %s\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"table %s: xBestIndex returned an invalid plan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_25__*)* @vtabBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtabBestIndex(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %6, align 8
  %10 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %14 = call %struct.TYPE_19__* @sqlite3GetVTable(%struct.TYPE_20__* %12, %struct.TYPE_26__* %13)
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %7, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @WHERETRACE(i8* %20)
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %23 = call i32 @TRACE_IDX_INPUTS(%struct.TYPE_25__* %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)** %27, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %31 = call i32 %28(%struct.TYPE_24__* %29, %struct.TYPE_25__* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %33 = call i32 @TRACE_IDX_OUTPUTS(%struct.TYPE_25__* %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @SQLITE_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @SQLITE_NOMEM, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %63

46:                                               ; preds = %37
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @sqlite3ErrStr(i32 %53)
  %55 = call i32 @sqlite3ErrorMsg(%struct.TYPE_27__* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  br label %62

56:                                               ; preds = %46
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @sqlite3ErrorMsg(%struct.TYPE_27__* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %56, %51
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @sqlite3_free(i64 %67)
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %104, %64
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %71
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %77
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @sqlite3ErrorMsg(%struct.TYPE_27__* %98, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %97, %87, %77
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %71

107:                                              ; preds = %71
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  ret i32 %110
}

declare dso_local %struct.TYPE_19__* @sqlite3GetVTable(%struct.TYPE_20__*, %struct.TYPE_26__*) #1

declare dso_local i32 @WHERETRACE(i8*) #1

declare dso_local i32 @TRACE_IDX_INPUTS(%struct.TYPE_25__*) #1

declare dso_local i32 @TRACE_IDX_OUTPUTS(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_27__*, i8*, i64) #1

declare dso_local i64 @sqlite3ErrStr(i32) #1

declare dso_local i32 @sqlite3_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
