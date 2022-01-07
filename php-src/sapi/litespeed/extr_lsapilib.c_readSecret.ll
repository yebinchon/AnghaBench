; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_readSecret.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_readSecret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"LSAPI: failed to open secret file: %s!\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"LSAPI: failed to check state of file: %s!\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"LSAPI: file permission check failure: %s\0A\00", align 1
@s_secret = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"LSAPI: failed to read secret from secret file: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @readSecret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readSecret(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = call i32 @open(i8* %6, i32 %7, i32 384)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @lsapi_log(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 -1, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @fstat(i32 %15, %struct.stat* %4)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @lsapi_log(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @close(i32 %21)
  store i32 -1, i32* %2, align 4
  br label %46

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 63
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @lsapi_log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @close(i32 %31)
  store i32 -1, i32* %2, align 4
  br label %46

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @s_secret, align 4
  %36 = call i32 @read(i32 %34, i32 %35, i32 16)
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @lsapi_log(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @close(i32 %41)
  store i32 -1, i32* %2, align 4
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @close(i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %38, %28, %18, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @lsapi_log(i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
