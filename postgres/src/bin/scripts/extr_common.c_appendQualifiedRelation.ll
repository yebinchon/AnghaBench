; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_appendQualifiedRelation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_appendQualifiedRelation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [173 x i8] c"SELECT c.relname, ns.nspname\0A FROM pg_catalog.pg_class c, pg_catalog.pg_namespace ns\0A WHERE c.relnamespace OPERATOR(pg_catalog.=) ns.oid\0A  AND c.oid OPERATOR(pg_catalog.=) \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"::pg_catalog.regclass;\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"RESET search_path;\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"query returned %d row instead of one: %s\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"query returned %d rows instead of one: %s\00", align 1
@ALWAYS_SECURE_SEARCH_PATH_SQL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @appendQualifiedRelation(%struct.TYPE_8__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @PQclientEncoding(i32* %15)
  %17 = call i32 @splitTableColumnsSpec(i8* %14, i32 %16, i8** %9, i8** %10)
  %18 = call i32 @initPQExpBuffer(%struct.TYPE_8__* %11)
  %19 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %11, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @appendStringLiteralConn(%struct.TYPE_8__* %11, i8* %20, i32* %21)
  %23 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @executeCommand(i32* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32* @executeQuery(i32* %27, i32 %29, i32 %30)
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @PQntuples(i32* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %46

36:                                               ; preds = %4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @ngettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pg_log_error(i32 %38, i32 %39, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @PQfinish(i32* %43)
  %45 = call i32 @exit(i32 1) #3
  unreachable

46:                                               ; preds = %4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @PQgetvalue(i32* %48, i32 0, i32 1)
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @PQgetvalue(i32* %50, i32 0, i32 0)
  %52 = call i8* @fmtQualifiedId(i32 %49, i32 %51)
  %53 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %47, i8* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %54, i8* %55)
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @PQclear(i32* %57)
  %59 = call i32 @termPQExpBuffer(%struct.TYPE_8__* %11)
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @pg_free(i8* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @ALWAYS_SECURE_SEARCH_PATH_SQL, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32* @executeQuery(i32* %62, i32 %63, i32 %64)
  %66 = call i32 @PQclear(i32* %65)
  ret void
}

declare dso_local i32 @splitTableColumnsSpec(i8*, i32, i8**, i8**) #1

declare dso_local i32 @PQclientEncoding(i32*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @appendStringLiteralConn(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @executeCommand(i32*, i8*, i32) #1

declare dso_local i32* @executeQuery(i32*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @pg_log_error(i32, i32, i32) #1

declare dso_local i32 @ngettext(i8*, i8*, i32) #1

declare dso_local i32 @PQfinish(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @fmtQualifiedId(i32, i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @pg_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
