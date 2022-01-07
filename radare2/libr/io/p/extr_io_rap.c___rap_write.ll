; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_rap.c___rap_write.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_rap.c___rap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RMT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"__rap_write: malloc failed\0A\00", align 1
@RMT_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"__rap_write: error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @__rap_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rap_write(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @RIORAP_FD(i32* %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %5, align 4
  br label %71

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @RMT_MAX, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @RMT_MAX, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 5
  %28 = call i64 @malloc(i32 %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = call i32 @eprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %71

33:                                               ; preds = %25
  %34 = load i32, i32* @RMT_WRITE, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @r_write_be32(i32* %38, i32 %39)
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @memcpy(i32* %42, i32* %43, i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 5
  %50 = call i32 @r_socket_write(i32* %46, i32* %47, i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @r_socket_flush(i32* %51)
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @r_socket_read(i32* %53, i32* %54, i32 5)
  %56 = icmp ne i32 %55, 5
  br i1 %56, label %57, label %59

57:                                               ; preds = %33
  %58 = call i32 @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %67

59:                                               ; preds = %33
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = call i32 @r_read_be32(i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store i32 -1, i32* %12, align 4
  br label %66

66:                                               ; preds = %65, %59
  br label %67

67:                                               ; preds = %66, %57
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @free(i32* %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %31, %17
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32* @RIORAP_FD(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_write_be32(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @r_socket_write(i32*, i32*, i32) #1

declare dso_local i32 @r_socket_flush(i32*) #1

declare dso_local i32 @r_socket_read(i32*, i32*, i32) #1

declare dso_local i32 @r_read_be32(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
