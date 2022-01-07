; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp5022x.c_mbfl_filt_ident_cp50221.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp5022x.c_mbfl_filt_ident_cp50221.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @mbfl_filt_ident_cp50221 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbfl_filt_ident_cp50221(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  br label %5

5:                                                ; preds = %130, %104, %86, %2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 15
  switch i32 %9, label %140 [
    i32 0, label %10
    i32 1, label %47
    i32 2, label %70
    i32 3, label %95
    i32 5, label %112
  ]

10:                                               ; preds = %5
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 27
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %15, align 4
  br label %46

18:                                               ; preds = %10
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 32
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 127
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %45

34:                                               ; preds = %26, %23, %18
  %35 = load i32, i32* %3, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 128
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %44

41:                                               ; preds = %37, %34
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %40
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %13
  br label %143

47:                                               ; preds = %5
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 27
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %69

55:                                               ; preds = %47
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, -16
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, 33
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  %64 = icmp sgt i32 %63, 126
  br i1 %64, label %65, label %68

65:                                               ; preds = %62, %55
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %50
  br label %143

70:                                               ; preds = %5
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %71, 36
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %94

78:                                               ; preds = %70
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %79, 40
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 3
  store i32 %85, i32* %83, align 4
  br label %93

86:                                               ; preds = %78
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, -16
  store i32 %92, i32* %90, align 4
  br label %5

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %73
  br label %143

95:                                               ; preds = %5
  %96 = load i32, i32* %3, align 4
  %97 = icmp eq i32 %96, 64
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  %100 = icmp eq i32 %99, 66
  br i1 %100, label %101, label %104

101:                                              ; preds = %98, %95
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i32 128, i32* %103, align 4
  br label %111

104:                                              ; preds = %98
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, -16
  store i32 %110, i32* %108, align 4
  br label %5

111:                                              ; preds = %101
  br label %143

112:                                              ; preds = %5
  %113 = load i32, i32* %3, align 4
  %114 = icmp eq i32 %113, 66
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 4
  br label %139

118:                                              ; preds = %112
  %119 = load i32, i32* %3, align 4
  %120 = icmp eq i32 %119, 74
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i32 16, i32* %123, align 4
  br label %138

124:                                              ; preds = %118
  %125 = load i32, i32* %3, align 4
  %126 = icmp eq i32 %125, 73
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  store i32 32, i32* %129, align 4
  br label %137

130:                                              ; preds = %124
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i32 1, i32* %132, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, -16
  store i32 %136, i32* %134, align 4
  br label %5

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %121
  br label %139

139:                                              ; preds = %138, %115
  br label %143

140:                                              ; preds = %5
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i32 0, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %139, %111, %94, %69, %46
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
