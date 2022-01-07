; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_load_stream_name_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_load_stream_name_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdb_file_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"unexpected value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdb_file_info*, i8*, i32)* @pdb_load_stream_name_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdb_load_stream_name_table(%struct.pdb_file_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.pdb_file_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.pdb_file_info* %0, %struct.pdb_file_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %7, align 8
  %21 = load i32, i32* %19, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %7, align 8
  %24 = load i32, i32* %22, align 4
  store i32 %24, i32* %9, align 4
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = add i64 %29, %31
  %33 = trunc i64 %32 to i32
  %34 = call %struct.TYPE_2__* @HeapAlloc(i32 %25, i32 0, i32 %33)
  %35 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %36 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %35, i32 0, i32 1
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %38 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %3
  br label %131

42:                                               ; preds = %3
  %43 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %44 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 1
  %50 = bitcast %struct.TYPE_2__* %49 to i8*
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @memcpy(i8* %51, i8* %52, i32 %53)
  %55 = load i32*, i32** %7, align 8
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %8, align 8
  %58 = load i32, i32* %56, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32*, i32** %7, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %7, align 8
  %65 = load i32, i32* %63, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %42
  %68 = call i32 @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %131

69:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %118, %69
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %121

74:                                               ; preds = %70
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = udiv i32 %76, 32
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = urem i32 %81, 32
  %83 = shl i32 1, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %117

86:                                               ; preds = %74
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp uge i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %121

91:                                               ; preds = %86
  %92 = load i8*, i8** %13, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %7, align 8
  %95 = load i32, i32* %93, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  %98 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %99 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i8* %97, i8** %104, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %7, align 8
  %107 = load i32, i32* %105, align 4
  %108 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %109 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %107, i32* %114, align 8
  %115 = load i32, i32* %12, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %91, %74
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %70

121:                                              ; preds = %90, %70
  %122 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %123 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i8* null, i8** %128, align 8
  %129 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %130 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %129, i32 0, i32 0
  store i32 -1, i32* %130, align 8
  br label %131

131:                                              ; preds = %121, %67, %41
  ret void
}

declare dso_local %struct.TYPE_2__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
