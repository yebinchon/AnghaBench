; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_mmap.c_hash_zone.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_mmap.c_hash_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@htotal = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_zone(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @htotal, align 8
  store i64 %6, i64* %5, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp uge i64 %9, 64
  br i1 %10, label %11, label %68

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr i8, i8* %12, i64 384
  %14 = call i32 @prefetch(i8* %13)
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = xor i64 %18, %17
  store i64 %19, i64* %5, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr i8, i8* %20, i64 8
  %22 = bitcast i8* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = xor i64 %24, %23
  store i64 %25, i64* %5, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr i8, i8* %26, i64 16
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = xor i64 %30, %29
  store i64 %31, i64* %5, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr i8, i8* %32, i64 24
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = xor i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr i8, i8* %38, i64 32
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = xor i64 %42, %41
  store i64 %43, i64* %5, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr i8, i8* %44, i64 40
  %46 = bitcast i8* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = xor i64 %48, %47
  store i64 %49, i64* %5, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr i8, i8* %50, i64 48
  %52 = bitcast i8* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = xor i64 %54, %53
  store i64 %55, i64* %5, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr i8, i8* %56, i64 56
  %58 = bitcast i8* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = xor i64 %60, %59
  store i64 %61, i64* %5, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr i8, i8* %62, i64 64
  store i8* %63, i8** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = sub i64 %65, 64
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  br label %7

68:                                               ; preds = %7
  br label %69

69:                                               ; preds = %72, %68
  %70 = load i32, i32* %4, align 4
  %71 = icmp uge i32 %70, 1
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i8*, i8** %3, align 8
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = load i64, i64* %5, align 8
  %77 = xor i64 %76, %75
  store i64 %77, i64* %5, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr i8, i8* %78, i64 1
  store i8* %79, i8** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = add i32 %80, -1
  store i32 %81, i32* %4, align 4
  br label %69

82:                                               ; preds = %69
  %83 = load i64, i64* %5, align 8
  store i64 %83, i64* @htotal, align 8
  ret void
}

declare dso_local i32 @prefetch(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
