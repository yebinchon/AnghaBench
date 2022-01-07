; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_file.c_grub_file_pb_read.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_file.c_grub_file_pb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GRUB_FILE_PB_MIN_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @grub_file_pb_read(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @GRUB_FILE_PB_MIN_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %4
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @grub_file_read(i32 %24, i8* %25, i32 %26)
  store i64 %27, i64* %5, align 8
  br label %83

28:                                               ; preds = %20
  store i64 0, i64* %10, align 8
  br i1 true, label %29, label %31

29:                                               ; preds = %28
  %30 = call i32 (...) @grub_file_pb_init()
  br label %31

31:                                               ; preds = %29, %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sdiv i32 %32, %33
  %35 = add nsw i32 %34, 511
  %36 = and i32 %35, -512
  store i32 %36, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %64, %31
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @grub_file_pb_show(i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i64 @grub_file_read(i32 %53, i8* %54, i32 %55)
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i64 -1, i64* %10, align 8
  br label %63

63:                                               ; preds = %62, %59
  br label %78

64:                                               ; preds = %51
  %65 = load i64, i64* %15, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 %65
  store i8* %67, i8** %13, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %8, align 4
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %37

78:                                               ; preds = %63, %37
  br i1 true, label %79, label %81

79:                                               ; preds = %78
  %80 = call i32 (...) @grub_file_pb_fini()
  br label %81

81:                                               ; preds = %79, %78
  %82 = load i64, i64* %10, align 8
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %81, %23
  %84 = load i64, i64* %5, align 8
  ret i64 %84
}

declare dso_local i64 @grub_file_read(i32, i8*, i32) #1

declare dso_local i32 @grub_file_pb_init(...) #1

declare dso_local i32 @grub_file_pb_show(i32, i32) #1

declare dso_local i32 @grub_file_pb_fini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
