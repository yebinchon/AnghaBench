; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_qOffsets.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_qOffsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"TextSeg=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"dm\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64 (i32*, i8*, i8*, i8*, i32)*, i8*)* @_server_handle_qOffsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_server_handle_qOffsets(i32* %0, i64 (i32*, i8*, i8*, i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64 (i32*, i8*, i8*, i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i64 (i32*, i8*, i8*, i8*, i32)* %1, i64 (i32*, i8*, i8*, i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %12 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8* %14, i8** %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @send_ack(i32* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load i64 (i32*, i8*, i8*, i8*, i32)*, i64 (i32*, i8*, i8*, i8*, i32)** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sub i64 64, %28
  %30 = sub i64 %29, 1
  %31 = trunc i64 %30 to i32
  %32 = call i64 %20(i32* %21, i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @send_msg(i32* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %41

37:                                               ; preds = %19
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %40 = call i32 @send_msg(i32* %38, i8* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %34, %18
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i64 @send_ack(i32*) #1

declare dso_local i32 @send_msg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
