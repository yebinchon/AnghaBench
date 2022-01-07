; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regproc.c_format_procedure_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regproc.c_format_procedure_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i8* }

@PROCOID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @format_procedure_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_procedure_internal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @PROCOID, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ObjectIdGetDatum(i32 %15)
  %17 = call i32 @SearchSysCache1(i32 %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @HeapTupleIsValid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @GETSTRUCT(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %7, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @NameStr(i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = call i32 (...) @IsBootstrapProcessingMode()
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = call i32 @initStringInfo(%struct.TYPE_9__* %12)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @FunctionIsVisible(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i8* null, i8** %11, align 8
  br label %51

46:                                               ; preds = %41, %21
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @get_namespace_name(i32 %49)
  store i8* %50, i8** %11, align 8
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @quote_qualified_identifier(i8* %52, i8* %53)
  %55 = call i32 @appendStringInfo(%struct.TYPE_9__* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %85, %51
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = call i32 @appendStringInfoChar(%struct.TYPE_9__* %12, i8 signext 44)
  br label %73

73:                                               ; preds = %71, %60
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @format_type_be_qualified(i32 %77)
  br label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @format_type_be(i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i32 [ %78, %76 ], [ %81, %79 ]
  %84 = call i32 @appendStringInfoString(%struct.TYPE_9__* %12, i32 %83)
  br label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %56

88:                                               ; preds = %56
  %89 = call i32 @appendStringInfoChar(%struct.TYPE_9__* %12, i8 signext 41)
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @ReleaseSysCache(i32 %92)
  br label %102

94:                                               ; preds = %2
  %95 = load i32, i32* @NAMEDATALEN, align 4
  %96 = call i64 @palloc(i32 %95)
  %97 = inttoptr i64 %96 to i8*
  store i8* %97, i8** %5, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* @NAMEDATALEN, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @snprintf(i8* %98, i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %94, %88
  %103 = load i8*, i8** %5, align 8
  ret i8* %103
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_9__*) #1

declare dso_local i64 @FunctionIsVisible(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @quote_qualified_identifier(i8*, i8*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @format_type_be_qualified(i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
