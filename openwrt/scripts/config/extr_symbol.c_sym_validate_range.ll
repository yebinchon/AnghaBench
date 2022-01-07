; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_symbol.c_sym_validate_range.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_symbol.c_sym_validate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.property = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*)* @sym_validate_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_validate_range(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.property*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [64 x i8], align 16
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %8 = load %struct.symbol*, %struct.symbol** %2, align 8
  %9 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %13 [
    i32 128, label %11
    i32 129, label %12
  ]

11:                                               ; preds = %1
  store i32 10, i32* %4, align 4
  br label %14

12:                                               ; preds = %1
  store i32 16, i32* %4, align 4
  br label %14

13:                                               ; preds = %1
  br label %71

14:                                               ; preds = %12, %11
  %15 = load %struct.symbol*, %struct.symbol** %2, align 8
  %16 = call %struct.property* @sym_get_range_prop(%struct.symbol* %15)
  store %struct.property* %16, %struct.property** %3, align 8
  %17 = load %struct.property*, %struct.property** %3, align 8
  %18 = icmp ne %struct.property* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %71

20:                                               ; preds = %14
  %21 = load %struct.symbol*, %struct.symbol** %2, align 8
  %22 = getelementptr inbounds %struct.symbol, %struct.symbol* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @strtoll(i32 %24, i32* null, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load %struct.property*, %struct.property** %3, align 8
  %28 = getelementptr inbounds %struct.property, %struct.property* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @sym_get_range_val(i32 %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %20
  %39 = load %struct.property*, %struct.property** %3, align 8
  %40 = getelementptr inbounds %struct.property, %struct.property* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @sym_get_range_val(i32 %44, i32 %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %71

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %20
  %53 = load %struct.symbol*, %struct.symbol** %2, align 8
  %54 = getelementptr inbounds %struct.symbol, %struct.symbol* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %59)
  br label %65

61:                                               ; preds = %52
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %67 = call i32 @strdup(i8* %66)
  %68 = load %struct.symbol*, %struct.symbol** %2, align 8
  %69 = getelementptr inbounds %struct.symbol, %struct.symbol* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %50, %19, %13
  ret void
}

declare dso_local %struct.property* @sym_get_range_prop(%struct.symbol*) #1

declare dso_local i64 @strtoll(i32, i32*, i32) #1

declare dso_local i64 @sym_get_range_val(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
