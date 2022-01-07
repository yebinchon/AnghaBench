; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_rap.c___rap_read.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_rap.c___rap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RMT_MAX = common dso_local global i32 0, align 4
@RMT_READ = common dso_local global i32 0, align 4
@RMT_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"__rap_read: Unexpected rap read reply (%d=0x%02x) expected (%d=0x%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"__rap_read: Unexpected data size %d vs %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @__rap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rap_read(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [5 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32* @RIORAP_FD(i32* %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @RMT_MAX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @RMT_MAX, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %4
  %23 = load i32, i32* @RMT_READ, align 4
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  store i32 %23, i32* %24, align 16
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @r_write_be32(i32* %26, i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %31 = call i32 @r_socket_write(i32* %29, i32* %30, i32 5)
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @r_socket_flush(i32* %32)
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %36 = call i32 @r_socket_read_block(i32* %34, i32* %35, i32 5)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 5
  br i1 %38, label %46, label %39

39:                                               ; preds = %22
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = load i32, i32* @RMT_READ, align 4
  %43 = load i32, i32* @RMT_REPLY, align 4
  %44 = or i32 %42, %43
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %39, %22
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = load i32, i32* @RMT_READ, align 4
  %51 = load i32, i32* @RMT_REPLY, align 4
  %52 = or i32 %50, %51
  %53 = call i32 (i8*, i32, i32, ...) @eprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %49, i32 2, i32 %52)
  store i32 -1, i32* %5, align 4
  br label %70

54:                                               ; preds = %39
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %56 = call i32 @r_read_at_be32(i32* %55, i32 1)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i8*, i32, i32, ...) @eprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  store i32 -1, i32* %5, align 4
  br label %70

64:                                               ; preds = %54
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @r_socket_read_block(i32* %65, i32* %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %64, %60, %46
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32* @RIORAP_FD(i32*) #1

declare dso_local i32 @r_write_be32(i32*, i32) #1

declare dso_local i32 @r_socket_write(i32*, i32*, i32) #1

declare dso_local i32 @r_socket_flush(i32*) #1

declare dso_local i32 @r_socket_read_block(i32*, i32*, i32) #1

declare dso_local i32 @eprintf(i8*, i32, i32, ...) #1

declare dso_local i32 @r_read_at_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
