; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_ts_stat_sql.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_ts_stat_sql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SPI_prepare(\22%s\22) failed\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"SPI_cursor_open(\22%s\22) failed\00", align 1
@SPI_tuptable = common dso_local global %struct.TYPE_11__* null, align 8
@TSVECTOROID = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"ts_stat query must return one tsvector column\00", align 1
@SPI_processed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32, i32*, i32*)* @ts_stat_sql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @ts_stat_sql(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i8* @text_to_cstring(i32* %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32* @SPI_prepare(i8* %17, i32 0, i32* null)
  store i32* %18, i32** %11, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i32*, i32** %11, align 8
  %26 = call i32* @SPI_cursor_open(i32* null, i32* %25, i32* null, i32* null, i32 1)
  store i32* %26, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @elog(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @SPI_cursor_fetch(i32* %33, i32 1, i32 100)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SPI_tuptable, align 8
  %36 = icmp eq %struct.TYPE_11__* %35, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SPI_tuptable, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %52, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SPI_tuptable, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = call i32 @SPI_gettypeid(%struct.TYPE_12__* %47, i32 1)
  %49 = load i32, i32* @TSVECTOROID, align 4
  %50 = call i32 @IsBinaryCoercible(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %44, %37, %32
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %44
  %59 = load i32, i32* %4, align 4
  %60 = call %struct.TYPE_10__* @MemoryContextAllocZero(i32 %59, i32 8)
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %8, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %119

65:                                               ; preds = %58
  %66 = load i32*, i32** %6, align 8
  %67 = call i8* @VARDATA_ANY(i32* %66)
  store i8* %67, i8** %12, align 8
  br label %68

68:                                               ; preds = %112, %65
  %69 = load i8*, i8** %12, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i8* @VARDATA_ANY(i32* %70)
  %72 = ptrtoint i8* %69 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @VARSIZE_ANY_EXHDR(i32* %75)
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %118

79:                                               ; preds = %68
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @pg_mblen(i8* %80)
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %112

83:                                               ; preds = %79
  %84 = load i8*, i8** %12, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  switch i32 %86, label %107 [
    i32 65, label %87
    i32 97, label %87
    i32 66, label %92
    i32 98, label %92
    i32 67, label %97
    i32 99, label %97
    i32 68, label %102
    i32 100, label %102
  ]

87:                                               ; preds = %83, %83
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, 8
  store i32 %91, i32* %89, align 4
  br label %111

92:                                               ; preds = %83, %83
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, 4
  store i32 %96, i32* %94, align 4
  br label %111

97:                                               ; preds = %83, %83
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, 2
  store i32 %101, i32* %99, align 4
  br label %111

102:                                              ; preds = %83, %83
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %111

107:                                              ; preds = %83
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %109, align 4
  br label %111

111:                                              ; preds = %107, %102, %97, %92, %87
  br label %112

112:                                              ; preds = %111, %79
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @pg_mblen(i8* %113)
  %115 = load i8*, i8** %12, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %12, align 8
  br label %68

118:                                              ; preds = %68
  br label %119

119:                                              ; preds = %118, %58
  br label %120

120:                                              ; preds = %150, %119
  %121 = load i64, i64* @SPI_processed, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %155

123:                                              ; preds = %120
  store i64 0, i64* %13, align 8
  br label %124

124:                                              ; preds = %147, %123
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* @SPI_processed, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %150

128:                                              ; preds = %124
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SPI_tuptable, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %13, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SPI_tuptable, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = call i32 @SPI_getbinval(i32 %134, %struct.TYPE_12__* %137, i32 1, i32* %9)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %128
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call %struct.TYPE_10__* @ts_accum(i32 %142, %struct.TYPE_10__* %143, i32 %144)
  store %struct.TYPE_10__* %145, %struct.TYPE_10__** %8, align 8
  br label %146

146:                                              ; preds = %141, %128
  br label %147

147:                                              ; preds = %146
  %148 = load i64, i64* %13, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %13, align 8
  br label %124

150:                                              ; preds = %124
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SPI_tuptable, align 8
  %152 = call i32 @SPI_freetuptable(%struct.TYPE_11__* %151)
  %153 = load i32*, i32** %10, align 8
  %154 = call i32 @SPI_cursor_fetch(i32* %153, i32 1, i32 100)
  br label %120

155:                                              ; preds = %120
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SPI_tuptable, align 8
  %157 = call i32 @SPI_freetuptable(%struct.TYPE_11__* %156)
  %158 = load i32*, i32** %10, align 8
  %159 = call i32 @SPI_cursor_close(i32* %158)
  %160 = load i32*, i32** %11, align 8
  %161 = call i32 @SPI_freeplan(i32* %160)
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 @pfree(i8* %162)
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  ret %struct.TYPE_10__* %164
}

declare dso_local i8* @text_to_cstring(i32*) #1

declare dso_local i32* @SPI_prepare(i8*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i32* @SPI_cursor_open(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @SPI_cursor_fetch(i32*, i32, i32) #1

declare dso_local i32 @IsBinaryCoercible(i32, i32) #1

declare dso_local i32 @SPI_gettypeid(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local %struct.TYPE_10__* @MemoryContextAllocZero(i32, i32) #1

declare dso_local i8* @VARDATA_ANY(i32*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i32 @SPI_getbinval(i32, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @ts_accum(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @SPI_freetuptable(%struct.TYPE_11__*) #1

declare dso_local i32 @SPI_cursor_close(i32*) #1

declare dso_local i32 @SPI_freeplan(i32*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
