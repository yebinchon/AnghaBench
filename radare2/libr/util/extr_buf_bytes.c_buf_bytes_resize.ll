; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_buf_bytes.c_buf_bytes_resize.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_buf_bytes.c_buf_bytes_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.buf_bytes_priv = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @buf_bytes_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_bytes_resize(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buf_bytes_priv*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = call %struct.buf_bytes_priv* @get_priv_bytes(%struct.TYPE_4__* %8)
  store %struct.buf_bytes_priv* %9, %struct.buf_bytes_priv** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %6, align 8
  %12 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %2
  %16 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %6, align 8
  %17 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32* @realloc(i32* %18, i64 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %48

24:                                               ; preds = %15
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %6, align 8
  %27 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %6, align 8
  %29 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %6, align 8
  %32 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %6, align 8
  %40 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = call i32 @memset(i32* %34, i32 %37, i64 %42)
  br label %44

44:                                               ; preds = %24, %2
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %6, align 8
  %47 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %23
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.buf_bytes_priv* @get_priv_bytes(%struct.TYPE_4__*) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
