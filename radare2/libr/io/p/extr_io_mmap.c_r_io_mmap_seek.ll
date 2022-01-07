; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_mmap.c_r_io_mmap_seek.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_mmap.c_r_io_mmap_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@R_BUF_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, %struct.TYPE_5__*, i64, i32)* @r_io_mmap_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @r_io_mmap_seek(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @r_buf_tell(i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %90 [
    i32 128, label %16
    i32 130, label %41
    i32 129, label %76
  ]

16:                                               ; preds = %4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @r_buf_size(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @r_buf_size(i32 %26)
  br label %30

28:                                               ; preds = %16
  %29 = load i64, i64* %8, align 8
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi i64 [ %27, %23 ], [ %29, %28 ]
  store i64 %31, i64* %10, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @R_BUF_SET, align 4
  %39 = call i32 @r_buf_seek(i32 %34, i64 %35, i32 %38)
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %5, align 8
  br label %92

41:                                               ; preds = %4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @r_buf_size(i32 %44)
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @r_buf_tell(i32 %49)
  %51 = add nsw i64 %46, %50
  %52 = icmp slt i64 %45, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @r_buf_size(i32 %56)
  br label %65

58:                                               ; preds = %41
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @r_buf_tell(i32 %62)
  %64 = add nsw i64 %59, %63
  br label %65

65:                                               ; preds = %58, %53
  %66 = phi i64 [ %57, %53 ], [ %64, %58 ]
  store i64 %66, i64* %10, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @R_BUF_SET, align 4
  %74 = call i32 @r_buf_seek(i32 %69, i64 %70, i32 %73)
  %75 = load i64, i64* %10, align 8
  store i64 %75, i64* %5, align 8
  br label %92

76:                                               ; preds = %4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @r_buf_size(i32 %79)
  store i64 %80, i64* %10, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @R_BUF_SET, align 4
  %88 = call i32 @r_buf_seek(i32 %83, i64 %84, i32 %87)
  %89 = load i64, i64* %10, align 8
  store i64 %89, i64* %5, align 8
  br label %92

90:                                               ; preds = %4
  %91 = load i64, i64* %10, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %90, %76, %65, %30
  %93 = load i64, i64* %5, align 8
  ret i64 %93
}

declare dso_local i64 @r_buf_tell(i32) #1

declare dso_local i64 @r_buf_size(i32) #1

declare dso_local i32 @r_buf_seek(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
