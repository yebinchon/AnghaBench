; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_db_plugin_sqlite.c_op_set.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_db_plugin_sqlite.c_op_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { %struct.mg_str, %struct.mg_str }
%struct.mg_str = type { i64, i8* }

@.str = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"INSERT OR REPLACE INTO kv VALUES (?, ?);\00", align 1
@SQLITE_OK = common dso_local global i64 0, align 8
@SQLITE_STATIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"HTTP/1.1 200 OK\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, %struct.http_message*, %struct.mg_str*, i8*)* @op_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_set(%struct.mg_connection* %0, %struct.http_message* %1, %struct.mg_str* %2, i8* %3) #0 {
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca %struct.http_message*, align 8
  %7 = alloca %struct.mg_str*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [200 x i8], align 16
  %11 = alloca %struct.mg_str*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store %struct.http_message* %1, %struct.http_message** %6, align 8
  store %struct.mg_str* %2, %struct.mg_str** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load %struct.http_message*, %struct.http_message** %6, align 8
  %13 = getelementptr inbounds %struct.http_message, %struct.http_message* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.http_message*, %struct.http_message** %6, align 8
  %19 = getelementptr inbounds %struct.http_message, %struct.http_message* %18, i32 0, i32 1
  br label %23

20:                                               ; preds = %4
  %21 = load %struct.http_message*, %struct.http_message** %6, align 8
  %22 = getelementptr inbounds %struct.http_message, %struct.http_message* %21, i32 0, i32 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi %struct.mg_str* [ %19, %17 ], [ %22, %20 ]
  store %struct.mg_str* %24, %struct.mg_str** %11, align 8
  %25 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %26 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %27 = call i32 @mg_get_http_var(%struct.mg_str* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %26, i32 200)
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @sqlite3_prepare_v2(i8* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32** %9, i32* null)
  %30 = load i64, i64* @SQLITE_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %23
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %35 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %38 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @SQLITE_STATIC, align 4
  %41 = call i32 @sqlite3_bind_text(i32* %33, i32 1, i8* %36, i64 %39, i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %44 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %45 = call i64 @strlen(i8* %44)
  %46 = load i32, i32* @SQLITE_STATIC, align 4
  %47 = call i32 @sqlite3_bind_text(i32* %42, i32 2, i8* %43, i64 %45, i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @sqlite3_step(i32* %48)
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @sqlite3_finalize(i32* %50)
  br label %52

52:                                               ; preds = %32, %23
  %53 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %54 = call i32 @mg_printf(%struct.mg_connection* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mg_get_http_var(%struct.mg_str*, i8*, i8*, i32) #1

declare dso_local i64 @sqlite3_prepare_v2(i8*, i8*, i32, i32**, i32*) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
