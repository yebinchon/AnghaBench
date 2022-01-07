; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_process_types.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_process_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc_debug_info = type { i32 }
%struct.pdb_file_info = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.codeview_type_parse = type { i32, i32*, i32*, i32 }
%union.codeview_type = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"-Unknown type info version %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msc_debug_info*, %struct.pdb_file_info*)* @pdb_process_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdb_process_types(%struct.msc_debug_info* %0, %struct.pdb_file_info* %1) #0 {
  %3 = alloca %struct.msc_debug_info*, align 8
  %4 = alloca %struct.pdb_file_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca %struct.codeview_type_parse, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.msc_debug_info* %0, %struct.msc_debug_info** %3, align 8
  store %struct.pdb_file_info* %1, %struct.pdb_file_info** %4, align 8
  store i32* null, i32** %5, align 8
  %11 = load %struct.pdb_file_info*, %struct.pdb_file_info** %4, align 8
  %12 = call i32* @pdb_read_file(%struct.pdb_file_info* %11, i32 2)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %97

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @pdb_convert_types_header(%struct.TYPE_5__* %6, i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %21 [
    i32 19950410, label %20
    i32 19951122, label %20
    i32 19961031, label %20
    i32 19990903, label %20
    i32 20040203, label %20
  ]

20:                                               ; preds = %15, %15, %15, %15, %15
  br label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %20
  %26 = load %struct.msc_debug_info*, %struct.msc_debug_info** %3, align 8
  %27 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %7, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %31, %33
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = call i32 (...) @GetProcessHeap()
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32* @HeapAlloc(i32 %36, i32 0, i32 %40)
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32* %46, i32** %9, align 8
  %47 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %7, i32 0, i32 2
  store i32* %46, i32** %47, align 8
  %48 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %7, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %65, %25
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %7, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = icmp ult i32* %50, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br label %63

63:                                               ; preds = %58, %49
  %64 = phi i1 [ false, %49 ], [ %62, %58 ]
  br i1 %64, label %65, label %88

65:                                               ; preds = %63
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %7, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = ptrtoint i32* %66 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %7, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32 %73, i32* %79, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = bitcast i32* %80 to %union.codeview_type*
  %82 = bitcast %union.codeview_type* %81 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 2
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 %85
  store i32* %87, i32** %9, align 8
  br label %49

88:                                               ; preds = %63
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %7, i32 0, i32 1
  store i32* %89, i32** %90, align 8
  %91 = call i32 @codeview_parse_type_table(%struct.codeview_type_parse* %7)
  %92 = call i32 (...) @GetProcessHeap()
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @HeapFree(i32 %92, i32 0, i32* %93)
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @pdb_free(i32* %95)
  br label %97

97:                                               ; preds = %88, %2
  ret void
}

declare dso_local i32* @pdb_read_file(%struct.pdb_file_info*, i32) #1

declare dso_local i32 @pdb_convert_types_header(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @codeview_parse_type_table(%struct.codeview_type_parse*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @pdb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
