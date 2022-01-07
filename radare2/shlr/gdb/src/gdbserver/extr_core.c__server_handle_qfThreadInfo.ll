; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_qfThreadInfo.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_qfThreadInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"dpt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32 (%struct.TYPE_9__*, i8*, i8*, i8*, i64)*, i8*)* @_server_handle_qfThreadInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_server_handle_qfThreadInfo(%struct.TYPE_9__* %0, i32 (%struct.TYPE_9__*, i8*, i8*, i8*, i64)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32 (%struct.TYPE_9__*, i8*, i8*, i8*, i64)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 (%struct.TYPE_9__*, i8*, i8*, i8*, i64)* %1, i32 (%struct.TYPE_9__*, i8*, i8*, i8*, i64)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = call i32 @send_ack(%struct.TYPE_9__* %15)
  store i32 %16, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %42

19:                                               ; preds = %3
  %20 = load i64, i64* %10, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %42

24:                                               ; preds = %19
  %25 = load i32 (%struct.TYPE_9__*, i8*, i8*, i8*, i64)*, i32 (%struct.TYPE_9__*, i8*, i8*, i8*, i64)** %6, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 %25(%struct.TYPE_9__* %26, i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %28, i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @free(i8* %33)
  store i32 -1, i32* %4, align 4
  br label %42

35:                                               ; preds = %24
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @send_msg(%struct.TYPE_9__* %36, i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %32, %23, %18
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @send_ack(%struct.TYPE_9__*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @send_msg(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
