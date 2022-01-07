; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_buf_io.c_buf_io_seek.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_buf_io.c_buf_io_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_io_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32, i32, i32)* }

@R_IO_SEEK_SET = common dso_local global i32 0, align 4
@R_IO_SEEK_END = common dso_local global i32 0, align 4
@R_IO_SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @buf_io_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_io_seek(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buf_io_priv*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.buf_io_priv* @get_priv_io(i32* %9)
  store %struct.buf_io_priv* %10, %struct.buf_io_priv** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %12 [
    i32 128, label %14
    i32 129, label %16
    i32 130, label %18
  ]

12:                                               ; preds = %3
  %13 = call i32 (...) @r_warn_if_reached()
  br label %14

14:                                               ; preds = %3, %12
  %15 = load i32, i32* @R_IO_SEEK_SET, align 4
  store i32 %15, i32* %8, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @R_IO_SEEK_END, align 4
  store i32 %17, i32* %8, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @R_IO_SEEK_CUR, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %18, %16, %14
  %21 = load %struct.buf_io_priv*, %struct.buf_io_priv** %7, align 8
  %22 = getelementptr inbounds %struct.buf_io_priv, %struct.buf_io_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %24, align 8
  %26 = load %struct.buf_io_priv*, %struct.buf_io_priv** %7, align 8
  %27 = getelementptr inbounds %struct.buf_io_priv, %struct.buf_io_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.buf_io_priv*, %struct.buf_io_priv** %7, align 8
  %32 = getelementptr inbounds %struct.buf_io_priv, %struct.buf_io_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 %25(i32 %30, i32 %33, i32 %34, i32 %35)
  ret i32 %36
}

declare dso_local %struct.buf_io_priv* @get_priv_io(i32*) #1

declare dso_local i32 @r_warn_if_reached(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
