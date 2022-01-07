; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_windbg.c___open.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_windbg.c___open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not initialize the IO backend\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not open the pipe\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Opened pipe %s with fd %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to initialize windbg context\0A\00", align 1
@r_io_plugin_windbg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32)* @__open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__open(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @__plugin_open(i32* %12, i8* %13, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %48

17:                                               ; preds = %4
  %18 = call i32 @iob_select(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %48

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 9
  %25 = call i8* @iob_open(i8* %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %48

30:                                               ; preds = %22
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 9
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %32, i8* %33)
  %35 = load i8*, i8** %10, align 8
  %36 = call i32* @windbg_ctx_new(i8* %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %48

41:                                               ; preds = %30
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = call i32* @r_io_desc_new(i32* %42, i32* @r_io_plugin_windbg, i8* %43, i32 %44, i32 %45, i32* %46)
  store i32* %47, i32** %5, align 8
  br label %48

48:                                               ; preds = %41, %39, %28, %20, %16
  %49 = load i32*, i32** %5, align 8
  ret i32* %49
}

declare dso_local i32 @__plugin_open(i32*, i8*, i32) #1

declare dso_local i32 @iob_select(i8*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i8* @iob_open(i8*) #1

declare dso_local i32* @windbg_ctx_new(i8*) #1

declare dso_local i32* @r_io_desc_new(i32*, i32*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
