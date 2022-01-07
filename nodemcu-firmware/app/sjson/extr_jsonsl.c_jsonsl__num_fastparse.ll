; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl__num_fastparse.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl__num_fastparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.jsonsl_state_st = type { i32 }

@TOTAL = common dso_local global i32 0, align 4
@NUMBER_FASTPATH = common dso_local global i32 0, align 4
@FASTPARSE_EXHAUSTED = common dso_local global i32 0, align 4
@FASTPARSE_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**, i64*, %struct.jsonsl_state_st*)* @jsonsl__num_fastparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonsl__num_fastparse(%struct.TYPE_3__* %0, i32** %1, i64* %2, %struct.jsonsl_state_st* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.jsonsl_state_st*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.jsonsl_state_st* %3, %struct.jsonsl_state_st** %9, align 8
  store i32 1, i32* %10, align 4
  %14 = load i64*, i64** %8, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i32**, i32*** %7, align 8
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  br label %18

18:                                               ; preds = %43, %4
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i64 @isdigit(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32, i32* @TOTAL, align 4
  %29 = call i32 @INCR_METRIC(i32 %28)
  %30 = load i32, i32* @NUMBER_FASTPATH, align 4
  %31 = call i32 @INCR_METRIC(i32 %30)
  %32 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %9, align 8
  %33 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 10
  %36 = load i32, i32* %13, align 4
  %37 = sub nsw i32 %36, 48
  %38 = add nsw i32 %35, %37
  %39 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %9, align 8
  %40 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %42

41:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %48

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %11, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %12, align 8
  br label %18

48:                                               ; preds = %41, %18
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %50, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* @FASTPARSE_EXHAUSTED, align 4
  store i32 %62, i32* %5, align 4
  br label %69

63:                                               ; preds = %48
  %64 = load i64, i64* %11, align 8
  %65 = load i64*, i64** %8, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = load i32**, i32*** %7, align 8
  store i32* %66, i32** %67, align 8
  %68 = load i32, i32* @FASTPARSE_BREAK, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %61
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @INCR_METRIC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
