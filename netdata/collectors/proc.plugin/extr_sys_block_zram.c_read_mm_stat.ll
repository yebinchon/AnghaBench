; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_block_zram.c_read_mm_stat.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_block_zram.c_read_mm_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @read_mm_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mm_stat(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32* @procfile_readall(i32* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %61

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @procfile_lines(i32* %12)
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @procfile_close(i32* %16)
  store i32 -1, i32* %3, align 4
  br label %61

18:                                               ; preds = %11
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @procfile_linewords(i32* %19, i32 0)
  %21 = icmp slt i32 %20, 7
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @procfile_close(i32* %23)
  store i32 -1, i32* %3, align 4
  br label %61

25:                                               ; preds = %18
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @procfile_word(i32* %26, i32 0)
  %28 = call i8* @str2ull(i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @procfile_word(i32* %31, i32 1)
  %33 = call i8* @str2ull(i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @procfile_word(i32* %36, i32 2)
  %38 = call i8* @str2ull(i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @procfile_word(i32* %41, i32 3)
  %43 = call i8* @str2ull(i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @procfile_word(i32* %46, i32 4)
  %48 = call i8* @str2ull(i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @procfile_word(i32* %51, i32 5)
  %53 = call i8* @str2ull(i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @procfile_word(i32* %56, i32 6)
  %58 = call i8* @str2ull(i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %25, %22, %15, %10
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i32 @procfile_lines(i32*) #1

declare dso_local i32 @procfile_close(i32*) #1

declare dso_local i32 @procfile_linewords(i32*, i32) #1

declare dso_local i8* @str2ull(i32) #1

declare dso_local i32 @procfile_word(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
