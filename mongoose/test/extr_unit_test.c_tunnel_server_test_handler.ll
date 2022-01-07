; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_tunnel_server_test_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_tunnel_server_test_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"HTTP/1.1 200 OK\0D\0ATransfer-Encoding: chunked\0D\0A\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tunnel_server_test_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %68 [
    i32 129, label %9
    i32 128, label %32
    i32 130, label %63
  ]

9:                                                ; preds = %3
  %10 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %11 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %69

15:                                               ; preds = %9
  %16 = call i64 @malloc(i32 4)
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %19 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %21 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to i32*
  store i32 0, i32* %23, align 4
  %24 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %25 = call i32 (...) @mg_time()
  %26 = sitofp i32 %25 to double
  %27 = fadd double %26, 1.000000e-02
  %28 = fptosi double %27 to i32
  %29 = call i32 @mg_set_timer(%struct.mg_connection* %24, i32 %28)
  %30 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %31 = call i32 @mg_printf(%struct.mg_connection* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %69

32:                                               ; preds = %3
  %33 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %34 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %35 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = call i32 @mg_printf_http_chunk(%struct.mg_connection* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %41 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %42 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %55

47:                                               ; preds = %32
  %48 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %49 = call i32 @mg_send_http_chunk(%struct.mg_connection* %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %50 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %51 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %52 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %62

55:                                               ; preds = %32
  %56 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %57 = call i32 (...) @mg_time()
  %58 = sitofp i32 %57 to double
  %59 = fadd double %58, 1.000000e-02
  %60 = fptosi double %59 to i32
  %61 = call i32 @mg_set_timer(%struct.mg_connection* %56, i32 %60)
  br label %62

62:                                               ; preds = %55, %47
  br label %69

63:                                               ; preds = %3
  %64 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %65 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @free(i8* %66)
  br label %68

68:                                               ; preds = %3, %63
  br label %69

69:                                               ; preds = %68, %62, %15, %14
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @mg_set_timer(%struct.mg_connection*, i32) #1

declare dso_local i32 @mg_time(...) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*) #1

declare dso_local i32 @mg_printf_http_chunk(%struct.mg_connection*, i8*, i32) #1

declare dso_local i32 @mg_send_http_chunk(%struct.mg_connection*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
