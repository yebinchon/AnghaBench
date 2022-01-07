; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_inp_next.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_inp_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32*, i64, i64, i32, i32, {}*, i32*, i32 }

@UD_EOI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"byte expected, eoi received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*)* @inp_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inp_next(%struct.ud* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ud*, align 8
  %4 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %3, align 8
  %5 = load %struct.ud*, %struct.ud** %3, align 8
  %6 = getelementptr inbounds %struct.ud, %struct.ud* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %79

9:                                                ; preds = %1
  %10 = load %struct.ud*, %struct.ud** %3, align 8
  %11 = getelementptr inbounds %struct.ud, %struct.ud* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = load %struct.ud*, %struct.ud** %3, align 8
  %16 = getelementptr inbounds %struct.ud, %struct.ud* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ud*, %struct.ud** %3, align 8
  %19 = getelementptr inbounds %struct.ud, %struct.ud* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %14
  %23 = load %struct.ud*, %struct.ud** %3, align 8
  %24 = getelementptr inbounds %struct.ud, %struct.ud* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.ud*, %struct.ud** %3, align 8
  %28 = getelementptr inbounds %struct.ud, %struct.ud* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.ud*, %struct.ud** %3, align 8
  %31 = getelementptr inbounds %struct.ud, %struct.ud* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds i32, i32* %29, i64 %32
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ud*, %struct.ud** %3, align 8
  %37 = getelementptr inbounds %struct.ud, %struct.ud* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  store i32 %35, i32* %2, align 4
  br label %84

38:                                               ; preds = %14
  br label %78

39:                                               ; preds = %9
  %40 = load %struct.ud*, %struct.ud** %3, align 8
  %41 = getelementptr inbounds %struct.ud, %struct.ud* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @UD_EOI, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %39
  %47 = load %struct.ud*, %struct.ud** %3, align 8
  %48 = getelementptr inbounds %struct.ud, %struct.ud* %47, i32 0, i32 6
  %49 = bitcast {}** %48 to i32 (%struct.ud*)**
  %50 = load i32 (%struct.ud*)*, i32 (%struct.ud*)** %49, align 8
  %51 = load %struct.ud*, %struct.ud** %3, align 8
  %52 = call i32 %50(%struct.ud* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @UD_EOI, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %46, %39
  %56 = load i32, i32* @UD_EOI, align 4
  %57 = load %struct.ud*, %struct.ud** %3, align 8
  %58 = getelementptr inbounds %struct.ud, %struct.ud* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.ud*, %struct.ud** %3, align 8
  %61 = getelementptr inbounds %struct.ud, %struct.ud* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ud*, %struct.ud** %3, align 8
  %63 = getelementptr inbounds %struct.ud, %struct.ud* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ud*, %struct.ud** %3, align 8
  %66 = getelementptr inbounds %struct.ud, %struct.ud* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.ud*, %struct.ud** %3, align 8
  %69 = getelementptr inbounds %struct.ud, %struct.ud* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  store i32 %64, i32* %73, align 4
  %74 = load %struct.ud*, %struct.ud** %3, align 8
  %75 = getelementptr inbounds %struct.ud, %struct.ud* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %2, align 4
  br label %84

77:                                               ; preds = %46
  br label %78

78:                                               ; preds = %77, %38
  br label %79

79:                                               ; preds = %78, %1
  %80 = load %struct.ud*, %struct.ud** %3, align 8
  %81 = getelementptr inbounds %struct.ud, %struct.ud* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.ud*, %struct.ud** %3, align 8
  %83 = call i32 @UDERR(%struct.ud* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %55, %22
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @UDERR(%struct.ud*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
