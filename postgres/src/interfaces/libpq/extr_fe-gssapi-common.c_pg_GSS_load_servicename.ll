; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-gssapi-common.c_pg_GSS_load_servicename.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-gssapi-common.c_pg_GSS_load_servicename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32*, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"host name must be specified\0A\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@NI_MAXHOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"GSSAPI name import error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_GSS_load_servicename(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @STATUS_OK, align 4
  store i32 %14, i32* %2, align 4
  br label %85

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = call i8* @PQhost(%struct.TYPE_8__* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = call i32 @libpq_gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @printfPQExpBuffer(i32* %28, i32 %29)
  %31 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %31, i32* %2, align 4
  br label %85

32:                                               ; preds = %20
  %33 = load i32, i32* @NI_MAXHOST, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = add nsw i32 %33, %37
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @malloc(i32 %40)
  %42 = inttoptr i64 %41 to i8*
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %32
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @printfPQExpBuffer(i32* %49, i32 %50)
  %52 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %52, i32* %2, align 4
  br label %85

53:                                               ; preds = %32
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @snprintf(i8* %55, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %59, i8* %60)
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* @GSS_C_NT_HOSTBASED_SERVICE, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = call i64 @gss_import_name(i64* %5, %struct.TYPE_7__* %7, i32 %66, i32** %68)
  store i64 %69, i64* %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* @GSS_S_COMPLETE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %53
  %77 = call i32 @libpq_gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @pg_GSS_error(i32 %77, %struct.TYPE_8__* %78, i64 %79, i64 %80)
  %82 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %82, i32* %2, align 4
  br label %85

83:                                               ; preds = %53
  %84 = load i32, i32* @STATUS_OK, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %76, %47, %26, %13
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i8* @PQhost(%struct.TYPE_8__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @gss_import_name(i64*, %struct.TYPE_7__*, i32, i32**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @pg_GSS_error(i32, %struct.TYPE_8__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
