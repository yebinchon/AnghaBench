; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf7.c_mbfl_filt_ident_utf7.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf7.c_mbfl_filt_ident_utf7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @mbfl_filt_ident_utf7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbfl_filt_ident_utf7(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %98 [
    i32 0, label %9
    i32 1, label %34
    i32 2, label %34
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %33

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 92
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 126
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 127
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %23, %20, %17
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %12
  br label %101

34:                                               ; preds = %2, %2
  store i32 0, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp sge i32 %35, 65
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = icmp sle i32 %38, 90
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %67

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %3, align 4
  %43 = icmp sge i32 %42, 97
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = icmp sle i32 %45, 122
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %66

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %3, align 4
  %50 = icmp sge i32 %49, 48
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = icmp sle i32 %52, 57
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %65

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 43
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %5, align 4
  br label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %59
  br label %64

64:                                               ; preds = %63, %58
  br label %65

65:                                               ; preds = %64, %54
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i32, i32* %5, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 45
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  br label %91

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %3, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = icmp sgt i32 %85, 127
  br i1 %86, label %87, label %90

87:                                               ; preds = %84, %81
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %78
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  br label %97

94:                                               ; preds = %67
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 2, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %101

98:                                               ; preds = %2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %97, %33
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
