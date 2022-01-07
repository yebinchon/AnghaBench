; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/lh5801/extr_lh5801.c_lh5801_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/lh5801/extr_lh5801.c_lh5801_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lh5801_insn_desc = type { i32, i32, i32 }
%struct.lh5801_insn = type { i32, i32, i32, i32*, i32 }

@lh5801_insn_descs = common dso_local global %struct.lh5801_insn_desc* null, align 8
@LH5801_IFMT_REG_MASK = common dso_local global i32 0, align 4
@LH5801_IFMT_RREG = common dso_local global i32 0, align 4
@LH5801_IFMT_COND = common dso_local global i32 0, align 4
@LH5801_IFMT_BCH = common dso_local global i32 0, align 4
@LH5801_IFMT_VEJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lh5801_decode(%struct.lh5801_insn* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lh5801_insn*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lh5801_insn_desc, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lh5801_insn* %0, %struct.lh5801_insn** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 253
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %22, %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %172

31:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %115, %31
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.lh5801_insn_desc*, %struct.lh5801_insn_desc** @lh5801_insn_descs, align 8
  %35 = call i32 @ARRAY_LENGTH(%struct.lh5801_insn_desc* %34)
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %118

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.lh5801_insn_desc*, %struct.lh5801_insn_desc** @lh5801_insn_descs, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.lh5801_insn_desc, %struct.lh5801_insn_desc* %40, i64 %42
  %44 = bitcast %struct.lh5801_insn_desc* %11 to i8*
  %45 = bitcast %struct.lh5801_insn_desc* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 12, i1 false)
  %46 = getelementptr inbounds %struct.lh5801_insn_desc, %struct.lh5801_insn_desc* %11, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @LH5801_IFMT_REG_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @lh5801_ifmt_fd_matches(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %37
  br label %115

56:                                               ; preds = %37
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @LH5801_IFMT_RREG, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = ashr i32 %61, 4
  %63 = srem i32 %62, 4
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %115

66:                                               ; preds = %60, %56
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @LH5801_IFMT_RREG, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 207
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @LH5801_IFMT_COND, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 241
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @LH5801_IFMT_BCH, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %12, align 4
  %88 = and i32 %87, 239
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %12, align 4
  %91 = getelementptr inbounds %struct.lh5801_insn_desc, %struct.lh5801_insn_desc* %11, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %9, align 4
  br label %118

96:                                               ; preds = %89
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @LH5801_IFMT_VEJ, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load i32, i32* %12, align 4
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %12, align 4
  %107 = icmp sge i32 %106, 192
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = icmp sle i32 %109, 246
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %9, align 4
  br label %118

113:                                              ; preds = %108, %105, %101
  br label %114

114:                                              ; preds = %113, %96
  br label %115

115:                                              ; preds = %114, %65, %55
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %32

118:                                              ; preds = %111, %94, %32
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 -1, i32* %4, align 4
  br label %172

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.lh5801_insn_desc, %struct.lh5801_insn_desc* %11, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.lh5801_insn*, %struct.lh5801_insn** %5, align 8
  %126 = getelementptr inbounds %struct.lh5801_insn, %struct.lh5801_insn* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.lh5801_insn*, %struct.lh5801_insn** %5, align 8
  %129 = getelementptr inbounds %struct.lh5801_insn, %struct.lh5801_insn* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.lh5801_insn*, %struct.lh5801_insn** %5, align 8
  %132 = getelementptr inbounds %struct.lh5801_insn, %struct.lh5801_insn* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.lh5801_insn*, %struct.lh5801_insn** %5, align 8
  %137 = getelementptr inbounds %struct.lh5801_insn, %struct.lh5801_insn* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = getelementptr inbounds %struct.lh5801_insn_desc, %struct.lh5801_insn_desc* %11, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @LH5801_IFMT_IMMS(i32 %139)
  switch i32 %140, label %165 [
    i32 3, label %141
    i32 2, label %149
    i32 1, label %157
  ]

141:                                              ; preds = %122
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.lh5801_insn*, %struct.lh5801_insn** %5, align 8
  %146 = getelementptr inbounds %struct.lh5801_insn, %struct.lh5801_insn* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32 %144, i32* %148, align 4
  br label %149

149:                                              ; preds = %122, %141
  %150 = load i32*, i32** %6, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.lh5801_insn*, %struct.lh5801_insn** %5, align 8
  %154 = getelementptr inbounds %struct.lh5801_insn, %struct.lh5801_insn* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 %152, i32* %156, align 4
  br label %157

157:                                              ; preds = %122, %149
  %158 = load i32*, i32** %6, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.lh5801_insn*, %struct.lh5801_insn** %5, align 8
  %162 = getelementptr inbounds %struct.lh5801_insn, %struct.lh5801_insn* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %160, i32* %164, align 4
  br label %165

165:                                              ; preds = %157, %122
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  %168 = getelementptr inbounds %struct.lh5801_insn_desc, %struct.lh5801_insn_desc* %11, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @LH5801_IFMT_IMMS(i32 %169)
  %171 = add nsw i32 %167, %170
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %165, %121, %30
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @ARRAY_LENGTH(%struct.lh5801_insn_desc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lh5801_ifmt_fd_matches(i32, i32) #1

declare dso_local i32 @LH5801_IFMT_IMMS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
