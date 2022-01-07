; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_xml.c_query_to_oid_list.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_xml.c_query_to_oid_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@NIL = common dso_local global i32* null, align 8
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SPI_execute returned %s for %s\00", align 1
@SPI_processed = common dso_local global i64 0, align 8
@SPI_tuptable = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @query_to_oid_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @query_to_oid_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32*, i32** @NIL, align 8
  store i32* %8, i32** %4, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @SPI_execute(i8* %9, i32 1, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SPI_OK_SELECT, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @SPI_result_code_string(i32 %16)
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  br label %20

20:                                               ; preds = %14, %1
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %44, %20
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @SPI_processed, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SPI_tuptable, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SPI_tuptable, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @SPI_getbinval(i32 %31, i32 %34, i32 1, i32* %7)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %25
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @DatumGetObjectId(i32 %40)
  %42 = call i32* @lappend_oid(i32* %39, i32 %41)
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %38, %25
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %3, align 8
  br label %21

47:                                               ; preds = %21
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare dso_local i32 @SPI_execute(i8*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i8*) #1

declare dso_local i32 @SPI_result_code_string(i32) #1

declare dso_local i32 @SPI_getbinval(i32, i32, i32, i32*) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @DatumGetObjectId(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
