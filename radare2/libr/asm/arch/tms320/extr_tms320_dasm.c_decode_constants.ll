; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_decode_constants.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_decode_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@K8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"K8\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%02X\00", align 1
@K16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"K16\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%04X\00", align 1
@k4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"K4\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%01X\00", align 1
@k5 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"k5\00", align 1
@k8 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"k8\00", align 1
@k12 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"k12\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"0x%03X\00", align 1
@k16 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"k16\00", align 1
@k3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"k7\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"k9\00", align 1
@D16 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"D16\00", align 1
@SHFT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"#SHFT\00", align 1
@SHIFTW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"#SHIFTW\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_constants(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = load i32, i32* @K8, align 4
  %5 = call i64 @field_valid(%struct.TYPE_5__* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = load i32, i32* @K8, align 4
  %13 = call i32 @field_value(%struct.TYPE_5__* %11, i32 %12)
  %14 = call i32 @substitute(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = load i32, i32* @K16, align 4
  %18 = call i64 @field_valid(%struct.TYPE_5__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = load i32, i32* @K16, align 4
  %26 = call i32 @field_value(%struct.TYPE_5__* %24, i32 %25)
  %27 = call i32 @be16(i32 %26)
  %28 = call i32 @substitute(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %20, %15
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = load i32, i32* @k4, align 4
  %32 = call i64 @field_valid(%struct.TYPE_5__* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = load i32, i32* @k4, align 4
  %40 = call i32 @field_value(%struct.TYPE_5__* %38, i32 %39)
  %41 = call i32 @substitute(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = load i32, i32* @k5, align 4
  %45 = call i64 @field_valid(%struct.TYPE_5__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = load i32, i32* @k5, align 4
  %53 = call i32 @field_value(%struct.TYPE_5__* %51, i32 %52)
  %54 = call i32 @substitute(i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = load i32, i32* @k8, align 4
  %58 = call i64 @field_valid(%struct.TYPE_5__* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = load i32, i32* @k8, align 4
  %66 = call i32 @field_value(%struct.TYPE_5__* %64, i32 %65)
  %67 = call i32 @substitute(i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %60, %55
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = load i32, i32* @k12, align 4
  %71 = call i64 @field_valid(%struct.TYPE_5__* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = load i32, i32* @k12, align 4
  %79 = call i32 @field_value(%struct.TYPE_5__* %77, i32 %78)
  %80 = call i32 @be16(i32 %79)
  %81 = call i32 @substitute(i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %73, %68
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = load i32, i32* @k16, align 4
  %85 = call i64 @field_valid(%struct.TYPE_5__* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %92 = load i32, i32* @k16, align 4
  %93 = call i32 @field_value(%struct.TYPE_5__* %91, i32 %92)
  %94 = call i32 @be16(i32 %93)
  %95 = call i32 @substitute(i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %87, %82
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = load i32, i32* @k4, align 4
  %99 = call i64 @field_valid(%struct.TYPE_5__* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %96
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = load i32, i32* @k3, align 4
  %104 = call i64 @field_valid(%struct.TYPE_5__* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = load i32, i32* @k3, align 4
  %112 = call i32 @field_value(%struct.TYPE_5__* %110, i32 %111)
  %113 = shl i32 %112, 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %115 = load i32, i32* @k4, align 4
  %116 = call i32 @field_value(%struct.TYPE_5__* %114, i32 %115)
  %117 = or i32 %113, %116
  %118 = call i32 @substitute(i32 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %106, %101, %96
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %121 = load i32, i32* @k4, align 4
  %122 = call i64 @field_valid(%struct.TYPE_5__* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %119
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %126 = load i32, i32* @k5, align 4
  %127 = call i64 @field_valid(%struct.TYPE_5__* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %134 = load i32, i32* @k5, align 4
  %135 = call i32 @field_value(%struct.TYPE_5__* %133, i32 %134)
  %136 = shl i32 %135, 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %138 = load i32, i32* @k4, align 4
  %139 = call i32 @field_value(%struct.TYPE_5__* %137, i32 %138)
  %140 = or i32 %136, %139
  %141 = call i32 @substitute(i32 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %129, %124, %119
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %144 = load i32, i32* @k4, align 4
  %145 = call i64 @field_valid(%struct.TYPE_5__* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %165

147:                                              ; preds = %142
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %149 = load i32, i32* @k8, align 4
  %150 = call i64 @field_valid(%struct.TYPE_5__* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %147
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %157 = load i32, i32* @k8, align 4
  %158 = call i32 @field_value(%struct.TYPE_5__* %156, i32 %157)
  %159 = shl i32 %158, 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %161 = load i32, i32* @k4, align 4
  %162 = call i32 @field_value(%struct.TYPE_5__* %160, i32 %161)
  %163 = or i32 %159, %162
  %164 = call i32 @substitute(i32 %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %152, %147, %142
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %167 = load i32, i32* @D16, align 4
  %168 = call i64 @field_valid(%struct.TYPE_5__* %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %165
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %175 = load i32, i32* @D16, align 4
  %176 = call i32 @field_value(%struct.TYPE_5__* %174, i32 %175)
  %177 = call i32 @be16(i32 %176)
  %178 = call i32 @substitute(i32 %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %170, %165
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %181 = load i32, i32* @SHFT, align 4
  %182 = call i64 @field_valid(%struct.TYPE_5__* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %189 = load i32, i32* @SHFT, align 4
  %190 = call i32 @field_value(%struct.TYPE_5__* %188, i32 %189)
  %191 = call i32 @substitute(i32 %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %184, %179
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %194 = load i32, i32* @SHIFTW, align 4
  %195 = call i64 @field_valid(%struct.TYPE_5__* %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %192
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %202 = load i32, i32* @SHIFTW, align 4
  %203 = call i32 @field_value(%struct.TYPE_5__* %201, i32 %202)
  %204 = call i32 @substitute(i32 %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %197, %192
  ret void
}

declare dso_local i64 @field_valid(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @substitute(i32, i8*, i8*, i32) #1

declare dso_local i32 @field_value(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
