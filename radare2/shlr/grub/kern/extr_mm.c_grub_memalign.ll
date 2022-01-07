; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_mm.c_grub_memalign.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_mm.c_grub_memalign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__* }

@GRUB_MM_ALIGN = common dso_local global i32 0, align 4
@GRUB_MM_ALIGN_LOG2 = common dso_local global i32 0, align 4
@base = common dso_local global %struct.TYPE_3__* null, align 8
@GRUB_ERR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @grub_memalign(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GRUB_MM_ALIGN, align 4
  %12 = add nsw i32 %10, %11
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* @GRUB_MM_ALIGN_LOG2, align 4
  %15 = ashr i32 %13, %14
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GRUB_MM_ALIGN_LOG2, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %2
  br label %24

24:                                               ; preds = %50, %46, %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @base, align 8
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %6, align 8
  br label %26

26:                                               ; preds = %40, %24
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i8* @grub_real_malloc(i32* %31, i32 %32, i32 %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i8*, i8** %9, align 8
  store i8* %38, i8** %3, align 8
  br label %57

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %6, align 8
  br label %26

44:                                               ; preds = %26
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %53 [
    i32 0, label %46
    i32 1, label %50
  ]

46:                                               ; preds = %44
  %47 = call i32 (...) @grub_disk_cache_invalidate_all()
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %24

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %24

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* @GRUB_ERR_OUT_OF_MEMORY, align 4
  %56 = call i32 @grub_error(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %57

57:                                               ; preds = %54, %37
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

declare dso_local i8* @grub_real_malloc(i32*, i32, i32) #1

declare dso_local i32 @grub_disk_cache_invalidate_all(...) #1

declare dso_local i32 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
