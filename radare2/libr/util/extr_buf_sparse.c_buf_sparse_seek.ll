; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_buf_sparse.c_buf_sparse_seek.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_buf_sparse.c_buf_sparse_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_sparse_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @buf_sparse_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_sparse_seek(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buf_sparse_priv*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.buf_sparse_priv* @get_priv_sparse(i32* %10)
  store %struct.buf_sparse_priv* %11, %struct.buf_sparse_priv** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 0, %15
  %17 = load %struct.buf_sparse_priv*, %struct.buf_sparse_priv** %8, align 8
  %18 = getelementptr inbounds %struct.buf_sparse_priv, %struct.buf_sparse_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %53

22:                                               ; preds = %14, %3
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %47 [
    i32 130, label %24
    i32 128, label %30
    i32 129, label %34
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.buf_sparse_priv*, %struct.buf_sparse_priv** %8, align 8
  %27 = getelementptr inbounds %struct.buf_sparse_priv, %struct.buf_sparse_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %49

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.buf_sparse_priv*, %struct.buf_sparse_priv** %8, align 8
  %33 = getelementptr inbounds %struct.buf_sparse_priv, %struct.buf_sparse_priv* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %49

34:                                               ; preds = %22
  %35 = load %struct.buf_sparse_priv*, %struct.buf_sparse_priv** %8, align 8
  %36 = getelementptr inbounds %struct.buf_sparse_priv, %struct.buf_sparse_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sparse_limits(i32 %37, i32* %9)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.buf_sparse_priv*, %struct.buf_sparse_priv** %8, align 8
  %46 = getelementptr inbounds %struct.buf_sparse_priv, %struct.buf_sparse_priv* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %49

47:                                               ; preds = %22
  %48 = call i32 (...) @r_warn_if_reached()
  store i32 -1, i32* %4, align 4
  br label %53

49:                                               ; preds = %41, %30, %24
  %50 = load %struct.buf_sparse_priv*, %struct.buf_sparse_priv** %8, align 8
  %51 = getelementptr inbounds %struct.buf_sparse_priv, %struct.buf_sparse_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %47, %21
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.buf_sparse_priv* @get_priv_sparse(i32*) #1

declare dso_local i32 @sparse_limits(i32, i32*) #1

declare dso_local i32 @r_warn_if_reached(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
