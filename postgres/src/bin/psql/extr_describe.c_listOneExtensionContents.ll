; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listOneExtensionContents.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listOneExtensionContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_9__ = type { i32 }

@pset = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [206 x i8] c"SELECT pg_catalog.pg_describe_object(classid, objid, 0) AS \22%s\22\0AFROM pg_catalog.pg_depend\0AWHERE refclassid = 'pg_catalog.pg_extension'::pg_catalog.regclass AND refobjid = '%s' AND deptype = 'e'\0AORDER BY 1;\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Object description\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Objects in extension \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @listOneExtensionContents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listOneExtensionContents(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pset, i32 0, i32 2) to i8*), i64 16, i1 false)
  %11 = call i32 @initPQExpBuffer(%struct.TYPE_9__* %6)
  %12 = call i32 @gettext_noop(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 (%struct.TYPE_9__*, i8*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_9__* %6, i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @PSQLexec(i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = call i32 @termPQExpBuffer(%struct.TYPE_9__* %6)
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = call i32 @initPQExpBuffer(%struct.TYPE_9__* %8)
  %27 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (%struct.TYPE_9__*, i8*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_9__* %8, i8* %29, i8* %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pset, i32 0, i32 1), align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pset, i32 0, i32 0), align 8
  %39 = call i32 @printQuery(i32* %36, %struct.TYPE_8__* %9, i32 %37, i32 0, i32 %38)
  %40 = call i32 @termPQExpBuffer(%struct.TYPE_9__* %8)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @PQclear(i32* %41)
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %24, %23
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_9__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_9__*, i8*, i8*, ...) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32* @PSQLexec(i32) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_9__*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @printQuery(i32*, %struct.TYPE_8__*, i32, i32, i32) #2

declare dso_local i32 @PQclear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
