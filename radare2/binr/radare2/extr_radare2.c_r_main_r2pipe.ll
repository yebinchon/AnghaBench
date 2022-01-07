; ModuleID = '/home/carl/AnghaBench/radare2/binr/radare2/extr_radare2.c_r_main_r2pipe.c'
source_filename = "/home/carl/AnghaBench/radare2/binr/radare2/extr_radare2.c_r_main_r2pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"R2PIPE_IN\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"R2PIPE_OUT\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Error: R2PIPE_(IN|OUT) environment not set\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Usage: r2 -c '!*r2p x' # run commands via r2pipe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @r_main_r2pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_main_r2pipe(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = call i8* @r_sys_getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %7, align 8
  %12 = call i8* @r_sys_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @atoi(i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @atoi(i8* %21)
  store i32 %22, i32* %10, align 4
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %36, %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i8**, i8*** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @r2cmd(i32 %28, i32 %29, i8* %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %23

39:                                               ; preds = %23
  br label %43

40:                                               ; preds = %15, %2
  %41 = call i32 @eprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @eprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i8* @r_sys_getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @r2cmd(i32, i32, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
