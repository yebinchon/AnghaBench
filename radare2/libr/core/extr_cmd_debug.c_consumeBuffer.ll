; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_consumeBuffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_consumeBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@R_BUF_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @consumeBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @consumeBuffer(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %10
  br label %41

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @R_BUF_SET, align 4
  %26 = call i32 @r_buf_seek(i32* %24, i32 0, i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %36, %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @r_buf_size(i32* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @r_buf_read8(i32* %33)
  %35 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %27

39:                                               ; preds = %27
  %40 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %16
  ret void
}

declare dso_local i32 @r_cons_printf(i8*, ...) #1

declare dso_local i32 @r_buf_seek(i32*, i32, i32) #1

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @r_buf_read8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
