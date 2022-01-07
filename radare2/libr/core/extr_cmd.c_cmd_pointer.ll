; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_pointer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@help_msg_star = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"wv %s@%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"wx %s@%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"?v [%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_pointer(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  store i32 1, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @r_str_trim_ro(i8* %12)
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %19, %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 63
  br i1 %30, label %31, label %36

31:                                               ; preds = %26, %22
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @help_msg_star, align 4
  %34 = call i32 @r_core_cmd_help(i32* %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %68

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @strdup(i8* %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 61)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %36
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  store i8 0, i8* %44, align 1
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 (i32*, i8*, i8*, ...) @r_core_cmdf(i32* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %51, i8* %52)
  store i32 %53, i32* %7, align 4
  br label %59

54:                                               ; preds = %43
  %55 = load i32*, i32** %6, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 (i32*, i8*, i8*, ...) @r_core_cmdf(i32* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %56, i8* %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %54, %49
  br label %64

60:                                               ; preds = %36
  %61 = load i32*, i32** %6, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 (i32*, i8*, i8*, ...) @r_core_cmdf(i32* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %59
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %31
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32 @r_core_cmd_help(i32*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @r_core_cmdf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
