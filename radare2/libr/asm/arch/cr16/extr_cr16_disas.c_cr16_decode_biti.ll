; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_biti.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_biti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32, i32, i32 }

@CR16_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@ops_biti = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"$0x%02x,0x%08x\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"$0x%02x,0x%04x(%s)\00", align 1
@cr16_regs_names = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"$0x%02x,0(%s)\00", align 1
@CR16_TYPE_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cr16_decode_biti(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cr16_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %5, align 8
  store i32 2, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @r_read_le16(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = ashr i32 %14, 6
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %110

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @cr16_get_dstreg(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @cr16_get_srcreg(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, 6
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %110

28:                                               ; preds = %19
  %29 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %33 = sub nsw i64 %32, 1
  %34 = load i8**, i8*** @ops_biti, align 8
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 6
  %37 = and i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %34, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @cr16_get_opcode_i(i32 %41)
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 119, i32 98
  %46 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %31, i64 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 13
  %49 = and i32 %48, 2
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 1
  %52 = or i32 %49, %51
  switch i32 %52, label %104 [
    i32 0, label %53
    i32 1, label %73
    i32 3, label %90
  ]

53:                                               ; preds = %28
  store i32 4, i32* %6, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @r_read_at_le16(i32* %54, i32 2)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 1
  %59 = shl i32 %58, 16
  %60 = or i32 %56, %59
  %61 = load i32, i32* %10, align 4
  %62 = ashr i32 %61, 3
  %63 = shl i32 %62, 17
  %64 = or i32 %60, %63
  store i32 %64, i32* %7, align 4
  %65 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %66 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %69 = sub nsw i64 %68, 1
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %67, i64 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  br label %105

73:                                               ; preds = %28
  store i32 4, i32* %6, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @r_read_at_le16(i32* %74, i32 2)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %77 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %80 = sub nsw i64 %79, 1
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i8**, i8*** @cr16_regs_names, align 8
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, 9
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %78, i64 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82, i8* %88)
  br label %105

90:                                               ; preds = %28
  %91 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %92 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %95 = sub nsw i64 %94, 1
  %96 = load i32, i32* %11, align 4
  %97 = load i8**, i8*** @cr16_regs_names, align 8
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, 9
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %97, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %93, i64 %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %96, i8* %102)
  br label %105

104:                                              ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %90, %73, %53
  %106 = load i32, i32* @CR16_TYPE_BIT, align 4
  %107 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %108 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %105, %27, %18
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @cr16_get_dstreg(i32) #1

declare dso_local i32 @cr16_get_srcreg(i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

declare dso_local i64 @cr16_get_opcode_i(i32) #1

declare dso_local i32 @r_read_at_le16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
