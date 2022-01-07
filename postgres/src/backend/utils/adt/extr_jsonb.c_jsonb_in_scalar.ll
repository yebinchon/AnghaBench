; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_jsonb_in_scalar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_jsonb_in_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@jbvString = common dso_local global i32 0, align 4
@jbvNumeric = common dso_local global i32 0, align 4
@numeric_in = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@jbvBool = common dso_local global i8* null, align 8
@jbvNull = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid json token type\00", align 1
@WJB_BEGIN_ARRAY = common dso_local global i32 0, align 4
@WJB_ELEM = common dso_local global i32 0, align 4
@WJB_END_ARRAY = common dso_local global i32 0, align 4
@WJB_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unexpected parent of nested structure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @jsonb_in_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonb_in_scalar(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %7, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %65 [
    i32 131, label %15
    i32 132, label %32
    i32 130, label %50
    i32 134, label %56
    i32 133, label %62
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32, i32* @jbvString, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call i32 @checkStringLen(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  br label %68

32:                                               ; preds = %3
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load i32, i32* @jbvNumeric, align 4
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @numeric_in, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @CStringGetDatum(i8* %40)
  %42 = load i32, i32* @InvalidOid, align 4
  %43 = call i32 @ObjectIdGetDatum(i32 %42)
  %44 = call i32 @Int32GetDatum(i32 -1)
  %45 = call i32 @DirectFunctionCall3(i32 %39, i32 %41, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @DatumGetNumeric(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %68

50:                                               ; preds = %3
  %51 = load i8*, i8** @jbvBool, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %68

56:                                               ; preds = %3
  %57 = load i8*, i8** @jbvBool, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %68

62:                                               ; preds = %3
  %63 = load i32, i32* @jbvNull, align 4
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  br label %68

65:                                               ; preds = %3
  %66 = load i32, i32* @ERROR, align 4
  %67 = call i32 @elog(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %62, %56, %50, %32, %15
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = icmp eq %struct.TYPE_13__* %71, null
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 129, i32* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* @WJB_BEGIN_ARRAY, align 4
  %84 = call i8* @pushJsonbValue(%struct.TYPE_13__** %82, i32 %83, %struct.TYPE_11__* %10)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* @WJB_ELEM, align 4
  %90 = call i8* @pushJsonbValue(%struct.TYPE_13__** %88, i32 %89, %struct.TYPE_11__* %8)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* @WJB_END_ARRAY, align 4
  %96 = call i8* @pushJsonbValue(%struct.TYPE_13__** %94, i32 %95, %struct.TYPE_11__* null)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  br label %125

99:                                               ; preds = %68
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %11, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %121 [
    i32 129, label %107
    i32 128, label %114
  ]

107:                                              ; preds = %99
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* @WJB_ELEM, align 4
  %111 = call i8* @pushJsonbValue(%struct.TYPE_13__** %109, i32 %110, %struct.TYPE_11__* %8)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %124

114:                                              ; preds = %99
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* @WJB_VALUE, align 4
  %118 = call i8* @pushJsonbValue(%struct.TYPE_13__** %116, i32 %117, %struct.TYPE_11__* %8)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  br label %124

121:                                              ; preds = %99
  %122 = load i32, i32* @ERROR, align 4
  %123 = call i32 @elog(i32 %122, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %114, %107
  br label %125

125:                                              ; preds = %124, %73
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @checkStringLen(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DirectFunctionCall3(i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @DatumGetNumeric(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i8* @pushJsonbValue(%struct.TYPE_13__**, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
