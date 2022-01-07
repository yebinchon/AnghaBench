; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-ext.c_arcExtMap_instName.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-ext.c_arcExtMap_instName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ExtInstruction** }
%struct.ExtInstruction = type { i32, i8, i32, i8*, %struct.ExtInstruction* }

@E_ARC_MACH_A4 = common dso_local global i32 0, align 4
@P = common dso_local global i32 0, align 4
@M = common dso_local global i32 0, align 4
@arc_extension_map = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arcExtMap_instName(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.ExtInstruction*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @E_ARC_MACH_A4, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %119

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 8, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %24, 11
  br i1 %25, label %26, label %56

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 1792
  %29 = ashr i32 %28, 8
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %10, align 1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 224
  %33 = ashr i32 %32, 5
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %11, align 1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 31
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %12, align 1
  %38 = load i8, i8* %12, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i8, i8* %12, align 1
  store i8 %41, i8* %8, align 1
  br label %55

42:                                               ; preds = %26
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8, i8* %10, align 1
  %48 = zext i8 %47 to i32
  br label %52

49:                                               ; preds = %42
  %50 = load i8, i8* %11, align 1
  %51 = zext i8 %50 to i32
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %48, %46 ], [ %51, %49 ]
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %8, align 1
  br label %55

55:                                               ; preds = %52, %40
  br label %118

56:                                               ; preds = %23, %20
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 4128768
  %59 = ashr i32 %58, 16
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %13, align 1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 63
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %14, align 1
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 117440512
  %66 = ashr i32 %65, 24
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 28672
  %69 = ashr i32 %68, 9
  %70 = or i32 %66, %69
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %15, align 1
  %72 = load i8, i8* %13, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %73, 47
  br i1 %74, label %75, label %108

75:                                               ; preds = %56
  %76 = load i32, i32* @P, align 4
  switch i32 %76, label %107 [
    i32 3, label %77
    i32 0, label %83
    i32 2, label %83
    i32 1, label %93
  ]

77:                                               ; preds = %75
  %78 = load i32, i32* @M, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i8, i8* %13, align 1
  store i8 %81, i8* %8, align 1
  br label %107

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %75, %75, %82
  %84 = load i8, i8* %13, align 1
  %85 = zext i8 %84 to i32
  %86 = ashr i32 %85, 1
  %87 = load i8, i8* %13, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 1
  %90 = shl i32 %89, 5
  %91 = or i32 %86, %90
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %8, align 1
  br label %107

93:                                               ; preds = %75
  %94 = load i8, i8* %13, align 1
  %95 = zext i8 %94 to i32
  %96 = ashr i32 %95, 1
  %97 = load i8, i8* %13, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 1
  %100 = or i32 %96, %99
  %101 = load i8, i8* %13, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 2
  %104 = shl i32 %103, 4
  %105 = or i32 %100, %104
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %8, align 1
  br label %107

107:                                              ; preds = %93, %75, %83, %80
  br label %117

108:                                              ; preds = %56
  %109 = load i8, i8* %14, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp ne i32 %110, 63
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i8, i8* %14, align 1
  store i8 %113, i8* %8, align 1
  br label %116

114:                                              ; preds = %108
  %115 = load i8, i8* %15, align 1
  store i8 %115, i8* %8, align 1
  br label %116

116:                                              ; preds = %114, %112
  br label %117

117:                                              ; preds = %116, %107
  br label %118

118:                                              ; preds = %117, %55
  br label %122

119:                                              ; preds = %3
  %120 = load i32, i32* %6, align 4
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %8, align 1
  br label %122

122:                                              ; preds = %119, %118
  %123 = load %struct.ExtInstruction**, %struct.ExtInstruction*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arc_extension_map, i32 0, i32 0), align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i8, i8* %8, align 1
  %126 = call i64 @INST_HASH(i32 %124, i8 zeroext %125)
  %127 = getelementptr inbounds %struct.ExtInstruction*, %struct.ExtInstruction** %123, i64 %126
  %128 = load %struct.ExtInstruction*, %struct.ExtInstruction** %127, align 8
  store %struct.ExtInstruction* %128, %struct.ExtInstruction** %9, align 8
  br label %129

129:                                              ; preds = %154, %122
  %130 = load %struct.ExtInstruction*, %struct.ExtInstruction** %9, align 8
  %131 = icmp ne %struct.ExtInstruction* %130, null
  br i1 %131, label %132, label %158

132:                                              ; preds = %129
  %133 = load %struct.ExtInstruction*, %struct.ExtInstruction** %9, align 8
  %134 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %132
  %139 = load %struct.ExtInstruction*, %struct.ExtInstruction** %9, align 8
  %140 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %139, i32 0, i32 1
  %141 = load i8, i8* %140, align 4
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* %8, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %138
  %147 = load %struct.ExtInstruction*, %struct.ExtInstruction** %9, align 8
  %148 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** %7, align 8
  store i32 %149, i32* %150, align 4
  %151 = load %struct.ExtInstruction*, %struct.ExtInstruction** %9, align 8
  %152 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %4, align 8
  br label %159

154:                                              ; preds = %138, %132
  %155 = load %struct.ExtInstruction*, %struct.ExtInstruction** %9, align 8
  %156 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %155, i32 0, i32 4
  %157 = load %struct.ExtInstruction*, %struct.ExtInstruction** %156, align 8
  store %struct.ExtInstruction* %157, %struct.ExtInstruction** %9, align 8
  br label %129

158:                                              ; preds = %129
  store i8* null, i8** %4, align 8
  br label %159

159:                                              ; preds = %158, %146
  %160 = load i8*, i8** %4, align 8
  ret i8* %160
}

declare dso_local i64 @INST_HASH(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
