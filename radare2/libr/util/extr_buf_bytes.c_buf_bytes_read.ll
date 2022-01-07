; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_buf_bytes.c_buf_bytes_read.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_buf_bytes.c_buf_bytes_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_bytes_priv = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i64)* @buf_bytes_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @buf_bytes_read(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf_bytes_priv*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.buf_bytes_priv* @get_priv_bytes(i32* %9)
  store %struct.buf_bytes_priv* %10, %struct.buf_bytes_priv** %7, align 8
  %11 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %7, align 8
  %12 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %7, align 8
  %15 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %7, align 8
  %21 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %7, align 8
  %24 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @R_MIN(i64 %26, i64 %27)
  br label %29

29:                                               ; preds = %19, %18
  %30 = phi i64 [ 0, %18 ], [ %28, %19 ]
  store i64 %30, i64* %8, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %7, align 8
  %33 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %7, align 8
  %36 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @memmove(i32* %31, i64 %38, i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %7, align 8
  %43 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* %8, align 8
  ret i64 %46
}

declare dso_local %struct.buf_bytes_priv* @get_priv_bytes(i32*) #1

declare dso_local i64 @R_MIN(i64, i64) #1

declare dso_local i32 @memmove(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
