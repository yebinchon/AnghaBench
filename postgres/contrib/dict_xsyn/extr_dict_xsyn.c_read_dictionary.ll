; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dict_xsyn/extr_dict_xsyn.c_read_dictionary.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dict_xsyn/extr_dict_xsyn.c_read_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"rules\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not open synonym file \22%s\22: %m\00", align 1
@compare_syn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*)* @read_dictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dictionary(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @get_tsearch_config_filename(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @tsearch_readline_begin(i32* %6, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = call i32 @ereport(i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %18, %2
  br label %26

26:                                               ; preds = %140, %34, %25
  %27 = call i8* @tsearch_readline(i32* %6)
  store i8* %27, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %143

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %26

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @lowerstr(i8* %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @pfree(i8* %38)
  %40 = load i8*, i8** %9, align 8
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %139, %35
  %42 = load i8*, i8** %11, align 8
  %43 = call i8* @find_word(i8* %42, i8** %12)
  store i8* %43, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %140

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %96

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 2, %59
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %56
  %63 = phi i32 [ %60, %56 ], [ 16, %61 ]
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = icmp ne %struct.TYPE_6__* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %62
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = mul i64 8, %77
  %79 = trunc i64 %78 to i32
  %80 = call i64 @repalloc(%struct.TYPE_6__* %73, i32 %79)
  %81 = inttoptr i64 %80 to %struct.TYPE_6__*
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %83, align 8
  br label %95

84:                                               ; preds = %62
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = mul i64 8, %88
  %90 = trunc i64 %89 to i32
  %91 = call i64 @palloc(i32 %90)
  %92 = inttoptr i64 %91 to %struct.TYPE_6__*
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %94, align 8
  br label %95

95:                                               ; preds = %84, %70
  br label %96

96:                                               ; preds = %95, %45
  %97 = load i8*, i8** %11, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = icmp ne i8* %97, %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %132

105:                                              ; preds = %100, %96
  %106 = load i8*, i8** %10, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @pnstrdup(i8* %106, i32 %112)
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %113, i32* %120, align 4
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 @pstrdup(i8* %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 %122, i32* %129, align 4
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %105, %100
  %133 = load i8*, i8** %12, align 8
  store i8* %133, i8** %11, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  br label %140

139:                                              ; preds = %132
  br label %41

140:                                              ; preds = %138, %41
  %141 = load i8*, i8** %9, align 8
  %142 = call i32 @pfree(i8* %141)
  br label %26

143:                                              ; preds = %26
  %144 = call i32 @tsearch_readline_end(i32* %6)
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* %8, align 4
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %150, label %159

150:                                              ; preds = %143
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @compare_syn, align 4
  %158 = call i32 @qsort(%struct.TYPE_6__* %153, i32 %156, i32 8, i32 %157)
  br label %159

159:                                              ; preds = %150, %143
  %160 = load i8*, i8** %5, align 8
  %161 = call i32 @pfree(i8* %160)
  ret void
}

declare dso_local i8* @get_tsearch_config_filename(i8*, i8*) #1

declare dso_local i32 @tsearch_readline_begin(i32*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i8* @tsearch_readline(i32*) #1

declare dso_local i8* @lowerstr(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i8* @find_word(i8*, i8**) #1

declare dso_local i64 @repalloc(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @pnstrdup(i8*, i32) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i32 @tsearch_readline_end(i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
