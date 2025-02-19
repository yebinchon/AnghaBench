; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_muls.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_muls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32, i32 }

@CR16_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mulsb\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@cr16_regs_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"mulsw\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s,(%s,%s)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"muluw\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cr16_decode_muls(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cr16_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %5, align 8
  store i32 2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @r_read_le16(i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = ashr i32 %10, 9
  switch i32 %11, label %98 [
    i32 130, label %12
    i32 129, label %35
    i32 128, label %64
  ]

12:                                               ; preds = %2
  %13 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %15, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i8**, i8*** @cr16_regs_names, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @cr16_get_srcreg(i32 %25)
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** @cr16_regs_names, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @cr16_get_dstreg(i32 %30)
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %21, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* %33)
  br label %98

35:                                               ; preds = %2
  %36 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %38, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i8**, i8*** @cr16_regs_names, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @cr16_get_srcreg(i32 %48)
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** @cr16_regs_names, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @cr16_get_dstreg(i32 %53)
  %55 = add i64 %54, 1
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** @cr16_regs_names, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @cr16_get_dstreg(i32 %59)
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %44, i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %57, i8* %62)
  br label %98

64:                                               ; preds = %2
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 12
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 -1, i32* %3, align 4
  br label %100

69:                                               ; preds = %64
  %70 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %71 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %74 = sub nsw i32 %73, 1
  %75 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %72, i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %77 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load i8**, i8*** @cr16_regs_names, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @cr16_get_srcreg(i32 %82)
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load i8**, i8*** @cr16_regs_names, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @cr16_get_dstreg(i32 %87)
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i8**, i8*** @cr16_regs_names, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i64 @cr16_get_dstreg(i32 %93)
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %78, i32 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %85, i8* %91, i8* %96)
  br label %98

98:                                               ; preds = %2, %69, %35, %12
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %68
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i64 @cr16_get_srcreg(i32) #1

declare dso_local i64 @cr16_get_dstreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
