; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_mmap.c_r_io_mmap_refresh_buf.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_mmap.c_r_io_mmap_refresh_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i32* }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @r_io_mmap_refresh_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_io_mmap_refresh_buf(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @r_buf_tell(i32* %15)
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i32 [ %16, %12 ], [ 0, %17 ]
  store i32 %19, i32* %4, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @r_buf_free(i32* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @r_buf_new_mmap(i32 %34, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @SEEK_SET, align 4
  %50 = call i32 @r_io_mmap_seek(i32* %46, %struct.TYPE_4__* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %31
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  ret i32 %56
}

declare dso_local i32 @r_buf_tell(i32*) #1

declare dso_local i32 @r_buf_free(i32*) #1

declare dso_local i32* @r_buf_new_mmap(i32, i32) #1

declare dso_local i32 @r_io_mmap_seek(i32*, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
