; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/ipv4/extr_ip_addr.c_ipaddr_ntoa_r.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/ipv4/extr_ip_addr.c_ipaddr_ntoa_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ipaddr_ntoa_r(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ip4_addr_get_u32(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %10, align 8
  store i32* %8, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %70, %3
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %73

22:                                               ; preds = %19
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %24, align 4
  %26 = srem i32 %25, 10
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 10
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 48, %30
  %32 = trunc i32 %31 to i8
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %14, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 %35
  store i8 %32, i8* %36, align 1
  br label %37

37:                                               ; preds = %23
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %23, label %41

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %14, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp sge i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i8* null, i8** %4, align 8
  br label %77

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %10, align 8
  store i8 %56, i8* %57, align 1
  br label %42

59:                                               ; preds = %42
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp sge i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i8* null, i8** %4, align 8
  br label %77

65:                                               ; preds = %59
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  store i8 46, i8* %66, align 1
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %11, align 8
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %19

73:                                               ; preds = %19
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %75, i8** %10, align 8
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %6, align 8
  store i8* %76, i8** %4, align 8
  br label %77

77:                                               ; preds = %73, %64, %51
  %78 = load i8*, i8** %4, align 8
  ret i8* %78
}

declare dso_local i32 @ip4_addr_get_u32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
