; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rabin2.c_stdin_gets.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rabin2.c_stdin_gets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin_buf = common dso_local global i64* null, align 8
@stdin = common dso_local global i32 0, align 4
@STDIN_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @stdin_gets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stdin_gets() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64*, i64** @stdin_buf, align 8
  %3 = icmp ne i64* %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = call i64* @malloc(i64 96096)
  store i64* %5, i64** @stdin_buf, align 8
  %6 = load i64*, i64** @stdin_buf, align 8
  %7 = icmp ne i64* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store i8* null, i8** %1, align 8
  br label %32

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %0
  %11 = load i64*, i64** @stdin_buf, align 8
  %12 = call i32 @memset(i64* %11, i32 0, i64 96096)
  %13 = load i64*, i64** @stdin_buf, align 8
  %14 = load i32, i32* @stdin, align 4
  %15 = call i32 @fgets(i64* %13, i64 96095, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i8* null, i8** %1, align 8
  br label %32

18:                                               ; preds = %10
  %19 = load i32, i32* @stdin, align 4
  %20 = call i64 @feof(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* null, i8** %1, align 8
  br label %32

23:                                               ; preds = %18
  %24 = load i64*, i64** @stdin_buf, align 8
  %25 = load i64*, i64** @stdin_buf, align 8
  %26 = call i32 @strlen(i64* %25)
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %24, i64 %28
  store i64 0, i64* %29, align 8
  %30 = load i64*, i64** @stdin_buf, align 8
  %31 = call i8* @strdup(i64* %30)
  store i8* %31, i8** %1, align 8
  br label %32

32:                                               ; preds = %23, %22, %17, %8
  %33 = load i8*, i8** %1, align 8
  ret i8* %33
}

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @fgets(i64*, i64, i32) #1

declare dso_local i64 @feof(i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i8* @strdup(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
