; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_c_itoa.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_c_itoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_SNPRINTF_FLAG_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32, i32, i32)* @c_itoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_itoa(i8* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [40 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load i32, i32* %16, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %20, %6
  br label %26

26:                                               ; preds = %53, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = srem i32 %27, %28
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp slt i32 %30, 10
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i32, i32* %17, align 4
  %34 = add nsw i32 48, %33
  %35 = trunc i32 %34 to i8
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %15, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 %38
  store i8 %35, i8* %39, align 1
  br label %49

40:                                               ; preds = %26
  %41 = load i32, i32* %17, align 4
  %42 = sub nsw i32 %41, 10
  %43 = add nsw i32 97, %42
  %44 = trunc i32 %43 to i8
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 %47
  store i8 %44, i8* %48, align 1
  br label %49

49:                                               ; preds = %40, %32
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sdiv i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %26, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load i64, i64* @C_SNPRINTF_FLAG_ZERO, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %72, %62
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %68, 39
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi i1 [ false, %63 ], [ %69, %67 ]
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 %75
  store i8 48, i8* %76, align 1
  br label %63

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %59, %56
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 %84
  store i8 45, i8* %85, align 1
  br label %86

86:                                               ; preds = %81, %78
  br label %87

87:                                               ; preds = %91, %86
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %15, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = call i32 @C_SNPRINTF_APPEND_CHAR(i8 signext %95)
  br label %87

97:                                               ; preds = %87
  %98 = load i32, i32* %14, align 4
  ret i32 %98
}

declare dso_local i32 @C_SNPRINTF_APPEND_CHAR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
