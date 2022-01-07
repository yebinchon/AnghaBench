; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_ar.c_r_io_ar_lseek.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_ar.c_r_io_ar_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@R_BUF_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32)* @r_io_ar_lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_io_ar_lseek(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %4
  store i32 -1, i32* %5, align 4
  br label %80

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @r_buf_tell(i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %78 [
    i32 128, label %27
    i32 130, label %47
    i32 129, label %67
  ]

27:                                               ; preds = %20
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @r_buf_size(i32* %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @r_buf_size(i32* %33)
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @R_BUF_SET, align 4
  %45 = call i32 @r_buf_seek(i32* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %80

47:                                               ; preds = %20
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @r_buf_size(i32* %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @r_buf_size(i32* %53)
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i32 [ %54, %52 ], [ %56, %55 ]
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @R_BUF_SET, align 4
  %65 = call i32 @r_buf_seek(i32* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %80

67:                                               ; preds = %20
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @r_buf_size(i32* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @R_BUF_SET, align 4
  %76 = call i32 @r_buf_seek(i32* %73, i32 %74, i32 %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %80

78:                                               ; preds = %20
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %67, %57, %37, %19
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @r_buf_tell(i32*) #1

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @r_buf_seek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
