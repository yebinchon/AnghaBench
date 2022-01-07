; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_large_obj.c_do_lo_list.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_large_obj.c_do_lo_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@pset = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [185 x i8] c"SELECT oid as \22%s\22,\0A  pg_catalog.pg_get_userbyid(lomowner) as \22%s\22,\0A  pg_catalog.obj_description(oid, 'pg_largeobject') as \22%s\22\0A  FROM pg_catalog.pg_largeobject_metadata   ORDER BY oid\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Owner\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.4 = private unnamed_addr constant [154 x i8] c"SELECT loid as \22%s\22,\0A  pg_catalog.obj_description(loid, 'pg_largeobject') as \22%s\22\0AFROM (SELECT DISTINCT loid FROM pg_catalog.pg_largeobject) x\0AORDER BY 1\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Large objects\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_lo_list() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pset, i32 0, i32 3) to i8*), i64 24, i1 false)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pset, i32 0, i32 0), align 8
  %7 = icmp sge i32 %6, 90000
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %10 = call i8* @gettext_noop(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i8* @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i8* @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %9, i32 1024, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11, i8* %12)
  br label %19

14:                                               ; preds = %0
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %16 = call i8* @gettext_noop(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i8* @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %15, i32 1024, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.4, i64 0, i64 0), i8* %16, i8* %17)
  br label %19

19:                                               ; preds = %14, %8
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %21 = call i32* @PSQLexec(i8* %20)
  store i32* %21, i32** %2, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %38

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pset, i32 0, i32 2), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pset, i32 0, i32 1), align 4
  %35 = call i32 @printQuery(i32* %32, %struct.TYPE_6__* %4, i32 %33, i32 0, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @PQclear(i32* %36)
  store i32 1, i32* %1, align 4
  br label %38

38:                                               ; preds = %25, %24
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i8* @gettext_noop(i8*) #2

declare dso_local i32* @PSQLexec(i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @printQuery(i32*, %struct.TYPE_6__*, i32, i32, i32) #2

declare dso_local i32 @PQclear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
