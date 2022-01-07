; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c_str_fmt.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c_str_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @str_fmt(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %85 [
    i32 129, label %13
    i32 130, label %27
    i32 128, label %41
    i32 131, label %55
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %23, %13
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strichr(i8* %21, i8 signext 32)
  br label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %7, align 4
  br label %17

26:                                               ; preds = %17
  br label %85

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %37, %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strcat(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %8, align 4
  br label %31

40:                                               ; preds = %31
  br label %85

41:                                               ; preds = %3
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %51, %41
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strichr(i8* %49, i8 signext 48)
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  br label %45

54:                                               ; preds = %45
  br label %85

55:                                               ; preds = %3
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sdiv i32 %58, 2
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %71, %55
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @strcat(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  br label %65

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %81, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @strichr(i8* %79, i8 signext 32)
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  br label %75

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %3, %84, %54, %40, %26
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strichr(i8*, i8 signext) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
