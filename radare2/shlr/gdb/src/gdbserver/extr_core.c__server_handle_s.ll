; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_s.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"E01\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ds\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i32)*, i8*)* @_server_handle_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_server_handle_s(%struct.TYPE_7__* %0, i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i32)* %1, i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = call i64 @send_ack(%struct.TYPE_7__* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = call i32 @send_msg(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %13
  %22 = load i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i32)*, i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i32)** %6, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 %22(%struct.TYPE_7__* %23, i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 0)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = call i32 @send_msg(%struct.TYPE_7__* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %44

30:                                               ; preds = %21
  %31 = load i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i32)*, i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i32)** %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %35 = call i64 %31(%struct.TYPE_7__* %32, i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 64)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = call i32 @send_msg(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %43 = call i32 @send_msg(%struct.TYPE_7__* %41, i8* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %37, %27, %18, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @send_ack(%struct.TYPE_7__*) #1

declare dso_local i32 @send_msg(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
