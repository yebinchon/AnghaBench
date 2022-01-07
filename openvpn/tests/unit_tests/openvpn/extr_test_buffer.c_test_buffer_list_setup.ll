; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_buffer.c_test_buffer_list_setup.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_buffer.c_test_buffer_list_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_buffer_list_aggregate_ctx = type { i8*, i8*, i8*, i8* }

@teststr1 = common dso_local global i8* null, align 8
@teststr2 = common dso_local global i8* null, align 8
@teststr3 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @test_buffer_list_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_buffer_list_setup(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_buffer_list_aggregate_ctx*, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %5 = call %struct.test_buffer_list_aggregate_ctx* @calloc(i32 1, i32 32)
  store %struct.test_buffer_list_aggregate_ctx* %5, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %6 = call i8* @buffer_list_new(i32 0)
  %7 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %7, i32 0, i32 3
  store i8* %6, i8** %8, align 8
  %9 = call i8* @buffer_list_new(i32 3)
  %10 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** @teststr1, align 8
  %16 = call i32 @buffer_list_push(i8* %14, i8* %15)
  %17 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** @teststr2, align 8
  %21 = call i32 @buffer_list_push(i8* %19, i8* %20)
  %22 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** @teststr3, align 8
  %26 = call i32 @buffer_list_push(i8* %24, i8* %25)
  %27 = call i8* @buffer_list_new(i32 2)
  %28 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @buffer_list_push(i8* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @buffer_list_push(i8* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %38 = call i8* @buffer_list_new(i32 2)
  %39 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  store i32 0, i32* %4, align 4
  %41 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @buffer_list_push_data(i8* %43, i32* %4, i32 0)
  %45 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.test_buffer_list_aggregate_ctx, %struct.test_buffer_list_aggregate_ctx* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @buffer_list_push_data(i8* %47, i32* %4, i32 0)
  %49 = load %struct.test_buffer_list_aggregate_ctx*, %struct.test_buffer_list_aggregate_ctx** %3, align 8
  %50 = bitcast %struct.test_buffer_list_aggregate_ctx* %49 to i8*
  %51 = load i8**, i8*** %2, align 8
  store i8* %50, i8** %51, align 8
  ret i32 0
}

declare dso_local %struct.test_buffer_list_aggregate_ctx* @calloc(i32, i32) #1

declare dso_local i8* @buffer_list_new(i32) #1

declare dso_local i32 @buffer_list_push(i8*, i8*) #1

declare dso_local i32 @buffer_list_push_data(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
