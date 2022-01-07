; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_magic.c_info_from_stat.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_magic.c_info_from_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"writable, \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"executable, \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"regular file, \00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"no read permission\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i16)* @info_from_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @info_from_stat(i32* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i16, align 2
  store i32* %0, i32** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load i16, i16* %5, align 2
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 146
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @file_printf(i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %43

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i16, i16* %5, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 73
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @file_printf(i32* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %43

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %16
  %28 = load i16, i16* %5, align 2
  %29 = call i64 @S_ISREG(i16 zeroext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @file_printf(i32* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %43

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @file_printf(i32* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41, %35, %25, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @file_printf(i32*, i8*) #1

declare dso_local i64 @S_ISREG(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
