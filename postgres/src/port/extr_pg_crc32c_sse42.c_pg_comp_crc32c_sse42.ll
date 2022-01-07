; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_pg_crc32c_sse42.c_pg_comp_crc32c_sse42.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_pg_crc32c_sse42.c_pg_comp_crc32c_sse42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pg_comp_crc32c_sse42(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %18, %3
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ule i8* %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @_mm_crc32_u64(i64 %19, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  store i8* %25, i8** %7, align 8
  br label %13

26:                                               ; preds = %13
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ule i8* %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i64, i64* %4, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @_mm_crc32_u32(i64 %32, i32 %35)
  store i64 %36, i64* %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  store i8* %38, i8** %7, align 8
  br label %39

39:                                               ; preds = %31, %26
  br label %40

40:                                               ; preds = %44, %39
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i64, i64* %4, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @_mm_crc32_u8(i64 %45, i8 zeroext %47)
  store i64 %48, i64* %4, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  br label %40

51:                                               ; preds = %40
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i64 @_mm_crc32_u64(i64, i32) #1

declare dso_local i64 @_mm_crc32_u32(i64, i32) #1

declare dso_local i64 @_mm_crc32_u8(i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
