; ModuleID = '/home/carl/AnghaBench/radare2/libr/fs/extr_shell.c_handlePipes.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/fs/extr_shell.c_handlePipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot open %s for writing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i8*)* @handlePipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handlePipes(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 62)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %69

17:                                               ; preds = %4
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %10, align 8
  store i8 0, i8* %18, align 1
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @r_str_trim(i8* %20)
  %22 = load i8*, i8** %10, align 8
  %23 = call i8* @r_str_trim_dup(i8* %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 47
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i8* @r_str_newf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i8*, i8** %11, align 8
  store i8* %34, i8** %10, align 8
  br label %36

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32*, i32** %6, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32* @r_fs_open(i32* %37, i8* %38, i32 1)
  store i32* %39, i32** %12, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @eprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @free(i8* %45)
  store i32 1, i32* %5, align 4
  br label %70

47:                                               ; preds = %36
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = bitcast i8* %53 to i32*
  br label %57

55:                                               ; preds = %47
  %56 = load i32*, i32** %8, align 8
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i32* [ %54, %52 ], [ %56, %55 ]
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = call i32 @r_fs_write(i32* %48, i32* %49, i32 0, i32* %58, i32 %60)
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @r_fs_close(i32* %64, i32* %65)
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @r_fs_file_free(i32* %67)
  store i32 1, i32* %5, align 4
  br label %70

69:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %57, %42
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_str_trim(i8*) #1

declare dso_local i8* @r_str_trim_dup(i8*) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @r_fs_open(i32*, i8*, i32) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

declare dso_local i32 @r_fs_write(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_fs_close(i32*, i32*) #1

declare dso_local i32 @r_fs_file_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
