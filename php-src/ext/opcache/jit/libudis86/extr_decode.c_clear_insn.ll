; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_clear_insn.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_clear_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { %struct.TYPE_2__*, i64, i64, i64, i64, i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i8* }

@UD_Inone = common dso_local global i32 0, align 4
@UD_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ud*)* @clear_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_insn(%struct.ud* %0) #0 {
  %2 = alloca %struct.ud*, align 8
  store %struct.ud* %0, %struct.ud** %2, align 8
  %3 = load %struct.ud*, %struct.ud** %2, align 8
  %4 = getelementptr inbounds %struct.ud, %struct.ud* %3, i32 0, i32 16
  store i64 0, i64* %4, align 8
  %5 = load %struct.ud*, %struct.ud** %2, align 8
  %6 = getelementptr inbounds %struct.ud, %struct.ud* %5, i32 0, i32 15
  store i64 0, i64* %6, align 8
  %7 = load %struct.ud*, %struct.ud** %2, align 8
  %8 = getelementptr inbounds %struct.ud, %struct.ud* %7, i32 0, i32 14
  store i64 0, i64* %8, align 8
  %9 = load %struct.ud*, %struct.ud** %2, align 8
  %10 = getelementptr inbounds %struct.ud, %struct.ud* %9, i32 0, i32 13
  store i64 0, i64* %10, align 8
  %11 = load %struct.ud*, %struct.ud** %2, align 8
  %12 = getelementptr inbounds %struct.ud, %struct.ud* %11, i32 0, i32 12
  store i64 0, i64* %12, align 8
  %13 = load %struct.ud*, %struct.ud** %2, align 8
  %14 = getelementptr inbounds %struct.ud, %struct.ud* %13, i32 0, i32 11
  store i64 0, i64* %14, align 8
  %15 = load %struct.ud*, %struct.ud** %2, align 8
  %16 = getelementptr inbounds %struct.ud, %struct.ud* %15, i32 0, i32 10
  store i64 0, i64* %16, align 8
  %17 = load %struct.ud*, %struct.ud** %2, align 8
  %18 = getelementptr inbounds %struct.ud, %struct.ud* %17, i32 0, i32 9
  store i64 0, i64* %18, align 8
  %19 = load %struct.ud*, %struct.ud** %2, align 8
  %20 = getelementptr inbounds %struct.ud, %struct.ud* %19, i32 0, i32 8
  store i64 0, i64* %20, align 8
  %21 = load %struct.ud*, %struct.ud** %2, align 8
  %22 = getelementptr inbounds %struct.ud, %struct.ud* %21, i32 0, i32 7
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @UD_Inone, align 4
  %24 = load %struct.ud*, %struct.ud** %2, align 8
  %25 = getelementptr inbounds %struct.ud, %struct.ud* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ud*, %struct.ud** %2, align 8
  %27 = getelementptr inbounds %struct.ud, %struct.ud* %26, i32 0, i32 5
  store i32* null, i32** %27, align 8
  %28 = load %struct.ud*, %struct.ud** %2, align 8
  %29 = getelementptr inbounds %struct.ud, %struct.ud* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.ud*, %struct.ud** %2, align 8
  %31 = getelementptr inbounds %struct.ud, %struct.ud* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.ud*, %struct.ud** %2, align 8
  %33 = getelementptr inbounds %struct.ud, %struct.ud* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.ud*, %struct.ud** %2, align 8
  %35 = getelementptr inbounds %struct.ud, %struct.ud* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** @UD_NONE, align 8
  %37 = load %struct.ud*, %struct.ud** %2, align 8
  %38 = getelementptr inbounds %struct.ud, %struct.ud* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i8* %36, i8** %41, align 8
  %42 = load i8*, i8** @UD_NONE, align 8
  %43 = load %struct.ud*, %struct.ud** %2, align 8
  %44 = getelementptr inbounds %struct.ud, %struct.ud* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %42, i8** %47, align 8
  %48 = load i8*, i8** @UD_NONE, align 8
  %49 = load %struct.ud*, %struct.ud** %2, align 8
  %50 = getelementptr inbounds %struct.ud, %struct.ud* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %48, i8** %53, align 8
  %54 = load i8*, i8** @UD_NONE, align 8
  %55 = load %struct.ud*, %struct.ud** %2, align 8
  %56 = getelementptr inbounds %struct.ud, %struct.ud* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i8* %54, i8** %59, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
