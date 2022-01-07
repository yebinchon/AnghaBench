; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_malbolge.c_mal_anal.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_malbolge.c_mal_anal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8* }

@R_ANAL_OP_TYPE_UJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_IO = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ROR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_LOAD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_TRAP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_NOP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32, i32*, i32, i32)* @mal_anal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mal_anal(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %15 = call i32 @memset(%struct.TYPE_4__* %14, i8 signext 0, i32 24)
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %6
  %19 = load i32*, i32** %11, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %21, %22
  %24 = srem i32 %23, 94
  switch i32 %24, label %55 [
    i32 4, label %25
    i32 5, label %29
    i32 23, label %29
    i32 39, label %33
    i32 40, label %40
    i32 62, label %44
    i32 81, label %51
  ]

25:                                               ; preds = %18
  %26 = load i8*, i8** @R_ANAL_OP_TYPE_UJMP, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  br label %59

29:                                               ; preds = %18, %18
  %30 = load i8*, i8** @R_ANAL_OP_TYPE_IO, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  br label %59

33:                                               ; preds = %18
  %34 = load i8*, i8** @R_ANAL_OP_TYPE_ROR, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %59

40:                                               ; preds = %18
  %41 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %59

44:                                               ; preds = %18
  %45 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %59

51:                                               ; preds = %18
  %52 = load i8*, i8** @R_ANAL_OP_TYPE_TRAP, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %59

55:                                               ; preds = %18
  %56 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %55, %51, %44, %40, %33, %29, %25
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  store i32 1, i32* %7, align 4
  br label %63

62:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
