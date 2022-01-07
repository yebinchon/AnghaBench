; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar7/files/drivers/mtd/extr_titanpart.c_titan_get_single_image.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar7/files/drivers/mtd/extr_titanpart.c_titan_get_single_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"titan: %s variable not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"titan: invalid bootcfg format, %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @titan_get_single_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @titan_get_single_image(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [30 x i8], align 16
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %15, %3
  store i32 -1, i32* %4, align 4
  br label %51

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @prom_getenv(i8* %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 -1, i32* %4, align 4
  br label %51

30:                                               ; preds = %22
  %31 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  store i8* %31, i8** %12, align 8
  %32 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strncpy(i8* %32, i8* %33, i32 30)
  %35 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 29
  store i8 0, i8* %35, align 1
  %36 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %36, i8** %10, align 8
  %37 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40, %30
  %44 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %45 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  store i32 -1, i32* %4, align 4
  br label %51

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @titan_parse_env_address(i8* %47, i32* %48, i32* %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %43, %27, %21
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i8* @prom_getenv(i8*) #1

declare dso_local i32 @printk(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @titan_parse_env_address(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
