; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_Espconn_mem.c_espconn_memcpy.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_Espconn_mem.c_espconn_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @espconn_memcpy(i8* %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* null, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* null, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %5
  store i8* null, i8** %6, align 8
  br label %66

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ugt i8* %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  store i8* %38, i8** %13, align 8
  br label %39

39:                                               ; preds = %43, %30
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %9, align 8
  %42 = icmp ne i64 %40, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %12, align 8
  %46 = load i8, i8* %44, align 1
  %47 = load i8*, i8** %13, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 -1
  store i8* %48, i8** %13, align 8
  store i8 %46, i8* %47, align 1
  br label %39

49:                                               ; preds = %39
  br label %64

50:                                               ; preds = %24, %20
  %51 = load i8*, i8** %8, align 8
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %7, align 8
  store i8* %52, i8** %13, align 8
  br label %53

53:                                               ; preds = %57, %50
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %9, align 8
  %56 = icmp ne i64 %54, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %12, align 8
  %60 = load i8, i8* %58, align 1
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %13, align 8
  store i8 %60, i8* %61, align 1
  br label %53

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i8*, i8** %7, align 8
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %64, %19
  %67 = load i8*, i8** %6, align 8
  ret i8* %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
