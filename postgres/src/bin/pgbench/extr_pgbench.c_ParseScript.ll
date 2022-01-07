; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_ParseScript.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_ParseScript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, %struct.TYPE_9__**, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i8**, i32*, i32* }

@pgbench_callbacks = common dso_local global i32 0, align 4
@PSCAN_BACKSLASH = common dso_local global i64 0, align 8
@META_GSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"\\gset must follow a SQL command\00", align 1
@SQL_COMMAND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PSCAN_INCOMPLETE = common dso_local global i64 0, align 8
@PSCAN_EOL = common dso_local global i64 0, align 8
@COMMANDS_ALLOC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @ParseScript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseScript(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 128, i32* %10, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  %25 = trunc i64 %24 to i32
  %26 = call i64 @pg_malloc(i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_9__**
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store %struct.TYPE_9__** %27, %struct.TYPE_9__*** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %30 = call i32 @initStats(i32* %29, i32 0)
  %31 = call i32 @psql_scan_create(i32* @pgbench_callbacks)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32 @psql_scan_setup(i32 %32, i8* %33, i32 %35, i32 0, i32 1)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @expr_scanner_offset(i32 %37)
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  %40 = call i32 @initPQExpBuffer(i32* %9)
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %175, %138, %3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %42 = call i32 @resetPQExpBuffer(i32* %9)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @expr_scanner_get_lineno(i32 %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @psql_scan(i32 %46, i32* %9, i32* %15)
  store i64 %47, i64* %14, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call %struct.TYPE_9__* @create_sql_command(i32* %9, i8* %48)
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %16, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %55 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %55, i64 %58
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %59, align 8
  br label %60

60:                                               ; preds = %52, %41
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* @PSCAN_BACKSLASH, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %150

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = call %struct.TYPE_9__* @process_backslash_command(i32 %65, i8* %66)
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %16, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %69 = icmp ne %struct.TYPE_9__* %68, null
  br i1 %69, label %70, label %149

70:                                               ; preds = %64
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @META_GSET, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %141

76:                                               ; preds = %70
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @syntax_error(i8* %80, i32 %81, i32* null, i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* null, i32 -1)
  br label %83

83:                                               ; preds = %79, %76
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %85 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %85, i64 %88
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %17, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SQL_COMMAND, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %101, label %96

96:                                               ; preds = %83
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %96, %83
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @syntax_error(i8* %102, i32 %103, i32* null, i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %106, i32 -1)
  br label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp sle i32 %111, 1
  br i1 %112, label %123, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %113, %108
  %124 = call i8* @pg_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  store i32* %125, i32** %127, align 8
  br label %138

128:                                              ; preds = %113
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i8* @pg_strdup(i8* %133)
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 4
  store i32* %135, i32** %137, align 8
  br label %138

138:                                              ; preds = %128, %123
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %140 = call i32 @free_command(%struct.TYPE_9__* %139)
  br label %41

141:                                              ; preds = %70
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %144 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %144, i64 %147
  store %struct.TYPE_9__* %142, %struct.TYPE_9__** %148, align 8
  br label %149

149:                                              ; preds = %141, %64
  br label %150

150:                                              ; preds = %149, %60
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %150
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 128
  store i32 %156, i32* %10, align 4
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %158 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 8, %160
  %162 = trunc i64 %161 to i32
  %163 = call i64 @pg_realloc(%struct.TYPE_9__** %158, i32 %162)
  %164 = inttoptr i64 %163 to %struct.TYPE_9__**
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store %struct.TYPE_9__** %164, %struct.TYPE_9__*** %165, align 8
  br label %166

166:                                              ; preds = %154, %150
  %167 = load i64, i64* %14, align 8
  %168 = load i64, i64* @PSCAN_INCOMPLETE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i64, i64* %14, align 8
  %172 = load i64, i64* @PSCAN_EOL, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170, %166
  br label %176

175:                                              ; preds = %170
  br label %41

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %178 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %178, i64 %180
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %181, align 8
  %182 = call i32 @addScript(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %7)
  %183 = call i32 @termPQExpBuffer(i32* %9)
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @psql_scan_finish(i32 %184)
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @psql_scan_destroy(i32 %186)
  ret void
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @initStats(i32*, i32) #1

declare dso_local i32 @psql_scan_create(i32*) #1

declare dso_local i32 @psql_scan_setup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @expr_scanner_offset(i32) #1

declare dso_local i32 @initPQExpBuffer(i32*) #1

declare dso_local i32 @resetPQExpBuffer(i32*) #1

declare dso_local i32 @expr_scanner_get_lineno(i32, i32) #1

declare dso_local i64 @psql_scan(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @create_sql_command(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @process_backslash_command(i32, i8*) #1

declare dso_local i32 @syntax_error(i8*, i32, i32*, i32*, i8*, i32*, i32) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @free_command(%struct.TYPE_9__*) #1

declare dso_local i64 @pg_realloc(%struct.TYPE_9__**, i32) #1

declare dso_local i32 @addScript(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @termPQExpBuffer(i32*) #1

declare dso_local i32 @psql_scan_finish(i32) #1

declare dso_local i32 @psql_scan_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
