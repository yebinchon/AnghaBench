; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_uhc.c_mbfl_filt_ident_uhc.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_uhc.c_mbfl_filt_ident_uhc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @mbfl_filt_ident_uhc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbfl_filt_ident_uhc(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %85 [
    i32 0, label %8
    i32 1, label %49
    i32 2, label %49
    i32 3, label %73
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 128
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %48

15:                                               ; preds = %11, %8
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 129
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %19, 160
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %47

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %3, align 4
  %26 = icmp sge i32 %25, 161
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = icmp sle i32 %28, 198
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 2, i32* %32, align 4
  br label %46

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %3, align 4
  %35 = icmp sge i32 %34, 199
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp sle i32 %37, 254
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 3, i32* %41, align 4
  br label %45

42:                                               ; preds = %36, %33
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %30
  br label %47

47:                                               ; preds = %46, %21
  br label %48

48:                                               ; preds = %47, %14
  br label %49

49:                                               ; preds = %2, %2, %48
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 65
  br i1 %51, label %67, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp sgt i32 %53, 90
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 97
  br i1 %57, label %67, label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %3, align 4
  %60 = icmp sgt i32 %59, 122
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 129
  br i1 %63, label %67, label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %3, align 4
  %66 = icmp sgt i32 %65, 254
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %61, %55, %49
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  br label %88

73:                                               ; preds = %2
  %74 = load i32, i32* %3, align 4
  %75 = icmp slt i32 %74, 161
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = icmp sgt i32 %77, 254
  br i1 %78, label %79, label %82

79:                                               ; preds = %76, %73
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  br label %88

85:                                               ; preds = %2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %82, %70
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
