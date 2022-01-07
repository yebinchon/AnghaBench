; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_GetDataBlock.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_GetDataBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VERBOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GD_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"[GetDataBlock returning %d: %s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @GetDataBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetDataBlock(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @GetDataBlock_(i32* %10, i8* %11, i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* @VERBOSE, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %3
  store i8* null, i8** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 3, %20
  %22 = call i8* @safe_emalloc(i32 %21, i32 1, i32 1)
  store i8* %22, i8** %9, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %39, %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 3, %30
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 zeroext %37)
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %23

42:                                               ; preds = %23
  br label %45

43:                                               ; preds = %16
  %44 = call i8* @estrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = load i32, i32* @GD_NOTICE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @gd_error_ex(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %47, i8* %48)
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @efree(i8* %50)
  br label %52

52:                                               ; preds = %45, %3
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @GetDataBlock_(i32*, i8*, i32*) #1

declare dso_local i8* @safe_emalloc(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @gd_error_ex(i32, i8*, i32, i8*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
