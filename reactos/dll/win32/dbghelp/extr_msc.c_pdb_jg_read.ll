; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_jg_read.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_jg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PDB_JG_HEADER = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.PDB_JG_HEADER*, i32*, i32)* @pdb_jg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pdb_jg_read(%struct.PDB_JG_HEADER* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.PDB_JG_HEADER*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.PDB_JG_HEADER* %0, %struct.PDB_JG_HEADER** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %67

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.PDB_JG_HEADER*, %struct.PDB_JG_HEADER** %5, align 8
  %17 = getelementptr inbounds %struct.PDB_JG_HEADER, %struct.PDB_JG_HEADER* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.PDB_JG_HEADER*, %struct.PDB_JG_HEADER** %5, align 8
  %22 = getelementptr inbounds %struct.PDB_JG_HEADER, %struct.PDB_JG_HEADER* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %20, %23
  store i32 %24, i32* %9, align 4
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.PDB_JG_HEADER*, %struct.PDB_JG_HEADER** %5, align 8
  %28 = getelementptr inbounds %struct.PDB_JG_HEADER, %struct.PDB_JG_HEADER* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = call i8* @HeapAlloc(i32 %25, i32 0, i32 %30)
  store i8* %31, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %62, %14
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.PDB_JG_HEADER*, %struct.PDB_JG_HEADER** %5, align 8
  %40 = getelementptr inbounds %struct.PDB_JG_HEADER, %struct.PDB_JG_HEADER* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %37, i64 %43
  %45 = load %struct.PDB_JG_HEADER*, %struct.PDB_JG_HEADER** %5, align 8
  %46 = bitcast %struct.PDB_JG_HEADER* %45 to i8*
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.PDB_JG_HEADER*, %struct.PDB_JG_HEADER** %5, align 8
  %53 = getelementptr inbounds %struct.PDB_JG_HEADER, %struct.PDB_JG_HEADER* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %46, i64 %56
  %58 = load %struct.PDB_JG_HEADER*, %struct.PDB_JG_HEADER** %5, align 8
  %59 = getelementptr inbounds %struct.PDB_JG_HEADER, %struct.PDB_JG_HEADER* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i8* %44, i8* %57, i32 %60)
  br label %62

62:                                               ; preds = %36
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %32

65:                                               ; preds = %32
  %66 = load i8*, i8** %10, align 8
  store i8* %66, i8** %4, align 8
  br label %67

67:                                               ; preds = %65, %13
  %68 = load i8*, i8** %4, align 8
  ret i8* %68
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
