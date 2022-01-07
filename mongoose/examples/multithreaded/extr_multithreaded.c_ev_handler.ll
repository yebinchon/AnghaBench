; ModuleID = '/home/carl/AnghaBench/mongoose/examples/multithreaded/extr_multithreaded.c_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/multithreaded/extr_multithreaded.c_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32* }
%struct.work_request = type { i64 }

@s_next_id = common dso_local global i64 0, align 8
@sock = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Writing worker sock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @ev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.work_request, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %41 [
    i32 130, label %11
    i32 128, label %18
    i32 129, label %32
  ]

11:                                               ; preds = %3
  %12 = load i64, i64* @s_next_id, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* @s_next_id, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %17 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  br label %41

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.work_request, %struct.work_request* %7, i32 0, i32 0
  %20 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %21 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = ptrtoint i32* %22 to i64
  store i64 %23, i64* %19, align 8
  %24 = load i32*, i32** @sock, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @write(i32 %26, %struct.work_request* %7, i32 8)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %18
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %34 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %39 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40, %3, %31, %11
  ret void
}

declare dso_local i32 @write(i32, %struct.work_request*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
