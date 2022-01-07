; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_iterate_jsonb_values.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_iterate_jsonb_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }

@WJB_DONE = common dso_local global i64 0, align 8
@WJB_KEY = common dso_local global i64 0, align 8
@jtiKey = common dso_local global i32 0, align 4
@WJB_VALUE = common dso_local global i64 0, align 8
@WJB_ELEM = common dso_local global i64 0, align 8
@jtiString = common dso_local global i32 0, align 4
@jtiNumeric = common dso_local global i32 0, align 4
@numeric_out = common dso_local global i32 0, align 4
@jtiBool = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iterate_jsonb_values(%struct.TYPE_10__* %0, i32 %1, i8* %2, i32 (i8*, i8*, i32)* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i8*, i32)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 (i8*, i8*, i32)* %3, i32 (i8*, i8*, i32)** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = call i32* @JsonbIteratorInit(i32* %14)
  store i32* %15, i32** %9, align 8
  br label %16

16:                                               ; preds = %116, %50, %41, %4
  %17 = call i64 @JsonbIteratorNext(i32** %9, %struct.TYPE_9__* %10, i32 0)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* @WJB_DONE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %117

20:                                               ; preds = %16
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @WJB_KEY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @jtiKey, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %8, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %30(i8* %31, i8* %35, i32 %39)
  br label %41

41:                                               ; preds = %29, %24
  br label %16

42:                                               ; preds = %20
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @WJB_VALUE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @WJB_ELEM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %16

51:                                               ; preds = %46, %42
  br label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %115 [
    i32 128, label %55
    i32 129, label %73
    i32 130, label %95
  ]

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @jtiString, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %8, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %61(i8* %62, i8* %66, i32 %70)
  br label %72

72:                                               ; preds = %60, %55
  br label %116

73:                                               ; preds = %52
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @jtiNumeric, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = load i32, i32* @numeric_out, align 4
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @NumericGetDatum(i32 %82)
  %84 = call i32 @DirectFunctionCall1(i32 %79, i32 %83)
  %85 = call i8* @DatumGetCString(i32 %84)
  store i8* %85, i8** %12, align 8
  %86 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %8, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = call i32 %86(i8* %87, i8* %88, i32 %90)
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 @pfree(i8* %92)
  br label %94

94:                                               ; preds = %78, %73
  br label %116

95:                                               ; preds = %52
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @jtiBool, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %8, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 %106(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %113

109:                                              ; preds = %100
  %110 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %8, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 %110(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %95
  br label %116

115:                                              ; preds = %52
  br label %116

116:                                              ; preds = %115, %114, %94, %72
  br label %16

117:                                              ; preds = %16
  ret void
}

declare dso_local i32* @JsonbIteratorInit(i32*) #1

declare dso_local i64 @JsonbIteratorNext(i32**, %struct.TYPE_9__*, i32) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @NumericGetDatum(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
