; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_enum_modules_translate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_enum_modules_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_enum_user = type { i32, i32 (i32*, i64, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i32, i8*)* @elf_enum_modules_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_enum_modules_translate(i32* %0, i64 %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.elf_enum_user*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.elf_enum_user*
  store %struct.elf_enum_user* %13, %struct.elf_enum_user** %11, align 8
  %14 = load %struct.elf_enum_user*, %struct.elf_enum_user** %11, align 8
  %15 = getelementptr inbounds %struct.elf_enum_user, %struct.elf_enum_user* %14, i32 0, i32 1
  %16 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %15, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.elf_enum_user*, %struct.elf_enum_user** %11, align 8
  %20 = getelementptr inbounds %struct.elf_enum_user, %struct.elf_enum_user* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %16(i32* %17, i64 %18, i32 %21)
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
