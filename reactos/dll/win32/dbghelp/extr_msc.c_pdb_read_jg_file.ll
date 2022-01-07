; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_read_jg_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_read_jg_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PDB_JG_HEADER = type { i32 }
%struct.PDB_JG_TOC = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.PDB_JG_HEADER*, %struct.PDB_JG_TOC*, i64)* @pdb_read_jg_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pdb_read_jg_file(%struct.PDB_JG_HEADER* %0, %struct.PDB_JG_TOC* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.PDB_JG_HEADER*, align 8
  %6 = alloca %struct.PDB_JG_TOC*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.PDB_JG_HEADER* %0, %struct.PDB_JG_HEADER** %5, align 8
  store %struct.PDB_JG_TOC* %1, %struct.PDB_JG_TOC** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.PDB_JG_TOC*, %struct.PDB_JG_TOC** %6, align 8
  %11 = icmp ne %struct.PDB_JG_TOC* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.PDB_JG_TOC*, %struct.PDB_JG_TOC** %6, align 8
  %15 = getelementptr inbounds %struct.PDB_JG_TOC, %struct.PDB_JG_TOC* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %3
  store i8* null, i8** %4, align 8
  br label %66

19:                                               ; preds = %12
  %20 = load %struct.PDB_JG_TOC*, %struct.PDB_JG_TOC** %6, align 8
  %21 = getelementptr inbounds %struct.PDB_JG_TOC, %struct.PDB_JG_TOC* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.PDB_JG_TOC*, %struct.PDB_JG_TOC** %6, align 8
  %24 = getelementptr inbounds %struct.PDB_JG_TOC, %struct.PDB_JG_TOC* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %25
  %27 = bitcast %struct.TYPE_2__* %26 to i32*
  store i32* %27, i32** %8, align 8
  store i64 0, i64* %9, align 8
  br label %28

28:                                               ; preds = %52, %19
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load %struct.PDB_JG_TOC*, %struct.PDB_JG_TOC** %6, align 8
  %34 = getelementptr inbounds %struct.PDB_JG_TOC, %struct.PDB_JG_TOC* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.PDB_JG_HEADER*, %struct.PDB_JG_HEADER** %5, align 8
  %41 = getelementptr inbounds %struct.PDB_JG_HEADER, %struct.PDB_JG_HEADER* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.PDB_JG_HEADER*, %struct.PDB_JG_HEADER** %5, align 8
  %46 = getelementptr inbounds %struct.PDB_JG_HEADER, %struct.PDB_JG_HEADER* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %44, %47
  %49 = load i32*, i32** %8, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %8, align 8
  br label %52

52:                                               ; preds = %32
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %28

55:                                               ; preds = %28
  %56 = load %struct.PDB_JG_HEADER*, %struct.PDB_JG_HEADER** %5, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.PDB_JG_TOC*, %struct.PDB_JG_TOC** %6, align 8
  %59 = getelementptr inbounds %struct.PDB_JG_TOC, %struct.PDB_JG_TOC* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @pdb_jg_read(%struct.PDB_JG_HEADER* %56, i32* %57, i32 %64)
  store i8* %65, i8** %4, align 8
  br label %66

66:                                               ; preds = %55, %18
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

declare dso_local i8* @pdb_jg_read(%struct.PDB_JG_HEADER*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
