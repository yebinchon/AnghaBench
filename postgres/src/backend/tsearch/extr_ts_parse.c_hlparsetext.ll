; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_parse.c_hlparsetext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_parse.c_hlparsetext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@MAXSTRLEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"word is too long to be indexed\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Words longer than %d characters are ignored.\00", align 1
@NOTICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hlparsetext(i32 %0, %struct.TYPE_11__* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %13, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_10__* @lookup_ts_config_cache(i32 %20)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %17, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_9__* @lookup_ts_parser_cache(i32 %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %18, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @PointerGetDatum(i8* %28)
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @Int32GetDatum(i32 %30)
  %32 = call i32 @FunctionCall2(i32* %27, i32 %29, i32 %31)
  %33 = call i64 @DatumGetPointer(i32 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %19, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %36 = call i32 @LexizeInit(i32* %14, %struct.TYPE_10__* %35)
  br label %37

37:                                               ; preds = %90, %5
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i8*, i8** %19, align 8
  %41 = call i32 @PointerGetDatum(i8* %40)
  %42 = bitcast i8** %13 to i8*
  %43 = call i32 @PointerGetDatum(i8* %42)
  %44 = bitcast i32* %12 to i8*
  %45 = call i32 @PointerGetDatum(i8* %44)
  %46 = call i32 @FunctionCall3(i32* %39, i32 %41, i32 %43, i32 %45)
  %47 = call i32 @DatumGetInt32(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %37
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @MAXSTRLEN, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @MAXSTRLEN, align 4
  %60 = call i32 @errdetail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = call i32 @ereport(i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %54, %50, %37
  %63 = load i32, i32* %11, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @LexizeAddLemm(i32* %14, i32 %63, i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %86, %62
  %68 = call i32* @LexizeExec(i32* %14, i32** %16)
  store i32* %68, i32** %15, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32*, i32** %16, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @addHLParsedLex(%struct.TYPE_11__* %75, i32 %76, i32* %77, i32* %78)
  br label %85

80:                                               ; preds = %67
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %16, align 8
  %84 = call i32 @addHLParsedLex(%struct.TYPE_11__* %81, i32 %82, i32* %83, i32* null)
  br label %85

85:                                               ; preds = %80, %70
  br label %86

86:                                               ; preds = %85
  %87 = load i32*, i32** %15, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %67, label %89

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %37, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i8*, i8** %19, align 8
  %97 = call i32 @PointerGetDatum(i8* %96)
  %98 = call i32 @FunctionCall1(i32* %95, i32 %97)
  ret void
}

declare dso_local %struct.TYPE_10__* @lookup_ts_config_cache(i32) #1

declare dso_local %struct.TYPE_9__* @lookup_ts_parser_cache(i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @FunctionCall2(i32*, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @LexizeInit(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @FunctionCall3(i32*, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i32) #1

declare dso_local i32 @LexizeAddLemm(i32*, i32, i8*, i32) #1

declare dso_local i32* @LexizeExec(i32*, i32**) #1

declare dso_local i32 @addHLParsedLex(%struct.TYPE_11__*, i32, i32*, i32*) #1

declare dso_local i32 @FunctionCall1(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
