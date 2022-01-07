; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_ar.c_r_io_ar_open.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_ar.c_r_io_ar_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@r_io_plugin_ar = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32)* @r_io_ar_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @r_io_ar_open(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i8* @strstr(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = getelementptr inbounds i8, i8* %17, i64 3
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call i8* @strstr(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i8*, i8** %12, align 8
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8* %26, i8** %12, align 8
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i32* @ar_open_file(i8* %28, i8* %29)
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = call i32* @r_io_desc_new(i32* %34, i32* @r_io_plugin_ar, i8* %35, i32 %36, i32 %37, i32* %38)
  store i32* %39, i32** %9, align 8
  br label %40

40:                                               ; preds = %33, %27
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i32*, i32** %9, align 8
  ret i32* %43
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32* @ar_open_file(i8*, i8*) #1

declare dso_local i32* @r_io_desc_new(i32*, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
