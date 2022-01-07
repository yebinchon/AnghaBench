; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_new_public_symbols.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_new_public_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i64 }
%struct.hash_table = type { i32 }
%struct.hash_table_iter = type { i32 }
%struct.symtab_elt = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@dbghelp_options = common dso_local global i32 0, align 4
@SYMOPT_NO_PUBLICS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, %struct.hash_table*)* @elf_new_public_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_new_public_symbols(%struct.module* %0, %struct.hash_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.hash_table*, align 8
  %6 = alloca %struct.hash_table_iter, align 4
  %7 = alloca %struct.symtab_elt*, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store %struct.hash_table* %1, %struct.hash_table** %5, align 8
  %8 = load i32, i32* @dbghelp_options, align 4
  %9 = load i32, i32* @SYMOPT_NO_PUBLICS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %16 = call i32 @hash_table_iter_init(%struct.hash_table* %15, %struct.hash_table_iter* %6, i32* null)
  br label %17

17:                                               ; preds = %20, %14
  %18 = call %struct.symtab_elt* @hash_table_iter_up(%struct.hash_table_iter* %6)
  store %struct.symtab_elt* %18, %struct.symtab_elt** %7, align 8
  %19 = icmp ne %struct.symtab_elt* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load %struct.module*, %struct.module** %4, align 8
  %22 = load %struct.symtab_elt*, %struct.symtab_elt** %7, align 8
  %23 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.symtab_elt*, %struct.symtab_elt** %7, align 8
  %26 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.module*, %struct.module** %4, align 8
  %30 = getelementptr inbounds %struct.module, %struct.module* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.symtab_elt*, %struct.symtab_elt** %7, align 8
  %33 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %31, %36
  %38 = load %struct.symtab_elt*, %struct.symtab_elt** %7, align 8
  %39 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @symt_new_public(%struct.module* %21, i32 %24, i32 %28, i64 %37, i32 %42)
  br label %17

44:                                               ; preds = %17
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @hash_table_iter_init(%struct.hash_table*, %struct.hash_table_iter*, i32*) #1

declare dso_local %struct.symtab_elt* @hash_table_iter_up(%struct.hash_table_iter*) #1

declare dso_local i32 @symt_new_public(%struct.module*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
