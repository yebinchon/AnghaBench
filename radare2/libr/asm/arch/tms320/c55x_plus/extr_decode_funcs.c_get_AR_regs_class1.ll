; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_decode_funcs.c_get_AR_regs_class1.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_decode_funcs.c_get_AR_regs_class1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"*ar-%ld\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"*ar+%ld\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"*ar%ld(t0)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"*ar%ld\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"*(ar%ld-t0)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"*(ar%ld-t1)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"*(ar%ld+t0)\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"*(ar%ld+t1)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_AR_regs_class1(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = ashr i32 %6, 4
  %8 = and i32 %7, 7
  store i32 %8, i32* %4, align 4
  %9 = call i64 @calloc(i32 1, i32 50)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %66

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %64 [
    i32 0, label %16
    i32 1, label %22
    i32 2, label %28
    i32 3, label %34
    i32 4, label %40
    i32 5, label %46
    i32 6, label %52
    i32 7, label %58
  ]

16:                                               ; preds = %14
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = and i64 %19, 15
  %21 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %64

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, 15
  %27 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  br label %64

28:                                               ; preds = %14
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = and i64 %31, 15
  %33 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  br label %64

34:                                               ; preds = %14
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 15
  %39 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  br label %64

40:                                               ; preds = %14
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = and i64 %43, 15
  %45 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %44)
  br label %64

46:                                               ; preds = %14
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = and i64 %49, 15
  %51 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %50)
  br label %64

52:                                               ; preds = %14
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = and i64 %55, 15
  %57 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %56)
  br label %64

58:                                               ; preds = %14
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = and i64 %61, 15
  %63 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %14, %58, %52, %46, %40, %34, %28, %22, %16
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %2, align 8
  br label %66

66:                                               ; preds = %64, %13
  %67 = load i8*, i8** %2, align 8
  ret i8* %67
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
