; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_buf_bytes.c_buf_bytes_write.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_buf_bytes.c_buf_bytes_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_bytes_priv = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @buf_bytes_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_bytes_write(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buf_bytes_priv*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.buf_bytes_priv* @get_priv_bytes(i32* %10)
  store %struct.buf_bytes_priv* %11, %struct.buf_bytes_priv** %8, align 8
  %12 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %8, align 8
  %13 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %8, align 8
  %16 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %8, align 8
  %21 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %8, align 8
  %26 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %19, %3
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %8, align 8
  %32 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @r_buf_resize(i32* %30, i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %59

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %19
  %42 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %8, align 8
  %43 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %8, align 8
  %46 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @memmove(i64 %48, i32* %49, i64 %50)
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.buf_bytes_priv*, %struct.buf_bytes_priv** %8, align 8
  %54 = getelementptr inbounds %struct.buf_bytes_priv, %struct.buf_bytes_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %41, %39
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.buf_bytes_priv* @get_priv_bytes(i32*) #1

declare dso_local i32 @r_buf_resize(i32*, i64) #1

declare dso_local i32 @memmove(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
