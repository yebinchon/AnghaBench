; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_params.c_get_ptr_internal.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_params.c_get_ptr_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**, i64*, i32)* @get_ptr_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ptr_internal(%struct.TYPE_3__* %0, i8** %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8**, i8*** %7, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %12, %4
  store i32 0, i32* %5, align 4
  br label %37

22:                                               ; preds = %15
  %23 = load i64*, i64** %8, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %8, align 8
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %25, %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %21
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
