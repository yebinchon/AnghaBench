; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_open_gl.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_open_gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@open_gl.NAMES = internal global [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [11 x i8] c"libGL.so.1\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"libGL.so\00", align 1
@RTLD_NOW = common dso_local global i32 0, align 4
@RTLD_GLOBAL = common dso_local global i32 0, align 4
@libGL = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"glXGetProcAddressARB\00", align 1
@gladGetProcAddressPtr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @open_gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_gl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %26, %0
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = icmp ult i64 %5, 2
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* @open_gl.NAMES, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @RTLD_NOW, align 4
  %13 = load i32, i32* @RTLD_GLOBAL, align 4
  %14 = or i32 %12, %13
  %15 = call i32* @dlopen(i8* %11, i32 %14)
  store i32* %15, i32** @libGL, align 8
  %16 = load i32*, i32** @libGL, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %7
  %19 = load i32*, i32** @libGL, align 8
  %20 = call i64 @dlsym(i32* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** @gladGetProcAddressPtr, align 8
  %22 = load i32*, i32** @gladGetProcAddressPtr, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %1, align 4
  br label %30

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %3

29:                                               ; preds = %3
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32* @dlopen(i8*, i32) #1

declare dso_local i64 @dlsym(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
