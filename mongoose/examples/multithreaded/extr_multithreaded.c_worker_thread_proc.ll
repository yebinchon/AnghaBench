; ModuleID = '/home/carl/AnghaBench/mongoose/examples/multithreaded/extr_multithreaded.c_worker_thread_proc.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/multithreaded/extr_multithreaded.c_worker_thread_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.work_request = type { i32, i32 }
%struct.work_result = type { i32, i32 }

@s_received_signal = common dso_local global i64 0, align 8
@sock = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Reading worker sock\00", align 1
@on_work_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @worker_thread_proc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mg_mgr*, align 8
  %4 = alloca %struct.work_request, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.work_result, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mg_mgr*
  store %struct.mg_mgr* %8, %struct.mg_mgr** %3, align 8
  %9 = bitcast %struct.work_request* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  br label %10

10:                                               ; preds = %21, %1
  %11 = load i64, i64* @s_received_signal, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load i32*, i32** @sock, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @read(i32 %16, %struct.work_request* %4, i32 8)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = call i32 (...) @rand()
  %23 = srem i32 %22, 10
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @sleep(i32 %24)
  %26 = getelementptr inbounds %struct.work_result, %struct.work_result* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.work_request, %struct.work_request* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds %struct.work_result, %struct.work_result* %6, i32 0, i32 1
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %29, align 4
  %31 = load %struct.mg_mgr*, %struct.mg_mgr** %3, align 8
  %32 = load i32, i32* @on_work_complete, align 4
  %33 = bitcast %struct.work_result* %6 to i8*
  %34 = call i32 @mg_broadcast(%struct.mg_mgr* %31, i32 %32, i8* %33, i32 8)
  br label %10

35:                                               ; preds = %10
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @read(i32, %struct.work_request*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @mg_broadcast(%struct.mg_mgr*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
