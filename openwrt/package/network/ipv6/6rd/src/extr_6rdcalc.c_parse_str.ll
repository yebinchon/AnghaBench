; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/ipv6/6rd/src/extr_6rdcalc.c_parse_str.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/ipv6/6rd/src/extr_6rdcalc.c_parse_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i64*)* @parse_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_str(i32 %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 47)
  store i8* %12, i8** %10, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 (...) @print_usage()
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i8*, i8** %10, align 8
  store i8 0, i8* %17, align 1
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @inet_pton(i32 %18, i8* %19, i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (...) @print_usage()
  br label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @print_error()
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i64 @strtoul(i8* %33, i32* null, i32 10)
  %35 = load i64*, i64** %8, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @AF_INET, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %41, 32
  br i1 %42, label %51, label %43

43:                                               ; preds = %39, %31
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @AF_INET6, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ugt i64 %49, 128
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %39
  %52 = call i32 (...) @print_usage()
  br label %53

53:                                               ; preds = %51, %47, %43
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @print_usage(...) #1

declare dso_local i32 @inet_pton(i32, i8*, i8*) #1

declare dso_local i32 @print_error(...) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
