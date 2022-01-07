; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_getnummemendbang.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_getnummemendbang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getnummemendbang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnummemendbang(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* @err, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = sub nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 93
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @r_str_endswith(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %12, %8, %1
  store i32 1, i32* @err, align 4
  store i32 0, i32* %2, align 4
  br label %42

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sub nsw i32 %30, 2
  %32 = call i8* @r_str_ndup(i8* %28, i32 %31)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 1, i32* @err, align 4
  store i32 0, i32* %2, align 4
  br label %42

36:                                               ; preds = %27
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @getnum(i8* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %36, %35, %26
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_str_endswith(i8*, i8*) #1

declare dso_local i8* @r_str_ndup(i8*, i32) #1

declare dso_local i32 @getnum(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
