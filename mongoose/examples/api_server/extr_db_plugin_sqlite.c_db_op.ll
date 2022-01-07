; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_db_plugin_sqlite.c_db_op.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_db_plugin_sqlite.c_db_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { i32 }
%struct.mg_str = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"HTTP/1.0 501 Not Implemented\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_op(%struct.mg_connection* %0, %struct.http_message* %1, %struct.mg_str* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.mg_connection*, align 8
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca %struct.mg_str*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %6, align 8
  store %struct.http_message* %1, %struct.http_message** %7, align 8
  store %struct.mg_str* %2, %struct.mg_str** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %30 [
    i32 129, label %12
    i32 128, label %18
    i32 130, label %24
  ]

12:                                               ; preds = %5
  %13 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %14 = load %struct.http_message*, %struct.http_message** %7, align 8
  %15 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @op_get(%struct.mg_connection* %13, %struct.http_message* %14, %struct.mg_str* %15, i8* %16)
  br label %33

18:                                               ; preds = %5
  %19 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %20 = load %struct.http_message*, %struct.http_message** %7, align 8
  %21 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @op_set(%struct.mg_connection* %19, %struct.http_message* %20, %struct.mg_str* %21, i8* %22)
  br label %33

24:                                               ; preds = %5
  %25 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %26 = load %struct.http_message*, %struct.http_message** %7, align 8
  %27 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @op_del(%struct.mg_connection* %25, %struct.http_message* %26, %struct.mg_str* %27, i8* %28)
  br label %33

30:                                               ; preds = %5
  %31 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %32 = call i32 @mg_printf(%struct.mg_connection* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %24, %18, %12
  ret void
}

declare dso_local i32 @op_get(%struct.mg_connection*, %struct.http_message*, %struct.mg_str*, i8*) #1

declare dso_local i32 @op_set(%struct.mg_connection*, %struct.http_message*, %struct.mg_str*, i8*) #1

declare dso_local i32 @op_del(%struct.mg_connection*, %struct.http_message*, %struct.mg_str*, i8*) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
