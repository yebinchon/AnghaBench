; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_timezone.c_QueryTimezoneData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_timezone.c_QueryTimezoneData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i32] [i32 68, i32 105, i32 115, i32 112, i32 108, i32 97, i32 121, i32 0], align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i32] [i32 83, i32 116, i32 100, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 68, i32 108, i32 116, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 84, i32 90, i32 73, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_3__*)* @QueryTimezoneData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @QueryTimezoneData(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 4, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %11 = ptrtoint i32* %10 to i32
  %12 = call i64 @RegQueryValueExW(i32 %8, i8* bitcast ([8 x i32]* @.str to i8*), i32* null, i32* null, i32 %11, i32* %6)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %3, align 8
  br label %47

18:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = ptrtoint i32* %21 to i32
  %23 = call i64 @RegQueryValueExW(i32 %19, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32* null, i32* null, i32 %22, i32* %6)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %3, align 8
  br label %47

29:                                               ; preds = %18
  store i32 4, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = ptrtoint i32* %32 to i32
  %34 = call i64 @RegQueryValueExW(i32 %30, i8* bitcast ([4 x i32]* @.str.2 to i8*), i32* null, i32* null, i32 %33, i32* %6)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %3, align 8
  br label %47

40:                                               ; preds = %29
  store i32 4, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = ptrtoint i32* %43 to i32
  %45 = call i64 @RegQueryValueExW(i32 %41, i8* bitcast ([4 x i32]* @.str.3 to i8*), i32* null, i32* null, i32 %44, i32* %6)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %40, %38, %27, %16
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
