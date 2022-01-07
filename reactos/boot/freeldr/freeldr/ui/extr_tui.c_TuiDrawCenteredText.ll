; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawCenteredText.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawCenteredText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TuiDrawCenteredText(i64 %0, i64 %1, i64 %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca [2 x i8], align 1
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %14, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  br label %27

27:                                               ; preds = %54, %6
  %28 = load i64, i64* %18, align 8
  %29 = load i64, i64* %14, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load i8*, i8** %12, align 8
  %33 = load i64, i64* %18, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i64, i64* %18, align 8
  store i64 %39, i64* %19, align 8
  %40 = load i64, i64* %17, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %17, align 8
  br label %53

42:                                               ; preds = %31
  %43 = load i64, i64* %18, align 8
  %44 = load i64, i64* %19, align 8
  %45 = sub i64 %43, %44
  %46 = load i64, i64* %15, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* %19, align 8
  %51 = sub i64 %49, %50
  store i64 %51, i64* %15, align 8
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52, %38
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %18, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %18, align 8
  br label %27

57:                                               ; preds = %27
  %58 = load i64, i64* %17, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %60, %61
  %63 = load i64, i64* %15, align 8
  %64 = sub i64 %62, %63
  %65 = udiv i64 %64, 2
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %65, %66
  store i64 %67, i64* %20, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %9, align 8
  %70 = sub i64 %68, %69
  %71 = load i64, i64* %16, align 8
  %72 = sub i64 %70, %71
  %73 = udiv i64 %72, 2
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %73, %74
  store i64 %75, i64* %21, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  br label %76

76:                                               ; preds = %109, %57
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %14, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %112

80:                                               ; preds = %76
  %81 = load i8*, i8** %12, align 8
  %82 = load i64, i64* %18, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 10
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i64, i64* %21, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %21, align 8
  store i64 0, i64* %19, align 8
  br label %108

90:                                               ; preds = %80
  %91 = load i64, i64* %20, align 8
  %92 = load i64, i64* %19, align 8
  %93 = add i64 %91, %92
  store i64 %93, i64* %22, align 8
  %94 = load i64, i64* %21, align 8
  store i64 %94, i64* %23, align 8
  %95 = load i64, i64* %19, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %19, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i64, i64* %18, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  store i8 %100, i8* %101, align 1
  %102 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 1
  store i8 0, i8* %102, align 1
  %103 = load i64, i64* %22, align 8
  %104 = load i64, i64* %23, align 8
  %105 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @TuiDrawText(i64 %103, i64 %104, i8* %105, i32 %106)
  br label %108

108:                                              ; preds = %90, %87
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %18, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %18, align 8
  br label %76

112:                                              ; preds = %76
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @TuiDrawText(i64, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
