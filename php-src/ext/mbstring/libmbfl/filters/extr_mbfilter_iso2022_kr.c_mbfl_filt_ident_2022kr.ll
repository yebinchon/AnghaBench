; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022_kr.c_mbfl_filt_ident_2022kr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022_kr.c_mbfl_filt_ident_2022kr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @mbfl_filt_ident_2022kr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbfl_filt_ident_2022kr(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  br label %5

5:                                                ; preds = %106, %92, %76, %2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 15
  switch i32 %9, label %114 [
    i32 0, label %10
    i32 1, label %54
    i32 2, label %68
    i32 3, label %84
    i32 5, label %100
  ]

10:                                               ; preds = %5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 27
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %16
  br label %53

25:                                               ; preds = %10
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = icmp sgt i32 %31, 32
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 127
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %52

41:                                               ; preds = %33, %30, %25
  %42 = load i32, i32* %3, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 128
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %51

48:                                               ; preds = %44, %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %47
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %24
  br label %117

54:                                               ; preds = %5
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -16
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 33
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = icmp sgt i32 %62, 126
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %54
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %117

68:                                               ; preds = %5
  %69 = load i32, i32* %3, align 4
  %70 = icmp eq i32 %69, 36
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %83

76:                                               ; preds = %68
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, -16
  store i32 %82, i32* %80, align 4
  br label %5

83:                                               ; preds = %71
  br label %117

84:                                               ; preds = %5
  %85 = load i32, i32* %3, align 4
  %86 = icmp eq i32 %85, 41
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %99

92:                                               ; preds = %84
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, -16
  store i32 %98, i32* %96, align 4
  br label %5

99:                                               ; preds = %87
  br label %117

100:                                              ; preds = %5
  %101 = load i32, i32* %3, align 4
  %102 = icmp eq i32 %101, 67
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 16, i32* %105, align 4
  br label %113

106:                                              ; preds = %100
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, -16
  store i32 %112, i32* %110, align 4
  br label %5

113:                                              ; preds = %103
  br label %117

114:                                              ; preds = %5
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %113, %99, %83, %67, %53
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
