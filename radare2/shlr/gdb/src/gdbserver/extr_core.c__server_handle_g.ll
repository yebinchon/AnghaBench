; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_g.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"E01\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"dr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32 (i32*, i8*, i8*, i8*, i32)*, i8*)* @_server_handle_g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_server_handle_g(i32* %0, i32 (i32*, i8*, i8*, i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32 (i32*, i8*, i8*, i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 (i32*, i8*, i8*, i8*, i32)* %1, i32 (i32*, i8*, i8*, i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 4096, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @send_ack(i32* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %45

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  %17 = call i8* @malloc(i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @send_msg(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %45

22:                                               ; preds = %15
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @memset(i8* %23, i32 0, i32 %24)
  %26 = load i32 (i32*, i8*, i8*, i8*, i32)*, i32 (i32*, i8*, i8*, i8*, i32)** %6, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 %26(i32* %27, i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @send_msg(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %45

38:                                               ; preds = %22
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @send_msg(i32* %39, i8* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %38, %33, %19, %14
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @send_ack(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @send_msg(i32*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
