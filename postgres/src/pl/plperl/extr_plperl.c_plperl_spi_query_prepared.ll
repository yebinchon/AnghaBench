; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_query_prepared.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_query_prepared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@plperl_active_interp = common dso_local global %struct.TYPE_17__* null, align 8
@HASH_FIND = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"spi_query_prepared: Invalid prepared query passed\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"spi_query_prepared: plperl query_hash value vanished\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"spi_query_prepared: expected %d argument(s), %d passed\00", align 1
@current_call_data = common dso_local global %struct.TYPE_18__* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"SPI_cursor_open() failed:%s\00", align 1
@SPI_result = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @plperl_spi_query_prepared(i8* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %13, align 8
  %18 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %19, i32* %15, align 4
  %20 = call i32 (...) @check_spi_usage_allowed()
  %21 = call i32 @BeginInternalSubTransaction(i32* null)
  %22 = load i32, i32* %14, align 4
  %23 = call i32 @MemoryContextSwitchTo(i32 %22)
  %24 = call i32 (...) @PG_TRY()
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** @plperl_active_interp, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @HASH_FIND, align 4
  %30 = call %struct.TYPE_13__* @hash_search(i32 %27, i8* %28, i32 %29, i32* null)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %11, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %32 = icmp eq %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @ERROR, align 4
  %35 = call i32 (i32, i8*, ...) @elog(i32 %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %3
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %10, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %41 = icmp eq %struct.TYPE_14__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ERROR, align 4
  %44 = call i32 (i32, i8*, ...) @elog(i32 %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* @ERROR, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i32, i8*, ...) @elog(i32 %52, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %45
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @palloc(i32 %62)
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %8, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = call i64 @palloc(i32 %68)
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %9, align 8
  br label %72

71:                                               ; preds = %58
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  br label %72

72:                                               ; preds = %71, %61
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %117, %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %120

77:                                               ; preds = %73
  %78 = load i32**, i32*** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call signext i8 @plperl_sv_to_datum(i32* %82, i32 %89, i32 -1, i32* null, i32* %95, i32 %102, i32* %16)
  %104 = load i8*, i8** %9, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 %103, i8* %107, align 1
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 110, i32 32
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 %112, i8* %116, align 1
  br label %117

117:                                              ; preds = %77
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %73

120:                                              ; preds = %73
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** @current_call_data, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call %struct.TYPE_15__* @SPI_cursor_open(i32* null, i32 %123, i8* %124, i8* %125, i32 %130)
  store %struct.TYPE_15__* %131, %struct.TYPE_15__** %13, align 8
  %132 = load i32, i32* %5, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %120
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @pfree(i8* %135)
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @pfree(i8* %137)
  br label %139

139:                                              ; preds = %134, %120
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %141 = icmp eq %struct.TYPE_15__* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i32, i32* @ERROR, align 4
  %144 = load i32, i32* @SPI_result, align 4
  %145 = call i32 @SPI_result_code_string(i32 %144)
  %146 = call i32 (i32, i8*, ...) @elog(i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %142, %139
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32* @cstr2sv(i32 %150)
  store i32* %151, i32** %12, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %153 = call i32 @PinPortal(%struct.TYPE_15__* %152)
  %154 = call i32 (...) @ReleaseCurrentSubTransaction()
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @MemoryContextSwitchTo(i32 %155)
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* @CurrentResourceOwner, align 4
  %158 = call i32 (...) @PG_CATCH()
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @MemoryContextSwitchTo(i32 %159)
  %161 = call %struct.TYPE_16__* (...) @CopyErrorData()
  store %struct.TYPE_16__* %161, %struct.TYPE_16__** %17, align 8
  %162 = call i32 (...) @FlushErrorState()
  %163 = call i32 (...) @RollbackAndReleaseCurrentSubTransaction()
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @MemoryContextSwitchTo(i32 %164)
  %166 = load i32, i32* %15, align 4
  store i32 %166, i32* @CurrentResourceOwner, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @croak_cstr(i32 %169)
  ret i32* null
}

declare dso_local i32 @check_spi_usage_allowed(...) #1

declare dso_local i32 @BeginInternalSubTransaction(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local %struct.TYPE_13__* @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local signext i8 @plperl_sv_to_datum(i32*, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @SPI_cursor_open(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @SPI_result_code_string(i32) #1

declare dso_local i32* @cstr2sv(i32) #1

declare dso_local i32 @PinPortal(%struct.TYPE_15__*) #1

declare dso_local i32 @ReleaseCurrentSubTransaction(...) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local %struct.TYPE_16__* @CopyErrorData(...) #1

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @RollbackAndReleaseCurrentSubTransaction(...) #1

declare dso_local i32 @croak_cstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
