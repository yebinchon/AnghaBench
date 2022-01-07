; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_buffer_converter_feed2.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_buffer_converter_feed2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i32 (i32, %struct.TYPE_10__*)* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_buffer_converter_feed2(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32 (i32, %struct.TYPE_10__*)*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = icmp eq %struct.TYPE_11__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = icmp eq %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4
  br label %93

18:                                               ; preds = %14
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %24, %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 4
  %34 = call i32 @mbfl_memory_device_realloc(%struct.TYPE_12__* %20, i64 %29, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %10, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %47, label %80

47:                                               ; preds = %18
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %49, align 8
  store i32 (i32, %struct.TYPE_10__*)* %50, i32 (i32, %struct.TYPE_10__*)** %11, align 8
  br label %51

51:                                               ; preds = %76, %47
  %52 = load i64, i64* %8, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %51
  %55 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %11, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  %58 = load i8, i8* %56, align 1
  %59 = zext i8 %58 to i32
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = call i32 %55(i32 %59, %struct.TYPE_10__* %60)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %54
  %64 = load i64*, i64** %7, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %67 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = load i64*, i64** %7, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %66, %63
  store i32 -1, i32* %4, align 4
  br label %93

76:                                               ; preds = %54
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %8, align 8
  br label %51

79:                                               ; preds = %51
  br label %80

80:                                               ; preds = %79, %18
  %81 = load i64*, i64** %7, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %84 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = load i64*, i64** %7, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %83, %80
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %75, %17
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @mbfl_memory_device_realloc(%struct.TYPE_12__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
