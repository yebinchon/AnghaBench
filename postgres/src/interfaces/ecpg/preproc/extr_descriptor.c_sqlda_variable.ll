; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_sqlda_variable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_sqlda_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable = type { i32*, i64, %struct.ECPGtype*, i32 }
%struct.ECPGtype = type { i64, %struct.TYPE_2__, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32* }

@ECPGt_sqlda = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.variable* @sqlda_variable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.variable*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i64 @mm_alloc(i32 32)
  %5 = inttoptr i64 %4 to %struct.variable*
  store %struct.variable* %5, %struct.variable** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @mm_strdup(i8* %6)
  %8 = load %struct.variable*, %struct.variable** %3, align 8
  %9 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = call i64 @mm_alloc(i32 40)
  %11 = inttoptr i64 %10 to %struct.ECPGtype*
  %12 = load %struct.variable*, %struct.variable** %3, align 8
  %13 = getelementptr inbounds %struct.variable, %struct.variable* %12, i32 0, i32 2
  store %struct.ECPGtype* %11, %struct.ECPGtype** %13, align 8
  %14 = load i32, i32* @ECPGt_sqlda, align 4
  %15 = load %struct.variable*, %struct.variable** %3, align 8
  %16 = getelementptr inbounds %struct.variable, %struct.variable* %15, i32 0, i32 2
  %17 = load %struct.ECPGtype*, %struct.ECPGtype** %16, align 8
  %18 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %17, i32 0, i32 4
  store i32 %14, i32* %18, align 8
  %19 = load %struct.variable*, %struct.variable** %3, align 8
  %20 = getelementptr inbounds %struct.variable, %struct.variable* %19, i32 0, i32 2
  %21 = load %struct.ECPGtype*, %struct.ECPGtype** %20, align 8
  %22 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load %struct.variable*, %struct.variable** %3, align 8
  %24 = getelementptr inbounds %struct.variable, %struct.variable* %23, i32 0, i32 2
  %25 = load %struct.ECPGtype*, %struct.ECPGtype** %24, align 8
  %26 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.variable*, %struct.variable** %3, align 8
  %28 = getelementptr inbounds %struct.variable, %struct.variable* %27, i32 0, i32 2
  %29 = load %struct.ECPGtype*, %struct.ECPGtype** %28, align 8
  %30 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.variable*, %struct.variable** %3, align 8
  %33 = getelementptr inbounds %struct.variable, %struct.variable* %32, i32 0, i32 2
  %34 = load %struct.ECPGtype*, %struct.ECPGtype** %33, align 8
  %35 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.variable*, %struct.variable** %3, align 8
  %37 = getelementptr inbounds %struct.variable, %struct.variable* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.variable*, %struct.variable** %3, align 8
  %39 = getelementptr inbounds %struct.variable, %struct.variable* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.variable*, %struct.variable** %3, align 8
  ret %struct.variable* %40
}

declare dso_local i64 @mm_alloc(i32) #1

declare dso_local i32 @mm_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
