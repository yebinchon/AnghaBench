; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_winedbg.c___open.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_winedbg.c___open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"winedbg '%s'\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Wine-dbg is ready to go!\0A\00", align 1
@r_io_plugin_winedbg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Can't find the Wine-dbg prompt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32)* @__open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__open(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @__plugin_open(i32* %14, i8* %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %4
  %19 = load i64, i64* @gs, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32* null, i32** %5, align 8
  br label %52

22:                                               ; preds = %18
  %23 = call i64 @r_socket_new(i32 0)
  store i64 %23, i64* @gs, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 10
  %26 = call i8* @r_str_newf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i8* %26, i8** %10, align 8
  %27 = load i64, i64* @gs, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @r_socket_spawn(i64 %27, i8* %28, i32 1000)
  store i32 %29, i32* %11, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  store i32* null, i32** %5, align 8
  br label %52

35:                                               ; preds = %22
  %36 = call i8* @runcmd(i32* null)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  store i32 7, i32* %13, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @free(i8* %40)
  %42 = call i32 @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i64, i64* @gs, align 8
  %48 = call i32* @r_io_desc_new(i32* %43, i32* @r_io_plugin_winedbg, i8* %44, i32 %45, i32 %46, i64 %47)
  store i32* %48, i32** %5, align 8
  br label %52

49:                                               ; preds = %35
  %50 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %4
  store i32* null, i32** %5, align 8
  br label %52

52:                                               ; preds = %51, %39, %34, %21
  %53 = load i32*, i32** %5, align 8
  ret i32* %53
}

declare dso_local i64 @__plugin_open(i32*, i8*, i32) #1

declare dso_local i64 @r_socket_new(i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*) #1

declare dso_local i32 @r_socket_spawn(i64, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @runcmd(i32*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32* @r_io_desc_new(i32*, i32*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
