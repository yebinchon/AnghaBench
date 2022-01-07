; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_buildOptionHeader.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_buildOptionHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COAP_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coap_buildOptionHeader(i32 %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %8, align 8
  store i32* %14, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %15, 5
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @COAP_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %18, i32* %5, align 4
  br label %91

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = call i32 @coap_option_nibble(i64 %21, i32* %13)
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @coap_option_nibble(i64 %23, i32* %12)
  %25 = load i32, i32* %13, align 4
  %26 = shl i32 %25, 4
  %27 = load i32, i32* %12, align 4
  %28 = or i32 %26, %27
  %29 = and i32 255, %28
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 13
  br i1 %35, label %36, label %43

36:                                               ; preds = %19
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 13
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %60

43:                                               ; preds = %19
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 14
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 269
  %49 = ashr i32 %48, 8
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 269
  %54 = and i32 255, %53
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %46, %43
  br label %60

60:                                               ; preds = %59, %36
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 13
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %64, 13
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %89

71:                                               ; preds = %60
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 14
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load i64, i64* %7, align 8
  %76 = lshr i64 %75, 8
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %11, align 8
  store i32 %77, i32* %78, align 4
  %80 = load i64, i64* %7, align 8
  %81 = sub i64 %80, 269
  %82 = and i64 255, %81
  %83 = trunc i64 %82 to i32
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 2
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %74, %71
  br label %89

89:                                               ; preds = %88, %63
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %17
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @coap_option_nibble(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
