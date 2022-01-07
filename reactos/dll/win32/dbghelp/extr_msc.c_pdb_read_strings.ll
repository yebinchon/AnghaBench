; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_read_strings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_read_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdb_file_info = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"/names\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"string table not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pdb_file_info*)* @pdb_read_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pdb_read_strings(%struct.pdb_file_info* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pdb_file_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.pdb_file_info* %0, %struct.pdb_file_info** %3, align 8
  %6 = load %struct.pdb_file_info*, %struct.pdb_file_info** %3, align 8
  %7 = call i32 @pdb_get_stream_by_name(%struct.pdb_file_info* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.pdb_file_info*, %struct.pdb_file_info** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @pdb_read_file(%struct.pdb_file_info* %11, i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -268505090
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %2, align 8
  br label %28

23:                                               ; preds = %16, %10
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @pdb_free(i8* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local i32 @pdb_get_stream_by_name(%struct.pdb_file_info*, i8*) #1

declare dso_local i8* @pdb_read_file(%struct.pdb_file_info*, i32) #1

declare dso_local i32 @pdb_free(i8*) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
