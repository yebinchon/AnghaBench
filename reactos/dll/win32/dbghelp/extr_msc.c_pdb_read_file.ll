; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_read_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdb_file_info = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.PDB_JG_HEADER = type { i32 }
%struct.PDB_DS_HEADER = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pdb_file_info*, i32)* @pdb_read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pdb_read_file(%struct.pdb_file_info* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pdb_file_info*, align 8
  %5 = alloca i32, align 4
  store %struct.pdb_file_info* %0, %struct.pdb_file_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %7 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %33 [
    i32 128, label %9
    i32 129, label %21
  ]

9:                                                ; preds = %2
  %10 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %11 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.PDB_JG_HEADER*
  %14 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %15 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i8* @pdb_read_jg_file(%struct.PDB_JG_HEADER* %13, i32 %18, i32 %19)
  store i8* %20, i8** %3, align 8
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %23 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.PDB_DS_HEADER*
  %26 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %27 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @pdb_read_ds_file(%struct.PDB_DS_HEADER* %25, i32 %30, i32 %31)
  store i8* %32, i8** %3, align 8
  br label %34

33:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %34

34:                                               ; preds = %33, %21, %9
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

declare dso_local i8* @pdb_read_jg_file(%struct.PDB_JG_HEADER*, i32, i32) #1

declare dso_local i8* @pdb_read_ds_file(%struct.PDB_DS_HEADER*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
