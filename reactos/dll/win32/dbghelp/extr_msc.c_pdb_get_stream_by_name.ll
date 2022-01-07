; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_get_stream_by_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_get_stream_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdb_file_info = type { %struct.pdb_stream_name* }
%struct.pdb_stream_name = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdb_file_info*, i8*)* @pdb_get_stream_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdb_get_stream_by_name(%struct.pdb_file_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pdb_file_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pdb_stream_name*, align 8
  store %struct.pdb_file_info* %0, %struct.pdb_file_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %8 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %7, i32 0, i32 0
  %9 = load %struct.pdb_stream_name*, %struct.pdb_stream_name** %8, align 8
  store %struct.pdb_stream_name* %9, %struct.pdb_stream_name** %6, align 8
  br label %10

10:                                               ; preds = %32, %2
  %11 = load %struct.pdb_stream_name*, %struct.pdb_stream_name** %6, align 8
  %12 = icmp ne %struct.pdb_stream_name* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.pdb_stream_name*, %struct.pdb_stream_name** %6, align 8
  %15 = getelementptr inbounds %struct.pdb_stream_name, %struct.pdb_stream_name* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %35

20:                                               ; preds = %18
  %21 = load %struct.pdb_stream_name*, %struct.pdb_stream_name** %6, align 8
  %22 = getelementptr inbounds %struct.pdb_stream_name, %struct.pdb_stream_name* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcmp(i64 %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load %struct.pdb_stream_name*, %struct.pdb_stream_name** %6, align 8
  %29 = getelementptr inbounds %struct.pdb_stream_name, %struct.pdb_stream_name* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.pdb_stream_name*, %struct.pdb_stream_name** %6, align 8
  %34 = getelementptr inbounds %struct.pdb_stream_name, %struct.pdb_stream_name* %33, i32 1
  store %struct.pdb_stream_name* %34, %struct.pdb_stream_name** %6, align 8
  br label %10

35:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
