; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_get_leb128_as_signed.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_get_leb128_as_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8**)* @dwarf2_get_leb128_as_signed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dwarf2_get_leb128_as_signed(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 32, i32* %8, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %3, align 8
  %12 = ptrtoint i8* %10 to i32
  %13 = call zeroext i8 @dwarf2_get_byte(i32 %12)
  store i8 %13, i8* %6, align 1
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 127
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %5, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 7
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %9
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %9, label %29

29:                                               ; preds = %24
  %30 = load i8**, i8*** %4, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %3, align 8
  %34 = load i8**, i8*** %4, align 8
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp ult i32 %36, 32
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i8, i8* %6, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 64
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 1, %44
  %46 = sub nsw i32 0, %45
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %5, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %43, %38, %35
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local zeroext i8 @dwarf2_get_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
