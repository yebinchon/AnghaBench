; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/extr_dwarf.c_r_bin_dwarf_parse_opcodes.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/extr_dwarf.c_r_bin_dwarf_parse_opcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@DW_LNE_end_sequence = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32*, i64*, i64, %struct.TYPE_6__*, i32*, i32*, i32)* @r_bin_dwarf_parse_opcodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @r_bin_dwarf_parse_opcodes(i32* %0, i64* %1, i64 %2, %struct.TYPE_6__* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %7
  %23 = load i64*, i64** %10, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %11, align 8
  %27 = icmp ult i64 %26, 8
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %7
  store i64* null, i64** %8, align 8
  br label %106

29:                                               ; preds = %25
  %30 = load i64*, i64** %10, align 8
  store i64* %30, i64** %16, align 8
  %31 = load i64*, i64** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64* %33, i64** %17, align 8
  br label %34

34:                                               ; preds = %95, %29
  %35 = load i64*, i64** %16, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i64*, i64** %16, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64*, i64** %17, align 8
  %41 = icmp ult i64* %39, %40
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ %41, %37 ]
  br i1 %43, label %44, label %104

44:                                               ; preds = %42
  %45 = load i64*, i64** %16, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %16, align 8
  %47 = load i64, i64* %45, align 8
  store i64 %47, i64* %18, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %18, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %44
  %53 = load i64*, i64** %16, align 8
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %19, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i64*, i64** %16, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i64* @r_bin_dwarf_parse_ext_opcode(i32* %55, i64* %56, i64 %57, %struct.TYPE_6__* %58, i32* %59, i32* %60, i32 %61)
  store i64* %62, i64** %16, align 8
  %63 = load i64, i64* %19, align 8
  %64 = load i64, i64* @DW_LNE_end_sequence, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %104

67:                                               ; preds = %52
  br label %95

68:                                               ; preds = %44
  %69 = load i64, i64* %18, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %69, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load i32*, i32** %9, align 8
  %76 = load i64*, i64** %16, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i64, i64* %18, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i64* @r_bin_dwarf_parse_spec_opcode(i32* %75, i64* %76, i64 %77, %struct.TYPE_6__* %78, i32* %79, i64 %80, i32* %81, i32 %82)
  store i64* %83, i64** %16, align 8
  br label %94

84:                                               ; preds = %68
  %85 = load i32*, i32** %9, align 8
  %86 = load i64*, i64** %16, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i64, i64* %18, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i64* @r_bin_dwarf_parse_std_opcode(i32* %85, i64* %86, i64 %87, %struct.TYPE_6__* %88, i32* %89, i64 %90, i32* %91, i32 %92)
  store i64* %93, i64** %16, align 8
  br label %94

94:                                               ; preds = %84, %74
  br label %95

95:                                               ; preds = %94, %67
  %96 = load i64*, i64** %17, align 8
  %97 = load i64*, i64** %16, align 8
  %98 = ptrtoint i64* %96 to i64
  %99 = ptrtoint i64* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 8
  %102 = trunc i64 %101 to i32
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %11, align 8
  br label %34

104:                                              ; preds = %66, %42
  %105 = load i64*, i64** %16, align 8
  store i64* %105, i64** %8, align 8
  br label %106

106:                                              ; preds = %104, %28
  %107 = load i64*, i64** %8, align 8
  ret i64* %107
}

declare dso_local i64* @r_bin_dwarf_parse_ext_opcode(i32*, i64*, i64, %struct.TYPE_6__*, i32*, i32*, i32) #1

declare dso_local i64* @r_bin_dwarf_parse_spec_opcode(i32*, i64*, i64, %struct.TYPE_6__*, i32*, i64, i32*, i32) #1

declare dso_local i64* @r_bin_dwarf_parse_std_opcode(i32*, i64*, i64, %struct.TYPE_6__*, i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
