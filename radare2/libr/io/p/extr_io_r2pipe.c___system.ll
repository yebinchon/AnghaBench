; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_r2pipe.c___system.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_r2pipe.c___system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"r2pipe_write: error\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"RESULT %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i8*)* @__system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__system(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %19, %16, %3
  %23 = phi i1 [ false, %16 ], [ false, %3 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @r_return_val_if_fail(i32 %24, i32* null)
  %26 = call i32* (...) @pj_new()
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @pj_o(i32* %27)
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @pj_ks(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @pj_ks(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @pj_end(i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i8* @pj_string(i32* %36)
  store i8* %37, i8** %9, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @R2P(i32* %38)
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @r2pipe_write(i32 %39, i8* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @pj_free(i32* %42)
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %22
  %47 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %66

48:                                               ; preds = %22
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @R2P(i32* %49)
  %51 = call i8* @r2pipe_read(i32 %50)
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i8* @strstr(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 6
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i32 @atoi(i8* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %56, %48
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @free(i8* %64)
  store i8* null, i8** %4, align 8
  br label %66

66:                                               ; preds = %63, %46
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

declare dso_local i32 @r_return_val_if_fail(i32, i32*) #1

declare dso_local i32* @pj_new(...) #1

declare dso_local i32 @pj_o(i32*) #1

declare dso_local i32 @pj_ks(i32*, i8*, i8*) #1

declare dso_local i32 @pj_end(i32*) #1

declare dso_local i8* @pj_string(i32*) #1

declare dso_local i32 @r2pipe_write(i32, i8*) #1

declare dso_local i32 @R2P(i32*) #1

declare dso_local i32 @pj_free(i32*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i8* @r2pipe_read(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
