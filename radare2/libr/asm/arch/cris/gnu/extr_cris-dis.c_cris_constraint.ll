; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_cris_constraint.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_cris_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cris_disasm_data = type { i32 }
%struct.cris_opcode = type { i32 }
%struct.cris_spec_reg = type { i32 }

@NO_CRIS_PREFIX = common dso_local global i32 0, align 4
@cris_dis_v0_v10 = common dso_local global i32 0, align 4
@DIP_OPCODE = common dso_local global i32 0, align 4
@BDAP_QUICK_OPCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.cris_disasm_data*)* @cris_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cris_constraint(i8* %0, i32 %1, i32 %2, %struct.cris_disasm_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cris_disasm_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.cris_opcode*, align 8
  %15 = alloca %struct.cris_opcode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cris_spec_reg*, align 8
  %19 = alloca %struct.cris_spec_reg*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.cris_disasm_data* %3, %struct.cris_disasm_data** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %13, align 8
  br label %21

21:                                               ; preds = %191, %4
  %22 = load i8*, i8** %13, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %194

25:                                               ; preds = %21
  %26 = load i8*, i8** %13, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %190 [
    i32 33, label %29
    i32 85, label %41
    i32 77, label %42
    i32 109, label %56
    i32 83, label %62
    i32 115, label %72
    i32 121, label %72
    i32 89, label %72
    i32 66, label %94
    i32 68, label %161
    i32 80, label %176
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @NO_CRIS_PREFIX, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load %struct.cris_disasm_data*, %struct.cris_disasm_data** %9, align 8
  %35 = getelementptr inbounds %struct.cris_disasm_data, %struct.cris_disasm_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @cris_dis_v0_v10, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %29
  store i32 -1, i32* %5, align 4
  br label %204

40:                                               ; preds = %33
  br label %190

41:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %204

42:                                               ; preds = %25
  %43 = load i32, i32* %7, align 4
  %44 = lshr i32 %43, 12
  %45 = and i32 %44, 15
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 4
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 8
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %204

55:                                               ; preds = %51, %48, %42
  br label %190

56:                                               ; preds = %25
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 48
  %59 = icmp eq i32 %58, 48
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 -1, i32* %5, align 4
  br label %204

61:                                               ; preds = %56
  br label %190

62:                                               ; preds = %25
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @NO_CRIS_PREFIX, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 1024
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 1, i32* %12, align 4
  br label %190

71:                                               ; preds = %66, %62
  store i32 -1, i32* %5, align 4
  br label %204

72:                                               ; preds = %25, %25, %25
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @NO_CRIS_PREFIX, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 1024
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @NO_CRIS_PREFIX, align 4
  %83 = load %struct.cris_disasm_data*, %struct.cris_disasm_data** %9, align 8
  %84 = call %struct.cris_opcode* @get_opcode_entry(i32 %81, i32 %82, %struct.cris_disasm_data* %83)
  store %struct.cris_opcode* %84, %struct.cris_opcode** %14, align 8
  %85 = load %struct.cris_opcode*, %struct.cris_opcode** %14, align 8
  %86 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @DIP_OPCODE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  store i32 -1, i32* %5, align 4
  br label %204

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %76
  store i32 1, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %72
  br label %190

94:                                               ; preds = %25
  store i32 1, i32* %12, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @NO_CRIS_PREFIX, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %160

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @NO_CRIS_PREFIX, align 4
  %101 = load %struct.cris_disasm_data*, %struct.cris_disasm_data** %9, align 8
  %102 = call %struct.cris_opcode* @get_opcode_entry(i32 %99, i32 %100, %struct.cris_disasm_data* %101)
  store %struct.cris_opcode* %102, %struct.cris_opcode** %15, align 8
  %103 = load %struct.cris_opcode*, %struct.cris_opcode** %15, align 8
  %104 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @BDAP_QUICK_OPCODE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %159

108:                                              ; preds = %98
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 255
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp sgt i32 %111, 127
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %16, align 4
  %115 = sub nsw i32 %114, 256
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 80
  br i1 %121, label %122, label %142

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = lshr i32 %123, 12
  %125 = and i32 %124, 15
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load %struct.cris_disasm_data*, %struct.cris_disasm_data** %9, align 8
  %128 = getelementptr inbounds %struct.cris_disasm_data, %struct.cris_disasm_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call %struct.cris_spec_reg* @spec_reg_info(i32 %126, i32 %129)
  store %struct.cris_spec_reg* %130, %struct.cris_spec_reg** %18, align 8
  %131 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** %18, align 8
  %132 = icmp ne %struct.cris_spec_reg* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %122
  %134 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** %18, align 8
  %135 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %16, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %190

141:                                              ; preds = %133, %122
  br label %158

142:                                              ; preds = %116
  %143 = load i8*, i8** %13, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 82
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = load i32, i32* %7, align 4
  %150 = and i32 %149, 48
  %151 = icmp eq i32 %150, 32
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32, i32* %16, align 4
  %154 = icmp eq i32 %153, -4
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %190

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %142
  br label %158

158:                                              ; preds = %157, %141
  br label %159

159:                                              ; preds = %158, %98
  br label %160

160:                                              ; preds = %159, %94
  store i32 -1, i32* %5, align 4
  br label %204

161:                                              ; preds = %25
  %162 = load i32, i32* %7, align 4
  %163 = lshr i32 %162, 12
  %164 = and i32 %163, 15
  %165 = load i32, i32* %7, align 4
  %166 = and i32 %165, 15
  %167 = icmp eq i32 %164, %166
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %161
  store i32 -1, i32* %5, align 4
  br label %204

172:                                              ; preds = %161
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 4
  store i32 %174, i32* %10, align 4
  br label %175

175:                                              ; preds = %172
  br label %190

176:                                              ; preds = %25
  %177 = load i32, i32* %7, align 4
  %178 = lshr i32 %177, 12
  %179 = and i32 %178, 15
  %180 = load %struct.cris_disasm_data*, %struct.cris_disasm_data** %9, align 8
  %181 = getelementptr inbounds %struct.cris_disasm_data, %struct.cris_disasm_data* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call %struct.cris_spec_reg* @spec_reg_info(i32 %179, i32 %182)
  store %struct.cris_spec_reg* %183, %struct.cris_spec_reg** %19, align 8
  %184 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** %19, align 8
  %185 = icmp ne %struct.cris_spec_reg* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %176
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 3
  store i32 %188, i32* %10, align 4
  br label %190

189:                                              ; preds = %176
  store i32 -1, i32* %5, align 4
  br label %204

190:                                              ; preds = %25, %186, %175, %155, %140, %93, %70, %61, %55, %40
  br label %191

191:                                              ; preds = %190
  %192 = load i8*, i8** %13, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %13, align 8
  br label %21

194:                                              ; preds = %21
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @NO_CRIS_PREFIX, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  store i32 -1, i32* %5, align 4
  br label %204

202:                                              ; preds = %198, %194
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %202, %201, %189, %171, %160, %90, %71, %60, %54, %41, %39
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local %struct.cris_opcode* @get_opcode_entry(i32, i32, %struct.cris_disasm_data*) #1

declare dso_local %struct.cris_spec_reg* @spec_reg_info(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
