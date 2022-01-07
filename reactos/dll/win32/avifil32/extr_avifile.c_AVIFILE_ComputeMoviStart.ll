; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_avifile.c_AVIFILE_ComputeMoviStart.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_avifile.c_AVIFILE_ComputeMoviStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__**, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_6__ = type { i64 }

@AVI_HEADERSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @AVIFILE_ComputeMoviStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AVIFILE_ComputeMoviStart(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i64 92, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %70, %1
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %7, %11
  br i1 %12, label %13, label %73

13:                                               ; preds = %6
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %17
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %5, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 60
  store i64 %21, i64* %3, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = and i32 %25, -2
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %3, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %13
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = and i32 %43, -2
  %45 = zext i32 %44 to i64
  %46 = add i64 16, %45
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %39, %34, %13
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %49
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = call i32 @lstrlenW(i64* %61)
  %63 = add nsw i32 %62, 1
  %64 = and i32 %63, -2
  %65 = zext i32 %64 to i64
  %66 = add i64 16, %65
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %57, %49
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %4, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %4, align 8
  br label %6

73:                                               ; preds = %6
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %73
  %79 = load i64, i64* %3, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @AVI_HEADERSIZE, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* @AVI_HEADERSIZE, align 8
  %86 = sub i64 %85, 1
  %87 = xor i64 %86, -1
  %88 = and i64 %84, %87
  %89 = load i64, i64* %3, align 8
  %90 = sub i64 %88, %89
  %91 = icmp ugt i64 %90, 16
  br i1 %91, label %92, label %102

92:                                               ; preds = %78
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* @AVI_HEADERSIZE, align 8
  %95 = add i64 %93, %94
  %96 = load i64, i64* @AVI_HEADERSIZE, align 8
  %97 = sub i64 %96, 1
  %98 = xor i64 %97, -1
  %99 = and i64 %95, %98
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %92, %78
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %105, 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %102, %73
  %111 = load i64, i64* %3, align 8
  ret i64 %111
}

declare dso_local i32 @lstrlenW(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
