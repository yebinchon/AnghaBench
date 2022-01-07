; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldump.c_MaybeByteSwap.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldump.c_MaybeByteSwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.TYPE_5__*)* @MaybeByteSwap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MaybeByteSwap(i8* %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  store i32 1, i32* %7, align 4
  %11 = bitcast i32* %7 to i8*
  %12 = load i8, i8* %11, align 4
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %14, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %5, align 8
  %24 = udiv i64 %23, 2
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %10, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = sub i64 %32, 1
  %34 = load i64, i64* %9, align 8
  %35 = sub i64 %33, %34
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8 %37, i8* %40, align 1
  %41 = load i8, i8* %10, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %43, 1
  %45 = load i64, i64* %9, align 8
  %46 = sub i64 %44, %45
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  store i8 %41, i8* %47, align 1
  br label %48

48:                                               ; preds = %26
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %21

51:                                               ; preds = %21
  br label %52

52:                                               ; preds = %51, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
