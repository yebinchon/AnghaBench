; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_is_in_thunk_area.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_is_in_thunk_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_thunk_area = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_is_in_thunk_area(i64 %0, %struct.elf_thunk_area* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.elf_thunk_area*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.elf_thunk_area* %1, %struct.elf_thunk_area** %5, align 8
  %7 = load %struct.elf_thunk_area*, %struct.elf_thunk_area** %5, align 8
  %8 = icmp ne %struct.elf_thunk_area* %7, null
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %39, %9
  %11 = load %struct.elf_thunk_area*, %struct.elf_thunk_area** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %11, i64 %13
  %15 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %10
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.elf_thunk_area*, %struct.elf_thunk_area** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %20, i64 %22
  %24 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %19, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.elf_thunk_area*, %struct.elf_thunk_area** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %29, i64 %31
  %33 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %28, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %27, %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %10

42:                                               ; preds = %10
  br label %43

43:                                               ; preds = %42, %2
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
