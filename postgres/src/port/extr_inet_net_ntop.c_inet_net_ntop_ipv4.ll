; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_inet_net_ntop.c_inet_net_ntop_ipv4.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_inet_net_ntop.c_inet_net_ntop_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/%u\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i8*, i64)* @inet_net_ntop_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @inet_net_ntop_ipv4(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %10, align 8
  store i32 4, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 32
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %80

22:                                               ; preds = %17
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %57, %22
  %25 = load i32, i32* %13, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = icmp ule i64 %28, 5
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %78

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  store i8 46, i8* %37, align 1
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i8*, i8** %8, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* %41, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @SPRINTF(i8* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %13, align 4
  br label %24

60:                                               ; preds = %24
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 32
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i64, i64* %9, align 8
  %65 = icmp ule i64 %64, 4
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %78

67:                                               ; preds = %63
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @SPRINTF(i8* %71)
  %73 = load i8*, i8** %8, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %8, align 8
  br label %76

76:                                               ; preds = %67, %60
  %77 = load i8*, i8** %10, align 8
  store i8* %77, i8** %5, align 8
  br label %80

78:                                               ; preds = %66, %30
  %79 = load i32, i32* @EMSGSIZE, align 4
  store i32 %79, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %80

80:                                               ; preds = %78, %76, %20
  %81 = load i8*, i8** %5, align 8
  ret i8* %81
}

declare dso_local i32 @SPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
