; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_unimap_bsearch.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_unimap_bsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_3__*, i32, i64)* @unimap_bsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @unimap_bsearch(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i16, align 2
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = sub i64 %14, 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ugt i32 %17, 65535
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i8 0, i8* %4, align 1
  br label %65

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %11, align 2
  br label %23

23:                                               ; preds = %63, %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = icmp ule %struct.TYPE_3__* %24, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = ptrtoint %struct.TYPE_3__* %29 to i64
  %32 = ptrtoint %struct.TYPE_3__* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = sdiv i64 %34, 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %35
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %10, align 8
  %37 = load i16, i16* %11, align 2
  %38 = zext i16 %37 to i32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %27
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 -1
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %9, align 8
  br label %63

47:                                               ; preds = %27
  %48 = load i16, i16* %11, align 2
  %49 = zext i16 %48 to i32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp sgt i32 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 1
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %8, align 8
  br label %62

58:                                               ; preds = %47
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i8, i8* %60, align 2
  store i8 %61, i8* %4, align 1
  br label %65

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %44
  br label %23

64:                                               ; preds = %23
  store i8 0, i8* %4, align 1
  br label %65

65:                                               ; preds = %64, %58, %19
  %66 = load i8, i8* %4, align 1
  ret i8 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
