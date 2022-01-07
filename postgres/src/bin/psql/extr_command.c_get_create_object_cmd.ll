; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_get_create_object_cmd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_get_create_object_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"SELECT pg_catalog.pg_get_functiondef(%u)\00", align 1
@pset = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [475 x i8] c"SELECT nspname, relname, relkind, pg_catalog.pg_get_viewdef(c.oid, true), pg_catalog.array_remove(pg_catalog.array_remove(c.reloptions,'check_option=local'),'check_option=cascaded') AS reloptions, CASE WHEN 'check_option=local' = ANY (c.reloptions) THEN 'LOCAL'::text WHEN 'check_option=cascaded' = ANY (c.reloptions) THEN 'CASCADED'::text ELSE NULL END AS checkoption FROM pg_catalog.pg_class c LEFT JOIN pg_catalog.pg_namespace n ON c.relnamespace = n.oid WHERE c.oid = %u\00", align 1
@.str.2 = private unnamed_addr constant [228 x i8] c"SELECT nspname, relname, relkind, pg_catalog.pg_get_viewdef(c.oid, true), c.reloptions AS reloptions, NULL AS checkoption FROM pg_catalog.pg_class c LEFT JOIN pg_catalog.pg_namespace n ON c.relnamespace = n.oid WHERE c.oid = %u\00", align 1
@.str.3 = private unnamed_addr constant [220 x i8] c"SELECT nspname, relname, relkind, pg_catalog.pg_get_viewdef(c.oid, true), NULL AS reloptions, NULL AS checkoption FROM pg_catalog.pg_class c LEFT JOIN pg_catalog.pg_namespace n ON c.relnamespace = n.oid WHERE c.oid = %u\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"CREATE OR REPLACE VIEW \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\22%s.%s\22 is not a view\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0A WITH (\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"could not parse reloptions array\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" AS\0A%s\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"\0A WITH %s CHECK OPTION\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_12__*)* @get_create_object_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_create_object_cmd(i32 %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32 1, i32* %8, align 4
  %17 = call %struct.TYPE_12__* (...) @createPQExpBuffer()
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %9, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %43 [
    i32 131, label %19
    i32 130, label %23
  ]

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @printfPQExpBuffer(%struct.TYPE_12__* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %43

23:                                               ; preds = %3
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 4
  %25 = icmp sge i32 %24, 90400
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @printfPQExpBuffer(%struct.TYPE_12__* %27, i8* getelementptr inbounds ([475 x i8], [475 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %42

30:                                               ; preds = %23
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 4
  %32 = icmp sge i32 %31, 90200
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @printfPQExpBuffer(%struct.TYPE_12__* %34, i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %41

37:                                               ; preds = %30
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @printfPQExpBuffer(%struct.TYPE_12__* %38, i8* getelementptr inbounds ([220 x i8], [220 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %26
  br label %43

43:                                               ; preds = %3, %42, %19
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @echo_hidden_command(i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = call i32 @destroyPQExpBuffer(%struct.TYPE_12__* %50)
  store i32 0, i32* %4, align 4
  br label %204

52:                                               ; preds = %43
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 2), align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32* @PQexec(i32 %53, i8* %56)
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i64 @PQresultStatus(i32* %58)
  %60 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %195

62:                                               ; preds = %52
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @PQntuples(i32* %63)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %195

66:                                               ; preds = %62
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = call i32 @resetPQExpBuffer(%struct.TYPE_12__* %67)
  %69 = load i32, i32* %5, align 4
  switch i32 %69, label %173 [
    i32 131, label %70
    i32 130, label %75
  ]

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i8* @PQgetvalue(i32* %72, i32 0, i32 0)
  %74 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %71, i8* %73)
  br label %173

75:                                               ; preds = %66
  %76 = load i32*, i32** %10, align 8
  %77 = call i8* @PQgetvalue(i32* %76, i32 0, i32 0)
  store i8* %77, i8** %11, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i8* @PQgetvalue(i32* %78, i32 0, i32 1)
  store i8* %79, i8** %12, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i8* @PQgetvalue(i32* %80, i32 0, i32 2)
  store i8* %81, i8** %13, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i8* @PQgetvalue(i32* %82, i32 0, i32 3)
  store i8* %83, i8** %14, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i8* @PQgetvalue(i32* %84, i32 0, i32 4)
  store i8* %85, i8** %15, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i8* @PQgetvalue(i32* %86, i32 0, i32 5)
  store i8* %87, i8** %16, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  switch i32 %91, label %95 [
    i32 128, label %92
  ]

92:                                               ; preds = %75
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %99

95:                                               ; preds = %75
  %96 = load i8*, i8** %11, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %96, i8* %97)
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %95, %92
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = call i8* @fmtId(i8* %101)
  %103 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = call i8* @fmtId(i8* %105)
  %107 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %104, i8* %106)
  %108 = load i8*, i8** %15, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %128

110:                                              ; preds = %99
  %111 = load i8*, i8** %15, align 8
  %112 = call i32 @strlen(i8* %111)
  %113 = icmp sgt i32 %112, 2
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %116 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 1), align 4
  %120 = call i32 (...) @standard_strings()
  %121 = call i32 @appendReloptionsArray(%struct.TYPE_12__* %117, i8* %118, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %114
  %124 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %123, %114
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = call i32 @appendPQExpBufferChar(%struct.TYPE_12__* %126, i8 signext 41)
  br label %128

128:                                              ; preds = %125, %110, %99
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %130)
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %128
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %139, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 59
  br i1 %148, label %149, label %159

149:                                              ; preds = %136
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %154, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %152, i64 %157
  store i8 0, i8* %158, align 1
  br label %159

159:                                              ; preds = %149, %136, %128
  %160 = load i8*, i8** %16, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load i8*, i8** %16, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %170 = load i8*, i8** %16, align 8
  %171 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %168, %162, %159
  br label %173

173:                                              ; preds = %66, %172, %70
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %173
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %181, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 10
  br i1 %190, label %191, label %194

191:                                              ; preds = %178
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %193 = call i32 @appendPQExpBufferChar(%struct.TYPE_12__* %192, i8 signext 10)
  br label %194

194:                                              ; preds = %191, %178, %173
  br label %198

195:                                              ; preds = %62, %52
  %196 = load i32*, i32** %10, align 8
  %197 = call i32 @minimal_error_message(i32* %196)
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %195, %194
  %199 = load i32*, i32** %10, align 8
  %200 = call i32 @PQclear(i32* %199)
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %202 = call i32 @destroyPQExpBuffer(%struct.TYPE_12__* %201)
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %198, %49
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.TYPE_12__* @createPQExpBuffer(...) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @echo_hidden_command(i8*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_12__*) #1

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_12__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_12__*, i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i8* @fmtId(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @appendReloptionsArray(%struct.TYPE_12__*, i8*, i8*, i32, i32) #1

declare dso_local i32 @standard_strings(...) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @minimal_error_message(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
