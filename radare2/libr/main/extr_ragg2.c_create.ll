; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_ragg2.c_create.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_ragg2.c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Failed to write buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Cannot create binary for this format '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32*, i32)* @create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create(i8* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = call i32* (...) @r_bin_new()
  store i32* %16, i32** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @r_bin_arch_options_init(i32* %12, i8* %17, i32 %18)
  %20 = load i32*, i32** %11, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32* @r_bin_create(i32* %20, i8* %21, i32* %22, i32 %23, i32* null, i32 0, i32* %12)
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %5
  %28 = load i32*, i32** %13, align 8
  %29 = call i32* @r_buf_data(i32* %28, i64* %14)
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i64 @write(i32 1, i32* %30, i64 %31)
  %33 = load i64, i64* %14, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %27
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @r_buf_free(i32* %38)
  br label %43

40:                                               ; preds = %5
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @r_bin_free(i32* %44)
  ret i32 0
}

declare dso_local i32* @r_bin_new(...) #1

declare dso_local i32 @r_bin_arch_options_init(i32*, i8*, i32) #1

declare dso_local i32* @r_bin_create(i32*, i8*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32* @r_buf_data(i32*, i64*) #1

declare dso_local i64 @write(i32, i32*, i64) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_buf_free(i32*) #1

declare dso_local i32 @r_bin_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
