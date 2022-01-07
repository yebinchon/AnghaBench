; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_bcond_br.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_bcond_br.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32, i32, i32, i32 }

@CR16_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"br\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@CR16_TYPE_JUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"b%s\00", align 1
@cr16_conds = common dso_local global i8** null, align 8
@CR16_BCOND_2 = common dso_local global i32 0, align 4
@CR16_TYPE_BCOND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cr16_cmd*)* @cr16_decode_bcond_br to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_decode_bcond_br(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cr16_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %5, align 8
  store i32 2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @r_read_le16(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %236

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 14
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @cr16_get_opcode_low(i32 %21)
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %236

25:                                               ; preds = %20, %16
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 5
  %28 = and i32 %27, 15
  %29 = icmp eq i32 %28, 14
  br i1 %29, label %30, label %152

30:                                               ; preds = %25
  %31 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %35 = sub nsw i64 %34, 1
  %36 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %33, i64 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 1
  %39 = and i32 %38, 7
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %74

41:                                               ; preds = %30
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @r_read_at_le16(i32* %42, i32 2)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 4
  %47 = and i32 %46, 1
  %48 = shl i32 %47, 16
  %49 = or i32 %44, %48
  store i32 %49, i32* %9, align 4
  store i32 4, i32* %6, align 4
  %50 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %54 = sub nsw i64 %53, 1
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %52, i64 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 65536
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %41
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, -131072
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %68 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %73

69:                                               ; preds = %41
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %72 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %60
  br label %148

74:                                               ; preds = %30
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @cr16_get_opcode_i(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %116

78:                                               ; preds = %74
  store i32 4, i32* %6, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @r_read_at_le16(i32* %79, i32 2)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 1
  %84 = and i32 %83, 7
  %85 = shl i32 %84, 17
  %86 = or i32 %81, %85
  %87 = load i32, i32* %7, align 4
  %88 = ashr i32 %87, 4
  %89 = and i32 %88, 1
  %90 = shl i32 %89, 16
  %91 = or i32 %86, %90
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, 524288
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %78
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, -1048576
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %103 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %108

104:                                              ; preds = %78
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %107 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %95
  %109 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %110 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %113 = sub nsw i64 %112, 1
  %114 = load i32, i32* %9, align 4
  %115 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %111, i64 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %147

116:                                              ; preds = %74
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, 31
  %119 = load i32, i32* %7, align 4
  %120 = ashr i32 %119, 4
  %121 = and i32 %120, 480
  %122 = or i32 %118, %121
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 256
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %116
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, 65024
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %134 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %139

135:                                              ; preds = %116
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %138 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %135, %126
  %140 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %141 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %144 = sub nsw i64 %143, 1
  %145 = load i32, i32* %8, align 4
  %146 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %142, i64 %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %139, %108
  br label %148

148:                                              ; preds = %147, %73
  %149 = load i32, i32* @CR16_TYPE_JUMP, align 4
  %150 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %151 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 4
  br label %234

152:                                              ; preds = %25
  %153 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %154 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %157 = sub nsw i64 %156, 1
  %158 = load i8**, i8*** @cr16_conds, align 8
  %159 = load i32, i32* %7, align 4
  %160 = call i64 @cr16_get_cond(i32 %159)
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %155, i64 %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %162)
  %164 = load i32, i32* %7, align 4
  %165 = and i32 %164, 1
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %152
  store i32 -1, i32* %3, align 4
  br label %236

168:                                              ; preds = %152
  %169 = load i32, i32* %7, align 4
  %170 = ashr i32 %169, 8
  %171 = load i32, i32* @CR16_BCOND_2, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %198

173:                                              ; preds = %168
  %174 = load i32*, i32** %4, align 8
  %175 = call i32 @r_read_at_le16(i32* %174, i32 2)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @GET_BIT(i32 %177, i32 4)
  %179 = shl i32 %178, 16
  %180 = or i32 %176, %179
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = and i32 %181, 524288
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %173
  %185 = load i32, i32* %9, align 4
  %186 = or i32 %185, -1048576
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = inttoptr i64 %188 to i8*
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %192 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  br label %197

193:                                              ; preds = %173
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %196 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %193, %184
  store i32 4, i32* %6, align 4
  br label %223

198:                                              ; preds = %168
  %199 = load i32, i32* %7, align 4
  %200 = and i32 %199, 31
  %201 = load i32, i32* %7, align 4
  %202 = ashr i32 %201, 4
  %203 = and i32 %202, 480
  %204 = or i32 %200, %203
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = and i32 %205, 256
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %198
  %209 = load i32, i32* %8, align 4
  %210 = or i32 %209, 65024
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = inttoptr i64 %212 to i8*
  %214 = ptrtoint i8* %213 to i32
  %215 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %216 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 4
  br label %221

217:                                              ; preds = %198
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %220 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %217, %208
  %222 = load i32, i32* %8, align 4
  store i32 %222, i32* %9, align 4
  br label %223

223:                                              ; preds = %221, %197
  %224 = load i32, i32* @CR16_TYPE_BCOND, align 4
  %225 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %226 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 4
  %227 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %228 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %231 = sub nsw i64 %230, 1
  %232 = load i32, i32* %9, align 4
  %233 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %229, i64 %231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %223, %148
  %235 = load i32, i32* %6, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %234, %167, %24, %15
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @cr16_get_opcode_low(i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

declare dso_local i32 @r_read_at_le16(i32*, i32) #1

declare dso_local i64 @cr16_get_opcode_i(i32) #1

declare dso_local i64 @cr16_get_cond(i32) #1

declare dso_local i32 @GET_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
