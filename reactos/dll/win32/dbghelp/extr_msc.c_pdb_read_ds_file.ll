; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_read_ds_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_read_ds_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PDB_DS_HEADER = type { i32 }
%struct.PDB_DS_TOC = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.PDB_DS_HEADER*, %struct.PDB_DS_TOC*, i64)* @pdb_read_ds_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pdb_read_ds_file(%struct.PDB_DS_HEADER* %0, %struct.PDB_DS_TOC* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.PDB_DS_HEADER*, align 8
  %6 = alloca %struct.PDB_DS_TOC*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.PDB_DS_HEADER* %0, %struct.PDB_DS_HEADER** %5, align 8
  store %struct.PDB_DS_TOC* %1, %struct.PDB_DS_TOC** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.PDB_DS_TOC*, %struct.PDB_DS_TOC** %6, align 8
  %11 = icmp ne %struct.PDB_DS_TOC* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.PDB_DS_TOC*, %struct.PDB_DS_TOC** %6, align 8
  %15 = getelementptr inbounds %struct.PDB_DS_TOC, %struct.PDB_DS_TOC* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %3
  store i8* null, i8** %4, align 8
  br label %81

19:                                               ; preds = %12
  %20 = load %struct.PDB_DS_TOC*, %struct.PDB_DS_TOC** %6, align 8
  %21 = getelementptr inbounds %struct.PDB_DS_TOC, %struct.PDB_DS_TOC* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load %struct.PDB_DS_TOC*, %struct.PDB_DS_TOC** %6, align 8
  %29 = getelementptr inbounds %struct.PDB_DS_TOC, %struct.PDB_DS_TOC* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %19
  store i8* null, i8** %4, align 8
  br label %81

36:                                               ; preds = %27
  %37 = load %struct.PDB_DS_TOC*, %struct.PDB_DS_TOC** %6, align 8
  %38 = getelementptr inbounds %struct.PDB_DS_TOC, %struct.PDB_DS_TOC* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.PDB_DS_TOC*, %struct.PDB_DS_TOC** %6, align 8
  %41 = getelementptr inbounds %struct.PDB_DS_TOC, %struct.PDB_DS_TOC* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = bitcast i32* %43 to i64*
  store i64* %44, i64** %8, align 8
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %68, %36
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load %struct.PDB_DS_TOC*, %struct.PDB_DS_TOC** %6, align 8
  %51 = getelementptr inbounds %struct.PDB_DS_TOC, %struct.PDB_DS_TOC* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.PDB_DS_HEADER*, %struct.PDB_DS_HEADER** %5, align 8
  %57 = getelementptr inbounds %struct.PDB_DS_HEADER, %struct.PDB_DS_HEADER* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.PDB_DS_HEADER*, %struct.PDB_DS_HEADER** %5, align 8
  %62 = getelementptr inbounds %struct.PDB_DS_HEADER, %struct.PDB_DS_HEADER* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %60, %63
  %65 = load i64*, i64** %8, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64* %67, i64** %8, align 8
  br label %68

68:                                               ; preds = %49
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %45

71:                                               ; preds = %45
  %72 = load %struct.PDB_DS_HEADER*, %struct.PDB_DS_HEADER** %5, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = load %struct.PDB_DS_TOC*, %struct.PDB_DS_TOC** %6, align 8
  %75 = getelementptr inbounds %struct.PDB_DS_TOC, %struct.PDB_DS_TOC* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @pdb_ds_read(%struct.PDB_DS_HEADER* %72, i64* %73, i32 %79)
  store i8* %80, i8** %4, align 8
  br label %81

81:                                               ; preds = %71, %35, %18
  %82 = load i8*, i8** %4, align 8
  ret i8* %82
}

declare dso_local i8* @pdb_ds_read(%struct.PDB_DS_HEADER*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
