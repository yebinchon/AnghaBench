; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_p9.c_size.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_p9.c_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*)* @size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @size(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %65

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = call i64 @info(%struct.TYPE_6__* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i64 %20, i64* %24, align 8
  br label %25

25:                                               ; preds = %18, %11
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i64 0, i64* %2, align 8
  br label %65

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @r_buf_size(i32 %36)
  %38 = icmp slt i32 %37, 28
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i64 0, i64* %2, align 8
  br label %65

40:                                               ; preds = %33
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @r_buf_read_le32_at(i32 %43, i32 4)
  store i64 %44, i64* %4, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @r_buf_read_le32_at(i32 %47, i32 8)
  store i64 %48, i64* %5, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @r_buf_read_le32_at(i32 %51, i32 16)
  store i64 %52, i64* %6, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @r_buf_read_le32_at(i32 %55, i32 24)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %61, %62
  %64 = add nsw i64 %63, 24
  store i64 %64, i64* %2, align 8
  br label %65

65:                                               ; preds = %40, %39, %32, %10
  %66 = load i64, i64* %2, align 8
  ret i64 %66
}

declare dso_local i64 @info(%struct.TYPE_6__*) #1

declare dso_local i32 @r_buf_size(i32) #1

declare dso_local i64 @r_buf_read_le32_at(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
