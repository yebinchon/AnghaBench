; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_asn.c_ber_in_header.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_asn.c_ber_in_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@True = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ber_in_header(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @in_uint8(i32 %8, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @in_uint8(i32 %12, i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 128
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @True, align 4
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 129
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @in_uint8(i32 %26, i32 %28)
  %30 = load i32, i32* @True, align 4
  store i32 %30, i32* %4, align 4
  br label %45

31:                                               ; preds = %21
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 130
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @in_uint16_be(i32 %36, i32 %38)
  %40 = load i32, i32* @True, align 4
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* @False, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %35, %25, %19
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @in_uint16_be(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
