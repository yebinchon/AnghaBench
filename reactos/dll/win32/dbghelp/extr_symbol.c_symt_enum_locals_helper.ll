; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_enum_locals_helper.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_enum_locals_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_pair = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sym_enum = type { i32 }
%struct.symt_function = type { i32 }
%struct.vector = type { i32 }
%struct.symt = type { i32 }
%struct.symt_block = type { %struct.vector, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@dbghelp_options = common dso_local global i32 0, align 4
@SYMOPT_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown type: %u (%x)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_pair*, i32*, %struct.sym_enum*, %struct.symt_function*, %struct.vector*)* @symt_enum_locals_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symt_enum_locals_helper(%struct.module_pair* %0, i32* %1, %struct.sym_enum* %2, %struct.symt_function* %3, %struct.vector* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.module_pair*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sym_enum*, align 8
  %10 = alloca %struct.symt_function*, align 8
  %11 = alloca %struct.vector*, align 8
  %12 = alloca %struct.symt*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.symt_block*, align 8
  store %struct.module_pair* %0, %struct.module_pair** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.sym_enum* %2, %struct.sym_enum** %9, align 8
  store %struct.symt_function* %3, %struct.symt_function** %10, align 8
  store %struct.vector* %4, %struct.vector** %11, align 8
  store %struct.symt* null, %struct.symt** %12, align 8
  %18 = load %struct.module_pair*, %struct.module_pair** %7, align 8
  %19 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %108, %5
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.vector*, %struct.vector** %11, align 8
  %27 = call i32 @vector_length(%struct.vector* %26)
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %111

29:                                               ; preds = %24
  %30 = load %struct.vector*, %struct.vector** %11, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i64 @vector_at(%struct.vector* %30, i32 %31)
  %33 = inttoptr i64 %32 to %struct.symt**
  %34 = load %struct.symt*, %struct.symt** %33, align 8
  store %struct.symt* %34, %struct.symt** %12, align 8
  %35 = load %struct.symt*, %struct.symt** %12, align 8
  %36 = getelementptr inbounds %struct.symt, %struct.symt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %98 [
    i32 133, label %38
    i32 131, label %69
    i32 128, label %97
    i32 129, label %97
    i32 130, label %97
    i32 132, label %97
  ]

38:                                               ; preds = %29
  %39 = load %struct.symt*, %struct.symt** %12, align 8
  %40 = bitcast %struct.symt* %39 to %struct.symt_block*
  store %struct.symt_block* %40, %struct.symt_block** %17, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load %struct.symt_block*, %struct.symt_block** %17, align 8
  %43 = getelementptr inbounds %struct.symt_block, %struct.symt_block* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %38
  %47 = load %struct.symt_block*, %struct.symt_block** %17, align 8
  %48 = getelementptr inbounds %struct.symt_block, %struct.symt_block* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.symt_block*, %struct.symt_block** %17, align 8
  %51 = getelementptr inbounds %struct.symt_block, %struct.symt_block* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load i64, i64* %13, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46, %38
  br label %108

57:                                               ; preds = %46
  %58 = load %struct.module_pair*, %struct.module_pair** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.sym_enum*, %struct.sym_enum** %9, align 8
  %61 = load %struct.symt_function*, %struct.symt_function** %10, align 8
  %62 = load %struct.symt_block*, %struct.symt_block** %17, align 8
  %63 = getelementptr inbounds %struct.symt_block, %struct.symt_block* %62, i32 0, i32 0
  %64 = call i32 @symt_enum_locals_helper(%struct.module_pair* %58, i32* %59, %struct.sym_enum* %60, %struct.symt_function* %61, %struct.vector* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %6, align 4
  br label %113

68:                                               ; preds = %57
  br label %107

69:                                               ; preds = %29
  %70 = load %struct.symt*, %struct.symt** %12, align 8
  %71 = call i32* @symt_get_nameW(%struct.symt* %70)
  store i32* %71, i32** %15, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @dbghelp_options, align 4
  %75 = load i32, i32* @SYMOPT_CASE_INSENSITIVE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @SymMatchStringW(i32* %72, i32* %73, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = call i32 (...) @GetProcessHeap()
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @HeapFree(i32 %81, i32 0, i32* %82)
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %69
  %87 = load %struct.sym_enum*, %struct.sym_enum** %9, align 8
  %88 = load %struct.module_pair*, %struct.module_pair** %7, align 8
  %89 = load %struct.symt_function*, %struct.symt_function** %10, align 8
  %90 = load %struct.symt*, %struct.symt** %12, align 8
  %91 = call i32 @send_symbol(%struct.sym_enum* %87, %struct.module_pair* %88, %struct.symt_function* %89, %struct.symt* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %6, align 4
  br label %113

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %69
  br label %107

97:                                               ; preds = %29, %29, %29, %29
  br label %107

98:                                               ; preds = %29
  %99 = load %struct.symt*, %struct.symt** %12, align 8
  %100 = getelementptr inbounds %struct.symt, %struct.symt* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.symt*, %struct.symt** %12, align 8
  %103 = getelementptr inbounds %struct.symt, %struct.symt* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %104)
  %106 = call i32 @assert(i32 0)
  br label %107

107:                                              ; preds = %98, %97, %96, %68
  br label %108

108:                                              ; preds = %107, %56
  %109 = load i32, i32* %14, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %24

111:                                              ; preds = %24
  %112 = load i32, i32* @TRUE, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %93, %66
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @vector_length(%struct.vector*) #1

declare dso_local i64 @vector_at(%struct.vector*, i32) #1

declare dso_local i32* @symt_get_nameW(%struct.symt*) #1

declare dso_local i32 @SymMatchStringW(i32*, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @send_symbol(%struct.sym_enum*, %struct.module_pair*, %struct.symt_function*, %struct.symt*) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
