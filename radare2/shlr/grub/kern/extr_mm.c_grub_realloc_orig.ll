; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_mm.c_grub_realloc_orig.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_mm.c_grub_realloc_orig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GRUB_MM_ALIGN = common dso_local global i32 0, align 4
@GRUB_MM_ALIGN_LOG2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @grub_realloc_orig(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @grub_malloc(i32 %13)
  store i8* %14, i8** %3, align 8
  br label %53

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @grub_free(i8* %19)
  store i8* null, i8** %3, align 8
  br label %53

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @GRUB_MM_ALIGN, align 4
  %24 = add nsw i32 %22, %23
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* @GRUB_MM_ALIGN_LOG2, align 4
  %27 = ashr i32 %25, %26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @get_header_from_pointer(i8* %29, %struct.TYPE_3__** %6, i32* %7)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load i8*, i8** %4, align 8
  store i8* %37, i8** %3, align 8
  br label %53

38:                                               ; preds = %21
  %39 = load i32, i32* %5, align 4
  %40 = call i8* @grub_malloc(i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %3, align 8
  br label %53

45:                                               ; preds = %38
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @grub_memcpy(i8* %46, i8* %47, i32 %48)
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @grub_free(i8* %50)
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %45, %43, %36, %18, %12
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i32 @get_header_from_pointer(i8*, %struct.TYPE_3__**, i32*) #1

declare dso_local i32 @grub_memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
