; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_printer.c_print_box_string.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_printer.c_print_box_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_box_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = mul i64 %11, 3
  %13 = add i64 %12, 8
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 -38, i8* %16, align 16
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %25, %1
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, 1
  %24 = getelementptr inbounds i8, i8* %15, i64 %23
  store i8 -60, i8* %24, align 1
  br label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %6, align 8
  br label %17

28:                                               ; preds = %17
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %15, i64 %30
  store i8 -65, i8* %31, align 1
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 2
  %34 = getelementptr inbounds i8, i8* %15, i64 %33
  store i8 10, i8* %34, align 1
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 3
  %37 = getelementptr inbounds i8, i8* %15, i64 %36
  store i8 -77, i8* %37, align 1
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %52, %28
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i8*, i8** %2, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %48, %49
  %51 = getelementptr inbounds i8, i8* %15, i64 %50
  store i8 %46, i8* %51, align 1
  br label %52

52:                                               ; preds = %42
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %38

55:                                               ; preds = %38
  %56 = load i64, i64* %3, align 8
  %57 = mul i64 %56, 2
  %58 = add i64 %57, 4
  %59 = getelementptr inbounds i8, i8* %15, i64 %58
  store i8 -77, i8* %59, align 1
  %60 = load i64, i64* %3, align 8
  %61 = mul i64 %60, 2
  %62 = add i64 %61, 5
  %63 = getelementptr inbounds i8, i8* %15, i64 %62
  store i8 10, i8* %63, align 1
  %64 = load i64, i64* %3, align 8
  %65 = mul i64 %64, 2
  %66 = add i64 %65, 6
  %67 = getelementptr inbounds i8, i8* %15, i64 %66
  store i8 -64, i8* %67, align 1
  store i64 0, i64* %8, align 8
  br label %68

68:                                               ; preds = %79, %55
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %3, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i64, i64* %3, align 8
  %74 = mul i64 %73, 2
  %75 = add i64 %74, 7
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %75, %76
  %78 = getelementptr inbounds i8, i8* %15, i64 %77
  store i8 -60, i8* %78, align 1
  br label %79

79:                                               ; preds = %72
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %68

82:                                               ; preds = %68
  %83 = load i64, i64* %3, align 8
  %84 = mul i64 %83, 3
  %85 = add i64 %84, 7
  %86 = getelementptr inbounds i8, i8* %15, i64 %85
  store i8 -39, i8* %86, align 1
  %87 = load i64, i64* %3, align 8
  %88 = mul i64 %87, 3
  %89 = add i64 %88, 8
  %90 = getelementptr inbounds i8, i8* %15, i64 %89
  store i8 10, i8* %90, align 1
  %91 = call i32 @print_string(i8* %15)
  %92 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %92)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @print_string(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
