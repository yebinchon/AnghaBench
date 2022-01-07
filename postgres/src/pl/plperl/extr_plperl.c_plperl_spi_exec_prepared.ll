; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_exec_prepared.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_exec_prepared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@dTHX = common dso_local global i32 0, align 4
@plperl_active_interp = common dso_local global %struct.TYPE_13__* null, align 8
@HASH_FIND = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"spi_exec_prepared: Invalid prepared query passed\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"spi_exec_prepared: plperl query_hash value vanished\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"spi_exec_prepared: expected %d argument(s), %d passed\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@current_call_data = common dso_local global %struct.TYPE_14__* null, align 8
@SPI_tuptable = common dso_local global i32 0, align 4
@SPI_processed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @plperl_spi_exec_prepared(i8* %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %22 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %23, i32* %19, align 4
  %24 = call i32 (...) @check_spi_usage_allowed()
  %25 = call i32 @BeginInternalSubTransaction(i32* null)
  %26 = load i32, i32* %18, align 4
  %27 = call i32 @MemoryContextSwitchTo(i32 %26)
  %28 = call i32 (...) @PG_TRY()
  %29 = load i32, i32* @dTHX, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** @plperl_active_interp, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* @HASH_FIND, align 4
  %35 = call %struct.TYPE_10__* @hash_search(i32 %32, i8* %33, i32 %34, i32* null)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %17, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %37 = icmp eq %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %4
  %39 = load i32, i32* @ERROR, align 4
  %40 = call i32 (i32, i8*, ...) @elog(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %16, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %46 = icmp eq %struct.TYPE_11__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ERROR, align 4
  %49 = call i32 (i32, i8*, ...) @elog(i32 %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32, i32* @ERROR, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32, i8*, ...) @elog(i32 %57, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %50
  store i32 0, i32* %12, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = call i32** @hv_fetch_string(i32* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32** %68, i32*** %10, align 8
  %69 = load i32**, i32*** %10, align 8
  %70 = icmp ne i32** %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load i32**, i32*** %10, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i32**, i32*** %10, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @SvIOK(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32**, i32*** %10, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @SvIV(i32* %82)
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %80, %75, %71, %66
  br label %85

85:                                               ; preds = %84, %63
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @palloc(i32 %89)
  %91 = inttoptr i64 %90 to i8*
  store i8* %91, i8** %14, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = call i64 @palloc(i32 %95)
  %97 = inttoptr i64 %96 to i8*
  store i8* %97, i8** %15, align 8
  br label %99

98:                                               ; preds = %85
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  br label %99

99:                                               ; preds = %98, %88
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %144, %99
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %147

104:                                              ; preds = %100
  %105 = load i32**, i32*** %8, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call signext i8 @plperl_sv_to_datum(i32* %109, i32 %116, i32 -1, i32* null, i32* %122, i32 %129, i32* %20)
  %131 = load i8*, i8** %15, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 %130, i8* %134, align 1
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 110, i32 32
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %14, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  store i8 %139, i8* %143, align 1
  br label %144

144:                                              ; preds = %104
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %100

147:                                              ; preds = %100
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i8*, i8** %15, align 8
  %152 = load i8*, i8** %14, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current_call_data, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @SPI_execute_plan(i32 %150, i8* %151, i8* %152, i32 %157, i32 %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* @SPI_tuptable, align 4
  %161 = load i32, i32* @SPI_processed, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32* @plperl_spi_execute_fetch_result(i32 %160, i32 %161, i32 %162)
  store i32* %163, i32** %9, align 8
  %164 = load i32, i32* %7, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %147
  %167 = load i8*, i8** %15, align 8
  %168 = call i32 @pfree(i8* %167)
  %169 = load i8*, i8** %14, align 8
  %170 = call i32 @pfree(i8* %169)
  br label %171

171:                                              ; preds = %166, %147
  %172 = call i32 (...) @ReleaseCurrentSubTransaction()
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @MemoryContextSwitchTo(i32 %173)
  %175 = load i32, i32* %19, align 4
  store i32 %175, i32* @CurrentResourceOwner, align 4
  %176 = call i32 (...) @PG_CATCH()
  %177 = load i32, i32* %18, align 4
  %178 = call i32 @MemoryContextSwitchTo(i32 %177)
  %179 = call %struct.TYPE_12__* (...) @CopyErrorData()
  store %struct.TYPE_12__* %179, %struct.TYPE_12__** %21, align 8
  %180 = call i32 (...) @FlushErrorState()
  %181 = call i32 (...) @RollbackAndReleaseCurrentSubTransaction()
  %182 = load i32, i32* %18, align 4
  %183 = call i32 @MemoryContextSwitchTo(i32 %182)
  %184 = load i32, i32* %19, align 4
  store i32 %184, i32* @CurrentResourceOwner, align 4
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @croak_cstr(i32 %187)
  ret i32* null
}

declare dso_local i32 @check_spi_usage_allowed(...) #1

declare dso_local i32 @BeginInternalSubTransaction(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local %struct.TYPE_10__* @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32** @hv_fetch_string(i32*, i8*) #1

declare dso_local i64 @SvIOK(i32*) #1

declare dso_local i32 @SvIV(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local signext i8 @plperl_sv_to_datum(i32*, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @SPI_execute_plan(i32, i8*, i8*, i32, i32) #1

declare dso_local i32* @plperl_spi_execute_fetch_result(i32, i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @ReleaseCurrentSubTransaction(...) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local %struct.TYPE_12__* @CopyErrorData(...) #1

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @RollbackAndReleaseCurrentSubTransaction(...) #1

declare dso_local i32 @croak_cstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
