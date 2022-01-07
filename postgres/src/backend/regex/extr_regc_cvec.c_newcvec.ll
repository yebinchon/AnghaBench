; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_cvec.c_newcvec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_cvec.c_newcvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvec = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvec* (i32, i32)* @newcvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvec* @newcvec(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.cvec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cvec*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 2
  %14 = add i64 %10, %13
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = mul i64 %15, 4
  %17 = add i64 24, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @MALLOC(i64 %18)
  %20 = inttoptr i64 %19 to %struct.cvec*
  store %struct.cvec* %20, %struct.cvec** %8, align 8
  %21 = load %struct.cvec*, %struct.cvec** %8, align 8
  %22 = icmp eq %struct.cvec* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store %struct.cvec* null, %struct.cvec** %3, align 8
  br label %47

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.cvec*, %struct.cvec** %8, align 8
  %27 = getelementptr inbounds %struct.cvec, %struct.cvec* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.cvec*, %struct.cvec** %8, align 8
  %29 = bitcast %struct.cvec* %28 to i8*
  %30 = getelementptr inbounds i8, i8* %29, i64 24
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.cvec*, %struct.cvec** %8, align 8
  %33 = getelementptr inbounds %struct.cvec, %struct.cvec* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.cvec*, %struct.cvec** %8, align 8
  %35 = getelementptr inbounds %struct.cvec, %struct.cvec* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.cvec*, %struct.cvec** %8, align 8
  %41 = getelementptr inbounds %struct.cvec, %struct.cvec* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.cvec*, %struct.cvec** %8, align 8
  %44 = getelementptr inbounds %struct.cvec, %struct.cvec* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.cvec*, %struct.cvec** %8, align 8
  %46 = call %struct.cvec* @clearcvec(%struct.cvec* %45)
  store %struct.cvec* %46, %struct.cvec** %3, align 8
  br label %47

47:                                               ; preds = %24, %23
  %48 = load %struct.cvec*, %struct.cvec** %3, align 8
  ret %struct.cvec* %48
}

declare dso_local i64 @MALLOC(i64) #1

declare dso_local %struct.cvec* @clearcvec(%struct.cvec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
