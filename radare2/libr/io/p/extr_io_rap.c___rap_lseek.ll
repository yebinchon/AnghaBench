; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_rap.c___rap_lseek.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_rap.c___rap_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RMT_SEEK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Truncated socket read\0A\00", align 1
@RMT_REPLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unexpected lseek reply (%02x -> %02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @__rap_lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rap_lseek(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [10 x i32], align 16
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @RIORAP_FD(i32* %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32, i32* @RMT_SEEK, align 4
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  store i32 %15, i32* %16, align 16
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @r_write_be64(i32* %20, i32 %21)
  %23 = load i32*, i32** %10, align 8
  %24 = bitcast [10 x i32]* %11 to i32**
  %25 = call i32 @r_socket_write(i32* %23, i32** %24, i32 10)
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @r_socket_flush(i32* %26)
  %28 = load i32*, i32** %10, align 8
  %29 = bitcast [10 x i32]* %11 to i32*
  %30 = call i32 @r_socket_read_block(i32* %28, i32* %29, i32 9)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 9
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %52

35:                                               ; preds = %4
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = load i32, i32* @RMT_SEEK, align 4
  %39 = load i32, i32* @RMT_REPLY, align 4
  %40 = or i32 %38, %39
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = load i32, i32* @RMT_SEEK, align 4
  %46 = load i32, i32* @RMT_REPLY, align 4
  %47 = or i32 %45, %46
  %48 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  store i32 -1, i32* %5, align 4
  br label %52

49:                                               ; preds = %35
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  %51 = call i32 @r_read_at_be64(i32* %50, i32 1)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %42, %33
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32* @RIORAP_FD(i32*) #1

declare dso_local i32 @r_write_be64(i32*, i32) #1

declare dso_local i32 @r_socket_write(i32*, i32**, i32) #1

declare dso_local i32 @r_socket_flush(i32*) #1

declare dso_local i32 @r_socket_read_block(i32*, i32*, i32) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_read_at_be64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
