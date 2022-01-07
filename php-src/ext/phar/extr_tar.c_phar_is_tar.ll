; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_tar.c_phar_is_tar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_tar.c_phar_is_tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"<?php\00", align 1
@PHP_DIR_SEPARATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".tar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phar_is_tar(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [8 x i8], align 1
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %6, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @phar_tar_number(i8* %15, i32 8)
  store i64 %16, i64* %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

21:                                               ; preds = %2
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @memcpy(i8* %22, i8* %25, i32 8)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @memset(i8* %29, i8 signext 32, i32 8)
  %31 = load i64, i64* %7, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @phar_tar_checksum(i8* %32, i32 512)
  %34 = icmp eq i64 %31, %33
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %8, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %41 = call i32 @memcpy(i8* %39, i8* %40, i32 8)
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @PHP_DIR_SEPARATOR, align 4
  %44 = call i8* @strrchr(i8* %42, i32 %43)
  store i8* %44, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %21
  %47 = load i8*, i8** %10, align 8
  store i8* %47, i8** %5, align 8
  br label %48

48:                                               ; preds = %46, %21
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %5, align 8
  %53 = call i8* @strstr(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %53, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %55
  store i32 1, i32* %3, align 4
  br label %71

68:                                               ; preds = %61, %51, %48
  %69 = load i64, i64* %8, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %67, %20
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @phar_tar_number(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @phar_tar_checksum(i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
