; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_search_rop.c_parse_list.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_search_rop.c_parse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @parse_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_list(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %42

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %8, align 8
  %15 = call i32* @r_list_newf(i32 (i8*)* @free)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @free(i8* %19)
  store i32* null, i32** %2, align 8
  br label %42

21:                                               ; preds = %12
  %22 = load i8*, i8** %8, align 8
  %23 = call i8* @strtok(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 61)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i8* @strtok(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %32, %21
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32*, i32** %4, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i8* @strdup(i8* %34)
  %36 = call i32 @r_list_append(i32* %33, i8* %35)
  %37 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %37, i8** %7, align 8
  br label %29

38:                                               ; preds = %29
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32*, i32** %4, align 8
  store i32* %41, i32** %2, align 8
  br label %42

42:                                               ; preds = %38, %18, %11
  %43 = load i32*, i32** %2, align 8
  ret i32* %43
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @r_list_newf(i32 (i8*)*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_list_append(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
