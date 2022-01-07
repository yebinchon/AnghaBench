; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gd2.c__gd2ReadChunk.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gd2.c__gd2ReadChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Positioning in file to %d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Already Positioned in file to %d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Reading file\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Got %d bytes. Uncompressing into buffer of %d bytes\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Error %d from uncompress\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Got chunk\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*, i64*, i32*)* @_gd2ReadChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gd2ReadChunk(i32 %0, i8* %1, i32 %2, i8* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = call i32 @gdTell(i32* %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @GD2_DBG(i32 %21)
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @gdSeek(i32* %23, i32 %24)
  br label %30

26:                                               ; preds = %6
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i32 @GD2_DBG(i32 %28)
  br label %30

30:                                               ; preds = %26, %19
  %31 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @GD2_DBG(i32 %31)
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @gdGetBuf(i8* %33, i32 %34, i32* %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %7, align 4
  br label %65

41:                                               ; preds = %30
  %42 = load i32, i32* %10, align 4
  %43 = load i64*, i64** %12, align 8
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %45)
  %47 = call i32 @GD2_DBG(i32 %46)
  %48 = load i8*, i8** %11, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @uncompress(i8* %48, i64* %49, i8* %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @Z_OK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load i32, i32* %14, align 4
  %58 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = call i32 @GD2_DBG(i32 %58)
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %7, align 4
  br label %65

61:                                               ; preds = %41
  %62 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %63 = call i32 @GD2_DBG(i32 %62)
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %61, %56, %39
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @gdTell(i32*) #1

declare dso_local i32 @GD2_DBG(i32) #1

declare dso_local i32 @gd_error(i8*, ...) #1

declare dso_local i32 @gdSeek(i32*, i32) #1

declare dso_local i32 @gdGetBuf(i8*, i32, i32*) #1

declare dso_local i32 @uncompress(i8*, i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
