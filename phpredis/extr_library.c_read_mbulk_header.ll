; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_read_mbulk_header.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_read_mbulk_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @read_mbulk_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mbulk_header(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %10 = call i64 @redis_sock_gets(i32* %8, i8* %9, i32 4095, i64* %7)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

13:                                               ; preds = %2
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %15 = load i8, i8* %14, align 16
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 42
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @IS_ATOMIC(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %24 = load i8, i8* %23, align 16
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %31, 1
  %33 = call i32 @redis_sock_set_err(i32* %28, i8* %30, i64 %32)
  br label %34

34:                                               ; preds = %27, %22
  br label %35

35:                                               ; preds = %34, %18
  store i32 -1, i32* %3, align 4
  br label %41

36:                                               ; preds = %13
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i32 @atoi(i8* %38)
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %35, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @redis_sock_gets(i32*, i8*, i32, i64*) #1

declare dso_local i64 @IS_ATOMIC(i32*) #1

declare dso_local i32 @redis_sock_set_err(i32*, i8*, i64) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
