; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regproc.c_format_operator_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regproc.c_format_operator_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i8* }

@OPEROID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"NONE,\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"NONE)\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @format_operator_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_operator_internal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @OPEROID, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = call i32 @SearchSysCache1(i32 %11, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @HeapTupleIsValid(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %100

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @GETSTRUCT(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @NameStr(i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = call i32 (...) @IsBootstrapProcessingMode()
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = call i32 @initStringInfo(%struct.TYPE_6__* %10)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @OperatorIsVisible(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35, %18
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @get_namespace_name(i32 %42)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i8* @quote_identifier(i8* %44)
  %46 = call i32 @appendStringInfo(%struct.TYPE_6__* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %39, %35
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @appendStringInfo(%struct.TYPE_6__* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @format_type_be_qualified(i64 %60)
  br label %67

62:                                               ; preds = %54
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i8* @format_type_be(i64 %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i8* [ %61, %57 ], [ %66, %62 ]
  %69 = call i32 @appendStringInfo(%struct.TYPE_6__* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  br label %72

70:                                               ; preds = %47
  %71 = call i32 @appendStringInfoString(%struct.TYPE_6__* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @format_type_be_qualified(i64 %83)
  br label %90

85:                                               ; preds = %77
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @format_type_be(i64 %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i8* [ %84, %80 ], [ %89, %85 ]
  %92 = call i32 @appendStringInfo(%struct.TYPE_6__* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %91)
  br label %95

93:                                               ; preds = %72
  %94 = call i32 @appendStringInfoString(%struct.TYPE_6__* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %90
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @ReleaseSysCache(i32 %98)
  br label %108

100:                                              ; preds = %2
  %101 = load i32, i32* @NAMEDATALEN, align 4
  %102 = call i64 @palloc(i32 %101)
  %103 = inttoptr i64 %102 to i8*
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* @NAMEDATALEN, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @snprintf(i8* %104, i32 %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %100, %95
  %109 = load i8*, i8** %5, align 8
  ret i8* %109
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @OperatorIsVisible(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i8* @quote_identifier(i8*) #1

declare dso_local i8* @format_type_be_qualified(i64) #1

declare dso_local i8* @format_type_be(i64) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
