; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_range-file.c_ipv6_finish_number.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_range-file.c_ipv6_finish_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeParser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RangeParser*, i8)* @ipv6_finish_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_finish_number(%struct.RangeParser* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.RangeParser*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.RangeParser* %0, %struct.RangeParser** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.RangeParser*, %struct.RangeParser** %4, align 8
  %9 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.RangeParser*, %struct.RangeParser** %4, align 8
  %13 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %16, 7
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp uge i32 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %86

22:                                               ; preds = %18, %2
  %23 = load %struct.RangeParser*, %struct.RangeParser** %4, align 8
  %24 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub i32 %27, %28
  %30 = sub i32 8, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = load %struct.RangeParser*, %struct.RangeParser** %4, align 8
  %34 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memmove(i32* %32, i32* %39, i32 %45)
  %47 = load %struct.RangeParser*, %struct.RangeParser** %4, align 8
  %48 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %6, align 4
  %55 = sub i32 7, %54
  %56 = zext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(i32* %53, i32 0, i32 %58)
  %60 = load %struct.RangeParser*, %struct.RangeParser** %4, align 8
  %61 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %22
  %66 = load %struct.RangeParser*, %struct.RangeParser** %4, align 8
  %67 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.RangeParser*, %struct.RangeParser** %4, align 8
  %71 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @memcpy(i32 %69, i32* %73, i32 4)
  br label %85

75:                                               ; preds = %22
  %76 = load %struct.RangeParser*, %struct.RangeParser** %4, align 8
  %77 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.RangeParser*, %struct.RangeParser** %4, align 8
  %81 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @memcpy(i32 %79, i32* %83, i32 4)
  br label %85

85:                                               ; preds = %75, %65
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %21
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
