; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_xml.c_query_to_xml_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_xml.c_query_to_xml_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"table\00", align 1
@SPI_OK_SELECT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_EXCEPTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid query\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@SPI_processed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i8*, i32)* @query_to_xml_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_to_xml_internal(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i8*, i8** %9, align 8
  %22 = call i8* @map_sql_identifier_to_xml_name(i8* %21, i32 1, i32 0)
  store i8* %22, i8** %16, align 8
  br label %24

23:                                               ; preds = %7
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %24

24:                                               ; preds = %23, %20
  %25 = call i32 (...) @makeStringInfo()
  store i32 %25, i32* %15, align 4
  %26 = call i32 (...) @SPI_connect()
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @SPI_execute(i8* %27, i32 1, i32 0)
  %29 = load i64, i64* @SPI_OK_SELECT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_DATA_EXCEPTION, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @ereport(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %24
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %15, align 4
  %42 = load i8*, i8** %16, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @xmldata_root_element_start(i32 %41, i8* %42, i8* %43, i8* %44, i32 %45)
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @appendStringInfoChar(i32 %47, i8 signext 10)
  br label %49

49:                                               ; preds = %40, %37
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %15, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @appendStringInfo(i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %52, %49
  store i64 0, i64* %17, align 8
  br label %57

57:                                               ; preds = %70, %56
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* @SPI_processed, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i64, i64* %17, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @SPI_sql_row_to_xmlelement(i64 %62, i32 %63, i8* %64, i32 %65, i32 %66, i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %61
  %71 = load i64, i64* %17, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %17, align 8
  br label %57

73:                                               ; preds = %57
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %15, align 4
  %78 = load i8*, i8** %16, align 8
  %79 = call i32 @xmldata_root_element_end(i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = call i32 (...) @SPI_finish()
  %82 = load i32, i32* %15, align 4
  ret i32 %82
}

declare dso_local i8* @map_sql_identifier_to_xml_name(i8*, i32, i32) #1

declare dso_local i32 @makeStringInfo(...) #1

declare dso_local i32 @SPI_connect(...) #1

declare dso_local i64 @SPI_execute(i8*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @xmldata_root_element_start(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #1

declare dso_local i32 @SPI_sql_row_to_xmlelement(i64, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @xmldata_root_element_end(i32, i8*) #1

declare dso_local i32 @SPI_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
