; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_ques.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_ques.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64 (i32*, i8*, i8*, i8*, i32)*, i8*)* @_server_handle_ques to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_server_handle_ques(i32* %0, i64 (i32*, i8*, i8*, i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64 (i32*, i8*, i8*, i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i64 (i32*, i8*, i8*, i8*, i32)* %1, i64 (i32*, i8*, i8*, i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = bitcast [64 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 64, i1 false)
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @send_ack(i32* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %28

14:                                               ; preds = %3
  %15 = load i64 (i32*, i8*, i8*, i8*, i32)*, i64 (i32*, i8*, i8*, i8*, i32)** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %19 = call i64 %15(i32* %16, i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %18, i32 64)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @send_msg(i32* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %27 = call i32 @send_msg(i32* %25, i8* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %21, %13
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @send_ack(i32*) #2

declare dso_local i32 @send_msg(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
