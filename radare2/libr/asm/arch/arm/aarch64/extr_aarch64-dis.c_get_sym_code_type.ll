; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_get_sym_code_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_get_sym_code_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { %struct.TYPE_6__**, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@STT_FUNC = common dso_local global i32 0, align 4
@MAP_INSN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MAP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disassemble_info*, i32, i32*)* @get_sym_code_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sym_code_type(%struct.disassemble_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.disassemble_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.disassemble_info* %0, %struct.disassemble_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %12 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %17 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %20 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %18, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %4, align 4
  br label %106

31:                                               ; preds = %15, %3
  %32 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %33 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %34, i64 %36
  %38 = bitcast %struct.TYPE_6__** %37 to %struct.TYPE_5__**
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %8, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ELF_ST_TYPE(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @STT_FUNC, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %31
  %49 = load i32, i32* @MAP_INSN, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %4, align 4
  br label %106

52:                                               ; preds = %31
  %53 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %54 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call i8* @bfd_asymbol_name(%struct.TYPE_6__* %59)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 36
  br i1 %65, label %66, label %104

66:                                               ; preds = %52
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 120
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 100
  br i1 %77, label %78, label %104

78:                                               ; preds = %72, %66
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 46
  br i1 %89, label %90, label %104

90:                                               ; preds = %84, %78
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 120
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @MAP_INSN, align 4
  br label %100

98:                                               ; preds = %90
  %99 = load i32, i32* @MAP_DATA, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %4, align 4
  br label %106

104:                                              ; preds = %84, %72, %52
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %100, %48, %29
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @ELF_ST_TYPE(i32) #1

declare dso_local i8* @bfd_asymbol_name(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
