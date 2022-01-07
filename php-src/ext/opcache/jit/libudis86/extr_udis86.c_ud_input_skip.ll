; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_input_skip.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_input_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32 (%struct.ud*)*, i64, i64, i32* }

@UD_EOI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot skip, eoi received\08\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ud_input_skip(%struct.ud* %0, i64 %1) #0 {
  %3 = alloca %struct.ud*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ud*, %struct.ud** %3, align 8
  %7 = getelementptr inbounds %struct.ud, %struct.ud* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %66

11:                                               ; preds = %2
  %12 = load %struct.ud*, %struct.ud** %3, align 8
  %13 = getelementptr inbounds %struct.ud, %struct.ud* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %4, align 8
  %20 = icmp ne i64 %18, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.ud*, %struct.ud** %3, align 8
  %23 = getelementptr inbounds %struct.ud, %struct.ud* %22, i32 0, i32 1
  %24 = load i32 (%struct.ud*)*, i32 (%struct.ud*)** %23, align 8
  %25 = load %struct.ud*, %struct.ud** %3, align 8
  %26 = call i32 %24(%struct.ud* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @UD_EOI, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %61

31:                                               ; preds = %21
  br label %17

32:                                               ; preds = %17
  br label %66

33:                                               ; preds = %11
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.ud*, %struct.ud** %3, align 8
  %36 = getelementptr inbounds %struct.ud, %struct.ud* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %33
  %40 = load %struct.ud*, %struct.ud** %3, align 8
  %41 = getelementptr inbounds %struct.ud, %struct.ud* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ud*, %struct.ud** %3, align 8
  %44 = getelementptr inbounds %struct.ud, %struct.ud* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = sub i64 %45, %46
  %48 = icmp ugt i64 %42, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %39, %33
  %50 = load %struct.ud*, %struct.ud** %3, align 8
  %51 = getelementptr inbounds %struct.ud, %struct.ud* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ud*, %struct.ud** %3, align 8
  %54 = getelementptr inbounds %struct.ud, %struct.ud* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  br label %61

55:                                               ; preds = %39
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.ud*, %struct.ud** %3, align 8
  %58 = getelementptr inbounds %struct.ud, %struct.ud* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %56
  store i64 %60, i64* %58, align 8
  br label %66

61:                                               ; preds = %49, %30
  %62 = load %struct.ud*, %struct.ud** %3, align 8
  %63 = getelementptr inbounds %struct.ud, %struct.ud* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.ud*, %struct.ud** %3, align 8
  %65 = call i32 @UDERR(%struct.ud* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %55, %32, %10
  ret void
}

declare dso_local i32 @UDERR(%struct.ud*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
