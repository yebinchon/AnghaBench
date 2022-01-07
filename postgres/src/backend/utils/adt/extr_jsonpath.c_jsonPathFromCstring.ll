; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath.c_jsonPathFromCstring.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath.c_jsonPathFromCstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }

@JSONPATH_HDRSZ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid input syntax for type %s: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"jsonpath\00", align 1
@JSONPATH_VERSION = common dso_local global i32 0, align 4
@JSONPATH_LAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @jsonPathFromCstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonPathFromCstring(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_12__* @parsejsonpath(i8* %9, i32 %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = call i32 @initStringInfo(%struct.TYPE_11__* %8)
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 4, %13
  %15 = call i32 @enlargeStringInfo(%struct.TYPE_11__* %8, i32 %14)
  %16 = load i32, i32* @JSONPATH_HDRSZ, align 4
  %17 = call i32 @appendStringInfoSpaces(%struct.TYPE_11__* %8, i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = call i32 @ereport(i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @flattenJsonPathParseItem(%struct.TYPE_11__* %8, i32 %30, i32 0, i32 0)
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %7, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @SET_VARSIZE(%struct.TYPE_13__* %35, i32 %37)
  %39 = load i32, i32* @JSONPATH_VERSION, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %27
  %47 = load i32, i32* @JSONPATH_LAX, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %27
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = call i32 @PG_RETURN_JSONPATH_P(%struct.TYPE_13__* %53)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_12__* @parsejsonpath(i8*, i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_11__*) #1

declare dso_local i32 @enlargeStringInfo(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @appendStringInfoSpaces(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i32 @flattenJsonPathParseItem(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @PG_RETURN_JSONPATH_P(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
