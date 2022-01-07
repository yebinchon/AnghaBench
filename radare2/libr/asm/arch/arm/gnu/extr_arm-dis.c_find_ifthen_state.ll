; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_arm-dis.c_find_ifthen_state.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_arm-dis.c_find_ifthen_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i32 (i64, i32*, i32, %struct.disassemble_info*)*, i64 (i64, %struct.disassemble_info*)* }

@ifthen_address = common dso_local global i64 0, align 8
@ifthen_state = common dso_local global i32 0, align 4
@MAP_ARM = common dso_local global i32 0, align 4
@MAP_THUMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.disassemble_info*, i64)* @find_ifthen_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_ifthen_state(i64 %0, %struct.disassemble_info* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.disassemble_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.disassemble_info* %1, %struct.disassemble_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* @ifthen_address, align 8
  store i32 0, i32* @ifthen_state, align 4
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %13, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %132, %3
  %19 = load i64, i64* %13, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %23 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %22, i32 0, i32 1
  %24 = load i64 (i64, %struct.disassemble_info*)*, i64 (i64, %struct.disassemble_info*)** %23, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %27 = call i64 %24(i64 %25, %struct.disassemble_info* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %133

37:                                               ; preds = %32, %29
  br label %145

38:                                               ; preds = %21
  %39 = load i64, i64* %13, align 8
  %40 = sub nsw i64 %39, 2
  store i64 %40, i64* %13, align 8
  %41 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %42 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %41, i32 0, i32 0
  %43 = load i32 (i64, i32*, i32, %struct.disassemble_info*)*, i32 (i64, i32*, i32, %struct.disassemble_info*)** %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %48 = call i32 %43(i64 %44, i32* %46, i32 2, %struct.disassemble_info* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %145

52:                                               ; preds = %38
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 8
  %63 = or i32 %58, %62
  store i32 %63, i32* %8, align 4
  br label %73

64:                                               ; preds = %52
  %65 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 %70, 8
  %72 = or i32 %67, %71
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %64, %55
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 63488
  %79 = icmp ult i32 %78, 59392
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %133

85:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %85, %76
  br label %87

87:                                               ; preds = %86, %73
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 65280
  %90 = icmp eq i32 %89, 48896
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, 15
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %91
  %96 = load i32, i32* @MAP_ARM, align 4
  store i32 %96, i32* %14, align 4
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %99 = call i64 @mapping_symbol_for_insn(i64 %97, %struct.disassemble_info* %98, i32* %14)
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %15, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load i64, i64* %15, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @MAP_THUMB, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105, %95
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %10, align 4
  %112 = ashr i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %109, %105, %102
  br label %114

114:                                              ; preds = %113, %91, %87
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 63488
  %117 = icmp uge i32 %116, 59392
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %125

121:                                              ; preds = %114
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 2
  %124 = or i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i32, i32* %10, align 4
  %127 = icmp sge i32 %126, 8
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  br label %145

132:                                              ; preds = %128, %125
  br label %18

133:                                              ; preds = %84, %36
  %134 = load i32, i32* %12, align 4
  %135 = and i32 %134, 224
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %11, align 4
  %138 = shl i32 %136, %137
  %139 = and i32 %138, 31
  %140 = or i32 %135, %139
  store i32 %140, i32* @ifthen_state, align 4
  %141 = load i32, i32* @ifthen_state, align 4
  %142 = and i32 %141, 15
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  store i32 0, i32* @ifthen_state, align 4
  br label %145

145:                                              ; preds = %37, %51, %131, %144, %133
  ret void
}

declare dso_local i64 @mapping_symbol_for_insn(i64, %struct.disassemble_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
