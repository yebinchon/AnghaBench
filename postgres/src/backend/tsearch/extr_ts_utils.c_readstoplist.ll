; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_utils.c_readstoplist.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_utils.c_readstoplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8** }

@.str = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not open stop-word file \22%s\22: %m\00", align 1
@pg_qsort_strcmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @readstoplist(i8* %0, %struct.TYPE_3__* %1, i8* (i8*)* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8* (i8*)*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* (i8*)* %2, i8* (i8*)** %6, align 8
  store i8** null, i8*** %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %139

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %139

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @get_tsearch_config_filename(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @tsearch_readline_begin(i32* %9, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = call i32 @ereport(i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %28, %22
  br label %36

36:                                               ; preds = %130, %65, %35
  %37 = call i8* @tsearch_readline(i32* %9)
  store i8* %37, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %135

39:                                               ; preds = %36
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %12, align 8
  br label %41

41:                                               ; preds = %53, %39
  %42 = load i8*, i8** %12, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @t_isspace(i8* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ]
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @pg_mblen(i8* %54)
  %56 = load i8*, i8** %12, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %12, align 8
  br label %41

59:                                               ; preds = %51
  %60 = load i8*, i8** %12, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @pfree(i8* %66)
  br label %36

68:                                               ; preds = %59
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  store i32 64, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 8, %79
  %81 = trunc i64 %80 to i32
  %82 = call i64 @palloc(i32 %81)
  %83 = inttoptr i64 %82 to i8**
  store i8** %83, i8*** %7, align 8
  br label %95

84:                                               ; preds = %74
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 %85, 2
  store i32 %86, i32* %11, align 4
  %87 = load i8**, i8*** %7, align 8
  %88 = bitcast i8** %87 to i8*
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 8, %90
  %92 = trunc i64 %91 to i32
  %93 = call i64 @repalloc(i8* %88, i32 %92)
  %94 = inttoptr i64 %93 to i8**
  store i8** %94, i8*** %7, align 8
  br label %95

95:                                               ; preds = %84, %77
  br label %96

96:                                               ; preds = %95, %68
  %97 = load i8* (i8*)*, i8* (i8*)** %6, align 8
  %98 = icmp ne i8* (i8*)* %97, null
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  %100 = load i8* (i8*)*, i8* (i8*)** %6, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = call i8* %100(i8* %101)
  %103 = load i8**, i8*** %7, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %103, i64 %107
  store i8* %102, i8** %108, align 8
  %109 = load i8**, i8*** %7, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %109, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = icmp ne i8* %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %99
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @pfree(i8* %119)
  br label %121

121:                                              ; preds = %118, %99
  br label %130

122:                                              ; preds = %96
  %123 = load i8*, i8** %10, align 8
  %124 = load i8**, i8*** %7, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %124, i64 %128
  store i8* %123, i8** %129, align 8
  br label %130

130:                                              ; preds = %122, %121
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  br label %36

135:                                              ; preds = %36
  %136 = call i32 @tsearch_readline_end(i32* %9)
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @pfree(i8* %137)
  br label %139

139:                                              ; preds = %135, %17, %3
  %140 = load i8**, i8*** %7, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i8** %140, i8*** %142, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i8**, i8*** %144, align 8
  %146 = icmp ne i8** %145, null
  br i1 %146, label %147, label %162

147:                                              ; preds = %139
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i8**, i8*** %154, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = load i32, i32* @pg_qsort_strcmp, align 4
  %161 = call i32 @qsort(i8** %155, i64 %159, i32 8, i32 %160)
  br label %162

162:                                              ; preds = %152, %147, %139
  ret void
}

declare dso_local i8* @get_tsearch_config_filename(i8*, i8*) #1

declare dso_local i32 @tsearch_readline_begin(i32*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i8* @tsearch_readline(i32*) #1

declare dso_local i32 @t_isspace(i8*) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @repalloc(i8*, i32) #1

declare dso_local i32 @tsearch_readline_end(i32*) #1

declare dso_local i32 @qsort(i8**, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
