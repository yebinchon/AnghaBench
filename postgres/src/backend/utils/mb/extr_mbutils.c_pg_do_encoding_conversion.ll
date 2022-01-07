; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_mbutils.c_pg_do_encoding_conversion.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_mbutils.c_pg_do_encoding_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_SQL_ASCII = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"cannot perform encoding conversion outside a transaction\00", align 1
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"default conversion function for encoding \22%s\22 to \22%s\22 does not exist\00", align 1
@MaxAllocHugeSize = common dso_local global i32 0, align 4
@MAX_CONVERSION_GROWTH = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"String of %d bytes is too long for encoding conversion.\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@MaxAllocSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pg_do_encoding_conversion(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %5, align 8
  br label %120

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %5, align 8
  br label %120

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PG_SQL_ASCII, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %5, align 8
  br label %120

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @PG_SQL_ASCII, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @pg_verify_mbstr(i32 %34, i8* %35, i32 %36, i32 0)
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %5, align 8
  br label %120

39:                                               ; preds = %29
  %40 = call i32 (...) @IsTransactionState()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @ERROR, align 4
  %44 = call i32 @elog(i32 %43, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @FindDefaultConversionProc(i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @OidIsValid(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @pg_encoding_to_char(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @pg_encoding_to_char(i32 %58)
  %60 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59)
  %61 = call i32 @ereport(i32 %53, i32 %60)
  br label %62

62:                                               ; preds = %52, %45
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MaxAllocHugeSize, align 4
  %65 = load i32, i32* @MAX_CONVERSION_GROWTH, align 4
  %66 = sdiv i32 %64, %65
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @errdetail(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = call i32 @ereport(i32 %69, i32 %74)
  br label %76

76:                                               ; preds = %68, %62
  %77 = load i32, i32* @CurrentMemoryContext, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @MAX_CONVERSION_GROWTH, align 4
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 %80, 1
  %82 = call i64 @MemoryContextAllocHuge(i32 %77, i32 %81)
  %83 = inttoptr i64 %82 to i8*
  store i8* %83, i8** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @Int32GetDatum(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @Int32GetDatum(i32 %87)
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @CStringGetDatum(i8* %89)
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @CStringGetDatum(i8* %91)
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @Int32GetDatum(i32 %93)
  %95 = call i32 @OidFunctionCall5(i32 %84, i32 %86, i32 %88, i32 %90, i32 %92, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = icmp sgt i32 %96, 1000000
  br i1 %97, label %98, label %118

98:                                               ; preds = %76
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @strlen(i8* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @MaxAllocSize, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load i32, i32* @ERROR, align 4
  %106 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %107 = call i32 @errcode(i32 %106)
  %108 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @errdetail(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = call i32 @ereport(i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %104, %98
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  %116 = call i64 @repalloc(i8* %113, i32 %115)
  %117 = inttoptr i64 %116 to i8*
  store i8* %117, i8** %10, align 8
  br label %118

118:                                              ; preds = %112, %76
  %119 = load i8*, i8** %10, align 8
  store i8* %119, i8** %5, align 8
  br label %120

120:                                              ; preds = %118, %33, %27, %21, %15
  %121 = load i8*, i8** %5, align 8
  ret i8* %121
}

declare dso_local i32 @pg_verify_mbstr(i32, i8*, i32, i32) #1

declare dso_local i32 @IsTransactionState(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @FindDefaultConversionProc(i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @pg_encoding_to_char(i32) #1

declare dso_local i32 @errdetail(i8*, i32) #1

declare dso_local i64 @MemoryContextAllocHuge(i32, i32) #1

declare dso_local i32 @OidFunctionCall5(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @repalloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
