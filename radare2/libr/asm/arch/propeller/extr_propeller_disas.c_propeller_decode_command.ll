; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/propeller/extr_propeller_disas.c_propeller_decode_command.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/propeller/extr_propeller_disas.c_propeller_decode_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.propeller_cmd = type { i8*, i8*, i32, i32, i32 }

@PROP_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@instrs = common dso_local global i8** null, align 8
@PROP_SUB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@PROP_SUBX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"subx\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"0x%x, #%d\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"0x%x, 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @propeller_decode_command(i32* %0, %struct.propeller_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.propeller_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.propeller_cmd* %1, %struct.propeller_cmd** %5, align 8
  store i32 -1, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @r_read_be32(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @get_opcode(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @get_con(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %21 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  store i32 4, i32* %3, align 4
  br label %214

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %202 [
    i32 186, label %28
    i32 185, label %28
    i32 184, label %28
    i32 183, label %28
    i32 182, label %28
    i32 181, label %28
    i32 180, label %28
    i32 179, label %28
    i32 178, label %28
    i32 177, label %28
    i32 176, label %28
    i32 175, label %28
    i32 174, label %28
    i32 173, label %28
    i32 172, label %28
    i32 169, label %28
    i32 168, label %28
    i32 167, label %28
    i32 166, label %28
    i32 165, label %28
    i32 164, label %28
    i32 163, label %28
    i32 162, label %28
    i32 161, label %28
    i32 160, label %28
    i32 159, label %28
    i32 158, label %28
    i32 157, label %28
    i32 156, label %28
    i32 155, label %28
    i32 154, label %28
    i32 153, label %28
    i32 152, label %28
    i32 151, label %28
    i32 150, label %28
    i32 149, label %28
    i32 148, label %28
    i32 147, label %28
    i32 146, label %28
    i32 145, label %28
    i32 144, label %28
    i32 143, label %28
    i32 142, label %28
    i32 141, label %28
    i32 140, label %28
    i32 139, label %28
    i32 138, label %28
    i32 137, label %28
    i32 136, label %28
    i32 135, label %28
    i32 134, label %28
    i32 133, label %28
    i32 132, label %28
    i32 131, label %28
    i32 130, label %28
    i32 129, label %28
    i32 128, label %28
    i32 171, label %136
    i32 170, label %198
  ]

28:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  %29 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** @instrs, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 149
  br i1 %39, label %46, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 148
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 147
  br i1 %45, label %46, label %60

46:                                               ; preds = %43, %40, %28
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @get_zcri(i32 %47)
  %49 = and i32 %48, 2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 119, i8* %55, align 1
  %56 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8 114, i8* %59, align 1
  br label %60

60:                                               ; preds = %51, %46, %43
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @PROP_SUB, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 134217728
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %73 = sub nsw i32 %72, 1
  %74 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %71, i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %91

75:                                               ; preds = %64, %60
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @PROP_SUBX, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 134217728
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %85 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %86, i32 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %83, %79, %75
  br label %91

91:                                               ; preds = %90, %68
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @is_immediate(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @get_src(i32 %96)
  %98 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %99 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @get_dst(i32 %100)
  %102 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %103 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %105 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @get_dst(i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @get_src(i32 %111)
  %113 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %106, i32 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %112)
  br label %135

114:                                              ; preds = %91
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @get_src(i32 %115)
  %117 = shl i32 %116, 2
  %118 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %119 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @get_dst(i32 %120)
  %122 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %123 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %125 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @get_dst(i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @get_src(i32 %131)
  %133 = shl i32 %132, 2
  %134 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %126, i32 %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %114, %95
  store i32 4, i32* %6, align 4
  br label %202

136:                                              ; preds = %26
  %137 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @decode_ext_cmd(%struct.propeller_cmd* %137, i32 %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %197

142:                                              ; preds = %136
  %143 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %144 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load i8**, i8*** @instrs, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %145, i32 %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %152)
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @is_immediate(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %142
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @get_src(i32 %158)
  %160 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %161 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @get_dst(i32 %162)
  %164 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %165 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %167 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %170 = sub nsw i32 %169, 1
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @get_dst(i32 %171)
  %173 = shl i32 %172, 2
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @get_src(i32 %174)
  %176 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %168, i32 %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %173, i32 %175)
  br label %196

177:                                              ; preds = %142
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @get_src(i32 %178)
  %180 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %181 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @get_dst(i32 %182)
  %184 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %185 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %187 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %190 = sub nsw i32 %189, 1
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @get_dst(i32 %191)
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @get_src(i32 %193)
  %195 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %188, i32 %190, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %192, i32 %194)
  br label %196

196:                                              ; preds = %177, %157
  store i32 4, i32* %6, align 4
  br label %197

197:                                              ; preds = %196, %136
  br label %202

198:                                              ; preds = %26
  %199 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @decode_jmp(%struct.propeller_cmd* %199, i32 %200)
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %26, %198, %197, %135
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %205 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* %6, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load %struct.propeller_cmd*, %struct.propeller_cmd** %5, align 8
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @decode_prefix(%struct.propeller_cmd* %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %202
  %213 = load i32, i32* %6, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %212, %16
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @r_read_be32(i32*) #1

declare dso_local i32 @get_opcode(i32) #1

declare dso_local i32 @get_con(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @get_zcri(i32) #1

declare dso_local i32 @is_immediate(i32) #1

declare dso_local i32 @get_src(i32) #1

declare dso_local i32 @get_dst(i32) #1

declare dso_local i32 @decode_ext_cmd(%struct.propeller_cmd*, i32) #1

declare dso_local i32 @decode_jmp(%struct.propeller_cmd*, i32) #1

declare dso_local i32 @decode_prefix(%struct.propeller_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
