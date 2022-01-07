; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execCurrent.c_fetch_cursor_param_value.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execCurrent.c_fetch_cursor_param_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__* (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i64, i32, i32 }

@REFCURSOROID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"type of parameter %d (%s) does not match that when preparing the plan (%s)\00", align 1
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"no value found for parameter %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, i32)* @fetch_cursor_param_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fetch_cursor_param_value(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %79

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %79

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_9__* (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)*, %struct.TYPE_9__* (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)** %25, align 8
  %27 = icmp ne %struct.TYPE_9__* (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_9__* (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)*, %struct.TYPE_9__* (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.TYPE_9__* %31(%struct.TYPE_8__* %32, i32 %33, i32 0, %struct.TYPE_9__* %8)
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %7, align 8
  br label %43

35:                                               ; preds = %23
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %41
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %7, align 8
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @OidIsValid(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %43
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @REFCURSOROID, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @format_type_be(i64 %67)
  %69 = load i64, i64* @REFCURSOROID, align 8
  %70 = call i32 @format_type_be(i64 %69)
  %71 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %68, i32 %70)
  %72 = call i32 @ereport(i32 %61, i32 %71)
  br label %73

73:                                               ; preds = %60, %54
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @TextDatumGetCString(i32 %76)
  store i8* %77, i8** %3, align 8
  br label %86

78:                                               ; preds = %49, %43
  br label %79

79:                                               ; preds = %78, %17, %14, %2
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %82 = call i32 @errcode(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = call i32 @ereport(i32 %80, i32 %84)
  store i8* null, i8** %3, align 8
  br label %86

86:                                               ; preds = %79, %73
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
