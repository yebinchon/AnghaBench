; ModuleID = '/home/carl/AnghaBench/mongoose/examples/multithreaded/extr_multithreaded.c_on_work_complete.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/multithreaded/extr_multithreaded.c_on_work_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32*, i32 }
%struct.work_result = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"conn_id:%lu sleep:%d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Content-Type: text/plain\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @on_work_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_work_complete(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca %struct.mg_connection*, align 8
  %9 = alloca %struct.work_result*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %12 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.mg_connection* @mg_next(i32 %13, %struct.mg_connection* null)
  store %struct.mg_connection* %14, %struct.mg_connection** %8, align 8
  br label %15

15:                                               ; preds = %52, %3
  %16 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %17 = icmp ne %struct.mg_connection* %16, null
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  %19 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %20 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.work_result*
  store %struct.work_result* %25, %struct.work_result** %9, align 8
  %26 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %27 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = ptrtoint i32* %28 to i64
  %30 = load %struct.work_result*, %struct.work_result** %9, align 8
  %31 = getelementptr inbounds %struct.work_result, %struct.work_result* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %23
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %36 = load %struct.work_result*, %struct.work_result** %9, align 8
  %37 = getelementptr inbounds %struct.work_result, %struct.work_result* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.work_result*, %struct.work_result** %9, align 8
  %40 = getelementptr inbounds %struct.work_result, %struct.work_result* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %41)
  %43 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %45 = call i32 @strlen(i8* %44)
  %46 = call i32 @mg_send_head(%struct.mg_connection* %43, i32 200, i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %49 = call i32 @mg_printf(%struct.mg_connection* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %34, %23
  br label %51

51:                                               ; preds = %50, %18
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %54 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %57 = call %struct.mg_connection* @mg_next(i32 %55, %struct.mg_connection* %56)
  store %struct.mg_connection* %57, %struct.mg_connection** %8, align 8
  br label %15

58:                                               ; preds = %15
  ret void
}

declare dso_local %struct.mg_connection* @mg_next(i32, %struct.mg_connection*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i32) #1

declare dso_local i32 @mg_send_head(%struct.mg_connection*, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
