; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_get_leb128_as_unsigned.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_get_leb128_as_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8**)* @dwarf2_get_leb128_as_unsigned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dwarf2_get_leb128_as_unsigned(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %3, align 8
  %11 = ptrtoint i8* %9 to i32
  %12 = call zeroext i8 @dwarf2_get_byte(i32 %11)
  store i8 %12, i8* %6, align 1
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 127
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %5, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, 7
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %8
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %8, label %28

28:                                               ; preds = %23
  %29 = load i8**, i8*** %4, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = load i8**, i8*** %4, align 8
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i64, i64* %5, align 8
  ret i64 %35
}

declare dso_local zeroext i8 @dwarf2_get_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
