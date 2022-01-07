; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_base64.c_mbfl_filt_conv_base64dec.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_base64.c_mbfl_filt_conv_base64dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_base64dec(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 13
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 61
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15, %12, %9, %2
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %3, align 4
  br label %135

23:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 65
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %27, 90
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 65
  store i32 %31, i32* %6, align 4
  br label %62

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %33, 97
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, 122
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 71
  store i32 %40, i32* %6, align 4
  br label %61

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %4, align 4
  %43 = icmp sge i32 %42, 48
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = icmp sle i32 %45, 57
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 4
  store i32 %49, i32* %6, align 4
  br label %60

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 62, i32* %6, align 4
  br label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 63, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %53
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %61, %29
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 63
  store i32 %64, i32* %6, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %93 [
    i32 0, label %68
    i32 1, label %75
    i32 2, label %84
  ]

68:                                               ; preds = %62
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = shl i32 %71, 18
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %133

75:                                               ; preds = %62
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 2, i32* %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = shl i32 %78, 12
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %133

84:                                               ; preds = %62
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 3, i32* %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = shl i32 %87, 6
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %133

93:                                               ; preds = %62
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i32 (i32, i32)*, i32 (i32, i32)** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = ashr i32 %104, 16
  %106 = and i32 %105, 255
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 %103(i32 %106, i32 %109)
  %111 = call i32 @CK(i32 %110)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  %114 = load i32 (i32, i32)*, i32 (i32, i32)** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 255
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 %114(i32 %117, i32 %120)
  %122 = call i32 @CK(i32 %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load i32 (i32, i32)*, i32 (i32, i32)** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = and i32 %126, 255
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 %125(i32 %127, i32 %130)
  %132 = call i32 @CK(i32 %131)
  br label %133

133:                                              ; preds = %93, %84, %75, %68
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %21
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
