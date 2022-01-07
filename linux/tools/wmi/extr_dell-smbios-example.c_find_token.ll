; ModuleID = '/home/carl/AnghaBench/linux/tools/wmi/extr_dell-smbios-example.c_find_token.c'
source_filename = "/home/carl/AnghaBench/linux/tools/wmi/extr_dell-smbios-example.c_find_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"%s/%04x_value\00", align 1
@token_sysfs = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"sprintf value failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"failed to open %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s/%04x_location\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"sprintf location failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @find_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_token(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [60 x i8], align 16
  %9 = alloca [57 x i8], align 16
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = getelementptr inbounds [57 x i8], [57 x i8]* %9, i64 0, i64 0
  %14 = load i8*, i8** @token_sysfs, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %70

21:                                               ; preds = %3
  %22 = getelementptr inbounds [57 x i8], [57 x i8]* %9, i64 0, i64 0
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds [57 x i8], [57 x i8]* %9, i64 0, i64 0
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  store i32 2, i32* %4, align 4
  br label %70

29:                                               ; preds = %21
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @fread(i8* %30, i32 1, i32 4096, i32* %31)
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @fclose(i32* %33)
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %36 = call i64 @strtol(i8* %35, i32* null, i32 16)
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds [60 x i8], [60 x i8]* %8, i64 0, i64 0
  %40 = load i8*, i8** @token_sysfs, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %70

47:                                               ; preds = %29
  %48 = getelementptr inbounds [60 x i8], [60 x i8]* %8, i64 0, i64 0
  %49 = call i32* @fopen(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds [60 x i8], [60 x i8]* %8, i64 0, i64 0
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  store i32 2, i32* %4, align 4
  br label %70

55:                                               ; preds = %47
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @fread(i8* %56, i32 1, i32 4096, i32* %57)
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @fclose(i32* %59)
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %62 = call i64 @strtol(i8* %61, i32* null, i32 16)
  %63 = trunc i64 %62 to i32
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %70

69:                                               ; preds = %55
  store i32 2, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %68, %52, %45, %26, %19
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
