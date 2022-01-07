; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_buf_ref.c_buf_ref_read.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_buf_ref.c_buf_ref_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_ref_priv = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @buf_ref_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_ref_read(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buf_ref_priv*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.buf_ref_priv* @get_priv_ref(i32* %10)
  store %struct.buf_ref_priv* %11, %struct.buf_ref_priv** %8, align 8
  %12 = load %struct.buf_ref_priv*, %struct.buf_ref_priv** %8, align 8
  %13 = getelementptr inbounds %struct.buf_ref_priv, %struct.buf_ref_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.buf_ref_priv*, %struct.buf_ref_priv** %8, align 8
  %16 = getelementptr inbounds %struct.buf_ref_priv, %struct.buf_ref_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %55

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.buf_ref_priv*, %struct.buf_ref_priv** %8, align 8
  %23 = getelementptr inbounds %struct.buf_ref_priv, %struct.buf_ref_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.buf_ref_priv*, %struct.buf_ref_priv** %8, align 8
  %26 = getelementptr inbounds %struct.buf_ref_priv, %struct.buf_ref_priv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = call i32 @R_MIN(i32 %21, i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.buf_ref_priv*, %struct.buf_ref_priv** %8, align 8
  %31 = getelementptr inbounds %struct.buf_ref_priv, %struct.buf_ref_priv* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.buf_ref_priv*, %struct.buf_ref_priv** %8, align 8
  %34 = getelementptr inbounds %struct.buf_ref_priv, %struct.buf_ref_priv* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.buf_ref_priv*, %struct.buf_ref_priv** %8, align 8
  %37 = getelementptr inbounds %struct.buf_ref_priv, %struct.buf_ref_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @r_buf_read_at(i32 %32, i64 %39, i32* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %20
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %20
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.buf_ref_priv*, %struct.buf_ref_priv** %8, align 8
  %51 = getelementptr inbounds %struct.buf_ref_priv, %struct.buf_ref_priv* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %47, %45, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.buf_ref_priv* @get_priv_ref(i32*) #1

declare dso_local i32 @R_MIN(i32, i64) #1

declare dso_local i32 @r_buf_read_at(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
