; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rafind2.c_rafind_open.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rafind2.c_rafind_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"malloc://%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rafind_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rafind_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %12 = call i64 @r_stdin_slurp(i32* %4)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @r_str_newf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @rafind_open_file(i8* %16, i8* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @free(i8* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @free(i8* %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %1
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @r_file_is_directory(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @rafind_open_dir(i8* %30)
  br label %35

32:                                               ; preds = %25
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @rafind_open_file(i8* %33, i8* null, i32 -1)
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i32 [ %31, %29 ], [ %34, %32 ]
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @r_stdin_slurp(i32*) #1

declare dso_local i8* @r_str_newf(i8*, i32) #1

declare dso_local i32 @rafind_open_file(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @r_file_is_directory(i8*) #1

declare dso_local i32 @rafind_open_dir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
