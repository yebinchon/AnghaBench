; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_jmp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_jmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i8*, i32, i32 }

@CR16_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"jump\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"j%s\00", align 1
@cr16_conds = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@cr16_regs_names = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"jal\00", align 1
@CR16_TYPE_JUMP_UNK = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"(%s,%s),(%s,%s)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"(%s,%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cr16_cmd*)* @cr16_decode_jmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_decode_jmp(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cr16_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %5, align 8
  store i32 2, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @r_read_le16(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 9
  switch i32 %11, label %167 [
    i32 128, label %12
    i32 129, label %48
    i32 11, label %69
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 5
  %15 = and i32 %14, 15
  %16 = icmp eq i32 %15, 14
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %22 = sub nsw i32 %21, 1
  %23 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %20, i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %36

24:                                               ; preds = %12
  %25 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i8**, i8*** @cr16_conds, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @cr16_get_dstreg(i32 %31)
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %27, i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %24, %17
  %37 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i8**, i8*** @cr16_regs_names, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @cr16_get_srcreg(i32 %43)
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %39, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %168

48:                                               ; preds = %2
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 -1, i32* %7, align 4
  br label %168

53:                                               ; preds = %48
  %54 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %56, i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @cr16_get_dstreg(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @cr16_get_srcreg(i32 %63)
  %65 = call i32 @cr16_print_reg_reg(%struct.cr16_cmd* %60, i64 %62, i64 %64)
  %66 = load i8*, i8** @CR16_TYPE_JUMP_UNK, align 8
  %67 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %68 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  br label %168

69:                                               ; preds = %2
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %108, label %73

73:                                               ; preds = %69
  %74 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %75 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %78 = sub nsw i32 %77, 1
  %79 = call i32 @strncpy(i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %81 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i8**, i8*** @cr16_regs_names, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i64 @cr16_get_dstreg(i32 %86)
  %88 = add i64 %87, 1
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** @cr16_regs_names, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i64 @cr16_get_dstreg(i32 %92)
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load i8**, i8*** @cr16_regs_names, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i64 @cr16_get_srcreg(i32 %97)
  %99 = add i64 %98, 1
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load i8**, i8*** @cr16_regs_names, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i64 @cr16_get_srcreg(i32 %103)
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %82, i32 %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %90, i8* %95, i8* %101, i8* %106)
  br label %166

108:                                              ; preds = %69
  %109 = load i32, i32* %6, align 4
  %110 = call i64 @cr16_get_dstreg(i32 %109)
  %111 = icmp ne i64 %110, 14
  br i1 %111, label %112, label %141

112:                                              ; preds = %108
  %113 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %114 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load i8**, i8*** @cr16_conds, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i64 @cr16_get_dstreg(i32 %119)
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %115, i32 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %122)
  %124 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %125 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load i8**, i8*** @cr16_regs_names, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i64 @cr16_get_srcreg(i32 %130)
  %132 = add i64 %131, 1
  %133 = getelementptr inbounds i8*, i8** %129, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** @cr16_regs_names, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @cr16_get_srcreg(i32 %136)
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %126, i32 %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %134, i8* %139)
  br label %165

141:                                              ; preds = %108
  %142 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %143 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %146 = sub nsw i32 %145, 1
  %147 = call i32 @strncpy(i32 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %149 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %152 = sub nsw i32 %151, 1
  %153 = load i8**, i8*** @cr16_regs_names, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i64 @cr16_get_srcreg(i32 %154)
  %156 = add i64 %155, 1
  %157 = getelementptr inbounds i8*, i8** %153, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load i8**, i8*** @cr16_regs_names, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i64 @cr16_get_srcreg(i32 %160)
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %150, i32 %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %158, i8* %163)
  br label %165

165:                                              ; preds = %141, %112
  br label %166

166:                                              ; preds = %165, %73
  br label %168

167:                                              ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %173

168:                                              ; preds = %166, %53, %52, %36
  %169 = load i8*, i8** @CR16_TYPE_JUMP_UNK, align 8
  %170 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %171 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  %172 = load i32, i32* %7, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %168, %167
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i64 @cr16_get_dstreg(i32) #1

declare dso_local i64 @cr16_get_srcreg(i32) #1

declare dso_local i32 @cr16_print_reg_reg(%struct.cr16_cmd*, i64, i64) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
