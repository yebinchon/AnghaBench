; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_decode_image_wmf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_decode_image_wmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@InvalidParameter = common dso_local global i64 0, align 8
@Ok = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not load metafile\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"<-- %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32**)* @decode_image_wmf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_image_wmf(i32* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32**, i32*** %5, align 8
  %10 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %8, i32** %9)
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32**, i32*** %5, align 8
  %15 = icmp ne i32** %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %2
  %17 = load i64, i64* @InvalidParameter, align 8
  store i64 %17, i64* %3, align 8
  br label %34

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @load_wmf(i32* %19, i32** %6)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @Ok, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %3, align 8
  br label %34

27:                                               ; preds = %18
  %28 = load i32*, i32** %6, align 8
  %29 = load i32**, i32*** %5, align 8
  store i32* %28, i32** %29, align 8
  %30 = load i32**, i32*** %5, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %31)
  %33 = load i64, i64* @Ok, align 8
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %27, %24, %16
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @load_wmf(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
