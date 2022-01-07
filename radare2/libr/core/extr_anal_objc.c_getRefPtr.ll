; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_anal_objc.c_getRefPtr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_anal_objc.c_getRefPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64, i32*)* @getRefPtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getRefPtr(%struct.TYPE_4__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @readQword(%struct.TYPE_4__* %14, i64 %15)
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i8* @addr_key(i64 %17)
  store i8* %18, i8** %12, align 8
  %19 = load i32*, i32** %7, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %63, %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @sdb_array_get_num(i32 %23, i8* %24, i32 %25, i32* null)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %66

30:                                               ; preds = %20
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %13, align 8
  %35 = call i64 @inBetween(i32 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32*, i32** %7, align 8
  store i32 0, i32* %38, align 4
  %39 = load i64, i64* %13, align 8
  store i64 %39, i64* %11, align 8
  br label %62

40:                                               ; preds = %30
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %13, align 8
  %45 = call i64 @inBetween(i32 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32*, i32** %7, align 8
  store i32 1, i32* %48, align 4
  %49 = load i64, i64* %13, align 8
  store i64 %49, i64* %11, align 8
  br label %61

50:                                               ; preds = %40
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %13, align 8
  %55 = call i64 @inBetween(i32 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %20

66:                                               ; preds = %29
  %67 = load i32, i32* %10, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i64 0, i64* %4, align 8
  br label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %11, align 8
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %70, %69
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i64 @readQword(%struct.TYPE_4__*, i64) #1

declare dso_local i8* @addr_key(i64) #1

declare dso_local i64 @sdb_array_get_num(i32, i8*, i32, i32*) #1

declare dso_local i64 @inBetween(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
