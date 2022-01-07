; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_number.c_number_to_str.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_number.c_number_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMBER_DTOA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, i8*, i32, i32*)* @number_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @number_to_str(double %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store double %0, double* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @NUMBER_DTOA_SIZE, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load double, double* %5, align 8
  %19 = fcmp oge double %18, 0.000000e+00
  br label %20

20:                                               ; preds = %17, %13, %4
  %21 = phi i1 [ false, %13 ], [ false, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load double, double* %5, align 8
  %25 = fcmp oeq double %24, 0.000000e+00
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32*, i32** %8, align 8
  store i32 0, i32* %27, align 4
  br label %33

28:                                               ; preds = %20
  %29 = load double, double* %5, align 8
  %30 = call i32 @log10(double %29)
  %31 = call i32 @floor(i32 %30)
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load double, double* %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %35, %37
  %39 = sub nsw i32 %38, 1
  %40 = call double @pow(i32 10, i32 %39)
  %41 = fmul double %34, %40
  %42 = fptosi double %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = srem i32 %43, 10
  %45 = icmp sge i32 %44, 5
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  %48 = sdiv i32 %47, 10
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %53

50:                                               ; preds = %33
  %51 = load i32, i32* %9, align 4
  %52 = sdiv i32 %51, 10
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, 2
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %75, %53
  %62 = load i32, i32* %10, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = srem i32 %65, 10
  %67 = add nsw i32 48, %66
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 %68, i8* %72, align 1
  %73 = load i32, i32* %9, align 4
  %74 = sdiv i32 %73, 10
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %10, align 4
  br label %61

78:                                               ; preds = %61
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 2
  %90 = call i32 @memmove(i8* %86, i8* %87, i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 48, %91
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 %93, i8* %95, align 1
  br label %130

96:                                               ; preds = %78
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 48
  br i1 %101, label %102, label %129

102:                                              ; preds = %96
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp sge i32 %106, 49
  br i1 %107, label %108, label %129

108:                                              ; preds = %102
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp sle i32 %112, 57
  br i1 %113, label %114, label %129

114:                                              ; preds = %108
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %121, 2
  %123 = call i32 @memmove(i8* %118, i8* %120, i32 %122)
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sub nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 48, i8* %128, align 1
  br label %129

129:                                              ; preds = %114, %108, %102, %96
  br label %130

130:                                              ; preds = %129, %81
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @log10(double) #1

declare dso_local double @pow(i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
