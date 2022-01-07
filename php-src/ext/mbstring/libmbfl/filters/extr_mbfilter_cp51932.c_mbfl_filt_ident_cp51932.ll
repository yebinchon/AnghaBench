; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp51932.c_mbfl_filt_ident_cp51932.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp51932.c_mbfl_filt_ident_cp51932.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @mbfl_filt_ident_cp51932 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbfl_filt_ident_cp51932(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %60 [
    i32 0, label %8
    i32 1, label %36
    i32 2, label %48
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
  br label %35

15:                                               ; preds = %11, %8
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 160
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 255
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %34

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 142
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 2, i32* %29, align 4
  br label %33

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %21
  br label %35

35:                                               ; preds = %34, %14
  br label %63

36:                                               ; preds = %2
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 161
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = icmp sgt i32 %40, 254
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %63

48:                                               ; preds = %2
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 161
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = icmp sgt i32 %52, 223
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %48
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %63

60:                                               ; preds = %2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57, %45, %35
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
