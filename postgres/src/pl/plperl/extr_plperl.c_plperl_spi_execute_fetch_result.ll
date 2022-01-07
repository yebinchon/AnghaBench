; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_execute_fetch_result.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_execute_fetch_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@dTHX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"processed\00", align 1
@UV_MAX = common dso_local global i64 0, align 8
@AV_SIZE_MAX = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"query result has too many rows to fit in a Perl array\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"rows\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i64, i32)* @plperl_spi_execute_fetch_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @plperl_spi_execute_fetch_result(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @dTHX, align 4
  %12 = call i32 (...) @check_spi_usage_allowed()
  %13 = call i32* (...) @newHV()
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @SPI_result_code_string(i32 %15)
  %17 = call i32 @cstr2sv(i32 %16)
  %18 = call i32 @hv_store_string(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @UV_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @newSVnv(i32 %25)
  br label %31

27:                                               ; preds = %3
  %28 = load i64, i64* %5, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @newSVuv(i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %30, %27 ]
  %33 = call i32 @hv_store_string(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %80

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @AV_SIZE_MAX, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %39
  %50 = call i32* (...) @newAV()
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @av_extend(i32* %51, i64 %52)
  store i64 0, i64* %10, align 8
  br label %54

54:                                               ; preds = %72, %49
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32* @plperl_hash_from_tuple(i32 %64, i32 %67, i32 1)
  store i32* %68, i32** %9, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @av_push(i32* %69, i32* %70)
  br label %72

72:                                               ; preds = %58
  %73 = load i64, i64* %10, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %54

75:                                               ; preds = %54
  %76 = load i32*, i32** %7, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @newRV_noinc(i32* %77)
  %79 = call i32 @hv_store_string(i32* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %36, %31
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = call i32 @SPI_freetuptable(%struct.TYPE_4__* %81)
  %83 = load i32*, i32** %7, align 8
  ret i32* %83
}

declare dso_local i32 @check_spi_usage_allowed(...) #1

declare dso_local i32* @newHV(...) #1

declare dso_local i32 @hv_store_string(i32*, i8*, i32) #1

declare dso_local i32 @cstr2sv(i32) #1

declare dso_local i32 @SPI_result_code_string(i32) #1

declare dso_local i32 @newSVnv(i32) #1

declare dso_local i32 @newSVuv(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @newAV(...) #1

declare dso_local i32 @av_extend(i32*, i64) #1

declare dso_local i32* @plperl_hash_from_tuple(i32, i32, i32) #1

declare dso_local i32 @av_push(i32*, i32*) #1

declare dso_local i32 @newRV_noinc(i32*) #1

declare dso_local i32 @SPI_freetuptable(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
