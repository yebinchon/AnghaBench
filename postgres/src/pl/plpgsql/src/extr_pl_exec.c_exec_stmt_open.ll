; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_open.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i64* }
%struct.TYPE_25__ = type { i64, i32*, i32, i32, i32, i32*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_27__*, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32*, i32*, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_CURSOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cursor \22%s\22 already in use\00", align 1
@PLPGSQL_RC_OK = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"arguments given for cursor without arguments\00", align 1
@PLPGSQL_STMT_EXECSQL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"open cursor failed during argument processing\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"arguments required for cursor\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"could not open cursor: %s\00", align 1
@SPI_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_25__*)* @exec_stmt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_stmt_open(%struct.TYPE_28__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_26__, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %6, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %29 = call i32* @get_stmt_mcontext(%struct.TYPE_28__* %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32* @MemoryContextSwitchTo(i32* %30)
  store i32* %31, i32** %12, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @TextDatumGetCString(i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32* @MemoryContextSwitchTo(i32* %36)
  %38 = load i8*, i8** %8, align 8
  %39 = call i32* @SPI_cursor_find(i8* %38)
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %27
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_DUPLICATE_CURSOR, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = call i32 @ereport(i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %41, %27
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  %53 = icmp ne %struct.TYPE_27__* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %56, align 8
  store %struct.TYPE_27__* %57, %struct.TYPE_27__** %9, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @exec_prepare_plan(%struct.TYPE_28__* %63, %struct.TYPE_27__* %64, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %62, %54
  br label %175

70:                                               ; preds = %49
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %99

75:                                               ; preds = %70
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.TYPE_23__* @exec_dynquery_with_params(%struct.TYPE_28__* %76, i32* %79, i32 %82, i8* %83, i32 %86)
  store %struct.TYPE_23__* %87, %struct.TYPE_23__** %10, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %75
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @assign_text_var(%struct.TYPE_28__* %91, %struct.TYPE_24__* %92, i32 %95)
  br label %97

97:                                               ; preds = %90, %75
  %98 = load i32, i32* @PLPGSQL_RC_OK, align 4
  store i32 %98, i32* %3, align 4
  br label %215

99:                                               ; preds = %70
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %146

104:                                              ; preds = %99
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32, i32* @ERROR, align 4
  %111 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %112 = call i32 @errcode(i32 %111)
  %113 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %114 = call i32 @ereport(i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %109, %104
  %116 = call i32 @memset(%struct.TYPE_26__* %13, i32 0, i32 32)
  %117 = load i32, i32* @PLPGSQL_STMT_EXECSQL, align 4
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 4
  store i32 %117, i32* %118, align 4
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  store i32 %121, i32* %122, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  store i32* %125, i32** %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i64, i64* %130, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i32*
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  store i32* %136, i32** %137, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %139 = call i32 @exec_stmt_execsql(%struct.TYPE_28__* %138, %struct.TYPE_26__* %13)
  %140 = load i32, i32* @PLPGSQL_RC_OK, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %115
  %143 = load i32, i32* @ERROR, align 4
  %144 = call i32 (i32, i8*, ...) @elog(i32 %143, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %115
  br label %158

146:                                              ; preds = %99
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp uge i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i32, i32* @ERROR, align 4
  %153 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %154 = call i32 @errcode(i32 %153)
  %155 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %156 = call i32 @ereport(i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %151, %146
  br label %158

158:                                              ; preds = %157, %145
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %160, align 8
  store %struct.TYPE_27__* %161, %struct.TYPE_27__** %9, align 8
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %158
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @exec_prepare_plan(%struct.TYPE_28__* %167, %struct.TYPE_27__* %168, i32 %171, i32 1)
  br label %173

173:                                              ; preds = %166, %158
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174, %69
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %178 = call i32 @setup_param_list(%struct.TYPE_28__* %176, %struct.TYPE_27__* %177)
  store i32 %178, i32* %11, align 4
  %179 = load i8*, i8** %8, align 8
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call %struct.TYPE_23__* @SPI_cursor_open_with_paramlist(i8* %179, i32* %182, i32 %183, i32 %186)
  store %struct.TYPE_23__* %187, %struct.TYPE_23__** %10, align 8
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %189 = icmp eq %struct.TYPE_23__* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %175
  %191 = load i32, i32* @ERROR, align 4
  %192 = load i32, i32* @SPI_result, align 4
  %193 = call i32 @SPI_result_code_string(i32 %192)
  %194 = call i32 (i32, i8*, ...) @elog(i32 %191, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %190, %175
  %196 = load i8*, i8** %8, align 8
  %197 = icmp eq i8* %196, null
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @assign_text_var(%struct.TYPE_28__* %199, %struct.TYPE_24__* %200, i32 %203)
  br label %205

205:                                              ; preds = %198, %195
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %207 = call i32 @exec_eval_cleanup(%struct.TYPE_28__* %206)
  %208 = load i32*, i32** %7, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32*, i32** %7, align 8
  %212 = call i32 @MemoryContextReset(i32* %211)
  br label %213

213:                                              ; preds = %210, %205
  %214 = load i32, i32* @PLPGSQL_RC_OK, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %213, %97
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32* @get_stmt_mcontext(%struct.TYPE_28__*) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32* @SPI_cursor_find(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @exec_prepare_plan(%struct.TYPE_28__*, %struct.TYPE_27__*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @exec_dynquery_with_params(%struct.TYPE_28__*, i32*, i32, i8*, i32) #1

declare dso_local i32 @assign_text_var(%struct.TYPE_28__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @exec_stmt_execsql(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @setup_param_list(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_23__* @SPI_cursor_open_with_paramlist(i8*, i32*, i32, i32) #1

declare dso_local i32 @SPI_result_code_string(i32) #1

declare dso_local i32 @exec_eval_cleanup(%struct.TYPE_28__*) #1

declare dso_local i32 @MemoryContextReset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
