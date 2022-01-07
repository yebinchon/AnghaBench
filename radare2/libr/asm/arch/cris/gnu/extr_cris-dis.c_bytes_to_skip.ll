; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_bytes_to_skip.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_bytes_to_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cris_opcode = type { i8*, i64 }
%struct.cris_spec_reg = type { i32 }

@SIZE_FIX_32 = common dso_local global i64 0, align 8
@SIZE_SPEC_REG = common dso_local global i64 0, align 8
@cris_dis_v32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cris_opcode*, i32, %struct.cris_opcode*)* @bytes_to_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytes_to_skip(i32 %0, %struct.cris_opcode* %1, i32 %2, %struct.cris_opcode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cris_opcode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cris_opcode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cris_spec_reg*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cris_opcode* %1, %struct.cris_opcode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.cris_opcode* %3, %struct.cris_opcode** %9, align 8
  store i32 2, i32* %10, align 4
  %15 = load %struct.cris_opcode*, %struct.cris_opcode** %7, align 8
  %16 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  store i8* %18, i8** %12, align 8
  br label %19

19:                                               ; preds = %125, %4
  %20 = load i8*, i8** %12, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %128

23:                                               ; preds = %19
  %24 = load i8*, i8** %12, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 115
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %12, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 78
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 89
  br i1 %37, label %38, label %106

38:                                               ; preds = %33, %28, %23
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 1024
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %106

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 15
  %45 = icmp eq i32 %44, 15
  br i1 %45, label %46, label %106

46:                                               ; preds = %42
  %47 = load %struct.cris_opcode*, %struct.cris_opcode** %9, align 8
  %48 = icmp ne %struct.cris_opcode* %47, null
  br i1 %48, label %106, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = lshr i32 %50, 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 122
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 3
  %58 = and i32 %51, %57
  %59 = shl i32 1, %58
  store i32 %59, i32* %13, align 4
  %60 = load %struct.cris_opcode*, %struct.cris_opcode** %7, align 8
  %61 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SIZE_FIX_32, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 4
  store i32 %67, i32* %10, align 4
  br label %105

68:                                               ; preds = %49
  %69 = load %struct.cris_opcode*, %struct.cris_opcode** %7, align 8
  %70 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SIZE_SPEC_REG, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = lshr i32 %75, 12
  %77 = and i32 %76, 15
  %78 = load i32, i32* %8, align 4
  %79 = call %struct.cris_spec_reg* @spec_reg_info(i32 %77, i32 %78)
  store %struct.cris_spec_reg* %79, %struct.cris_spec_reg** %14, align 8
  %80 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** %14, align 8
  %81 = icmp ne %struct.cris_spec_reg* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  store i32 2, i32* %5, align 4
  br label %130

83:                                               ; preds = %74
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @cris_dis_v32, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %94

88:                                               ; preds = %83
  %89 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** %14, align 8
  %90 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  %93 = and i32 %92, -2
  br label %94

94:                                               ; preds = %88, %87
  %95 = phi i32 [ 4, %87 ], [ %93, %88 ]
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %104

98:                                               ; preds = %68
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  %101 = and i32 %100, -2
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %98, %94
  br label %105

105:                                              ; preds = %104, %65
  br label %124

106:                                              ; preds = %46, %42, %38, %33
  %107 = load i8*, i8** %12, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 110
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = add i32 %112, 4
  store i32 %113, i32* %10, align 4
  br label %123

114:                                              ; preds = %106
  %115 = load i8*, i8** %12, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 98
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* %10, align 4
  %121 = add i32 %120, 2
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %119, %114
  br label %123

123:                                              ; preds = %122, %111
  br label %124

124:                                              ; preds = %123, %105
  br label %125

125:                                              ; preds = %124
  %126 = load i8*, i8** %12, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %12, align 8
  br label %19

128:                                              ; preds = %19
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %82
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local %struct.cris_spec_reg* @spec_reg_info(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
