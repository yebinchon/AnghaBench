; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_forc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_forc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i64* }
%struct.TYPE_29__ = type { i64, i32*, i32 }
%struct.TYPE_28__ = type { i64, i32, %struct.TYPE_31__*, i32, i32 }
%struct.TYPE_31__ = type { i32* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32*, i32*, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_CURSOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cursor \22%s\22 already in use\00", align 1
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"arguments given for cursor without arguments\00", align 1
@PLPGSQL_STMT_EXECSQL = common dso_local global i32 0, align 4
@PLPGSQL_RC_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"open cursor failed during argument processing\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"arguments required for cursor\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"could not open cursor: %s\00", align 1
@SPI_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_29__*)* @exec_stmt_forc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_stmt_forc(%struct.TYPE_32__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_30__, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %22, %struct.TYPE_28__** %5, align 8
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %29 = call i32* @get_stmt_mcontext(%struct.TYPE_32__* %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @MemoryContextSwitchTo(i32* %30)
  store i32* %31, i32** %12, align 8
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @TextDatumGetCString(i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32* @MemoryContextSwitchTo(i32* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = call i32* @SPI_cursor_find(i8* %38)
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %27
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_DUPLICATE_CURSOR, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = call i32 @ereport(i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %41, %27
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %96

54:                                               ; preds = %49
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 @ereport(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = call i32 @memset(%struct.TYPE_30__* %13, i32 0, i32 32)
  %67 = load i32, i32* @PLPGSQL_STMT_EXECSQL, align 4
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 2
  store i32* %75, i32** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 1
  store i32* %86, i32** %87, align 8
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %89 = call i64 @exec_stmt_execsql(%struct.TYPE_32__* %88, %struct.TYPE_30__* %13)
  %90 = load i64, i64* @PLPGSQL_RC_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %65
  %93 = load i32, i32* @ERROR, align 4
  %94 = call i32 (i32, i8*, ...) @elog(i32 %93, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %65
  br label %108

96:                                               ; preds = %49
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp uge i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32, i32* @ERROR, align 4
  %103 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %104 = call i32 @errcode(i32 %103)
  %105 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %106 = call i32 @ereport(i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %101, %96
  br label %108

108:                                              ; preds = %107, %95
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %110, align 8
  store %struct.TYPE_31__* %111, %struct.TYPE_31__** %8, align 8
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %113 = call i32 @Assert(%struct.TYPE_31__* %112)
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %108
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @exec_prepare_plan(%struct.TYPE_32__* %119, %struct.TYPE_31__* %120, i32 %123, i32 1)
  br label %125

125:                                              ; preds = %118, %108
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %128 = call i32 @setup_param_list(%struct.TYPE_32__* %126, %struct.TYPE_31__* %127)
  store i32 %128, i32* %9, align 4
  %129 = load i8*, i8** %7, align 8
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call %struct.TYPE_27__* @SPI_cursor_open_with_paramlist(i8* %129, i32* %132, i32 %133, i32 %136)
  store %struct.TYPE_27__* %137, %struct.TYPE_27__** %10, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %139 = icmp eq %struct.TYPE_27__* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %125
  %141 = load i32, i32* @ERROR, align 4
  %142 = load i32, i32* @SPI_result, align 4
  %143 = call i32 @SPI_result_code_string(i32 %142)
  %144 = call i32 (i32, i8*, ...) @elog(i32 %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %140, %125
  %146 = load i8*, i8** %7, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @assign_text_var(%struct.TYPE_32__* %149, %struct.TYPE_28__* %150, i32 %153)
  br label %155

155:                                              ; preds = %148, %145
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %157 = call i32 @exec_eval_cleanup(%struct.TYPE_32__* %156)
  %158 = load i32*, i32** %6, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 @MemoryContextReset(i32* %161)
  br label %163

163:                                              ; preds = %160, %155
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %166 = bitcast %struct.TYPE_29__* %165 to i32*
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %168 = call i32 @exec_for_query(%struct.TYPE_32__* %164, i32* %166, %struct.TYPE_27__* %167, i32 0)
  store i32 %168, i32* %11, align 4
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %170 = call i32 @SPI_cursor_close(%struct.TYPE_27__* %169)
  %171 = load i8*, i8** %7, align 8
  %172 = icmp eq i8* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %163
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %176 = call i32 @assign_simple_var(%struct.TYPE_32__* %174, %struct.TYPE_28__* %175, i32 0, i32 1, i32 0)
  br label %177

177:                                              ; preds = %173, %163
  %178 = load i32, i32* %11, align 4
  ret i32 %178
}

declare dso_local i32* @get_stmt_mcontext(%struct.TYPE_32__*) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32* @SPI_cursor_find(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i64 @exec_stmt_execsql(%struct.TYPE_32__*, %struct.TYPE_30__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @Assert(%struct.TYPE_31__*) #1

declare dso_local i32 @exec_prepare_plan(%struct.TYPE_32__*, %struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @setup_param_list(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_27__* @SPI_cursor_open_with_paramlist(i8*, i32*, i32, i32) #1

declare dso_local i32 @SPI_result_code_string(i32) #1

declare dso_local i32 @assign_text_var(%struct.TYPE_32__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @exec_eval_cleanup(%struct.TYPE_32__*) #1

declare dso_local i32 @MemoryContextReset(i32*) #1

declare dso_local i32 @exec_for_query(%struct.TYPE_32__*, i32*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @SPI_cursor_close(%struct.TYPE_27__*) #1

declare dso_local i32 @assign_simple_var(%struct.TYPE_32__*, %struct.TYPE_28__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
