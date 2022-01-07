; ModuleID = '/home/carl/AnghaBench/radare2/libr/lang/extr_pv.c___run.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/lang/extr_pv.c___run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c".tmp.v\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@r2v = common dso_local global i8* null, align 8
@vsk = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Cannot open .tmp.v\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @__run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__run(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32* @r_sandbox_fopen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load i8*, i8** @r2v, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @fputs(i8* %13, i32* %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @fputs(i8* %19, i32* %20)
  br label %31

22:                                               ; preds = %12
  %23 = load i8*, i8** @vsk, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @fputs(i8* %23, i32* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @fputs(i8* %26, i32* %27)
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %29)
  br label %31

31:                                               ; preds = %22, %18
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @fclose(i32* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @lang_v_file(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @r_file_rm(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %39

37:                                               ; preds = %3
  %38 = call i32 @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32* @r_sandbox_fopen(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @lang_v_file(i32*, i8*) #1

declare dso_local i32 @r_file_rm(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
