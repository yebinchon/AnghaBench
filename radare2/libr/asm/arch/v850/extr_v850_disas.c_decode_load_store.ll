; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/v850/extr_v850_disas.c_decode_load_store.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/v850/extr_v850_disas.c_decode_load_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v850_cmd = type { i32, i32 }

@V850_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s.b\00", align 1
@instrs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"r%d, 0x%x[r%d]\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"0x%x[r%d], r%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.v850_cmd*)* @decode_load_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_load_store(i32* %0, i32 %1, %struct.v850_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v850_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v850_cmd* %2, %struct.v850_cmd** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %125

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @r_read_le16(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @r_read_at_le16(i32* %16, i32 2)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @get_opcode(i32 %18)
  switch i64 %19, label %124 [
    i64 129, label %20
    i64 131, label %43
    i64 130, label %66
    i64 128, label %95
  ]

20:                                               ; preds = %13
  %21 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @V850_INSTR_MAXLEN, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i8**, i8*** @instrs, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @get_opcode(i32 %27)
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %23, i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @V850_INSTR_MAXLEN, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @get_reg2(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @get_reg1(i32 %40)
  %42 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %34, i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %41)
  br label %124

43:                                               ; preds = %13
  %44 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @V850_INSTR_MAXLEN, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i8**, i8*** @instrs, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @get_opcode(i32 %50)
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %46, i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %56 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @V850_INSTR_MAXLEN, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @get_reg1(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @get_reg2(i32 %63)
  %65 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %57, i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62, i32 %64)
  br label %124

66:                                               ; preds = %13
  %67 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @V850_INSTR_MAXLEN, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i8**, i8*** @instrs, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @get_opcode(i32 %73)
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 119, i32 104
  %82 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %69, i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %76, i32 %81)
  %83 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %84 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @V850_INSTR_MAXLEN, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, 65534
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @get_reg1(i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @get_reg2(i32 %92)
  %94 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %85, i32 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %91, i32 %93)
  br label %124

95:                                               ; preds = %13
  %96 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %97 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @V850_INSTR_MAXLEN, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load i8**, i8*** @instrs, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i64 @get_opcode(i32 %102)
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 119, i32 104
  %111 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %98, i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %105, i32 %110)
  %112 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @V850_INSTR_MAXLEN, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @get_reg2(i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, 65534
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @get_reg1(i32 %121)
  %123 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %114, i32 %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %120, i32 %122)
  br label %124

124:                                              ; preds = %13, %95, %66, %43, %20
  store i32 4, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %12
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @r_read_at_le16(i32*, i32) #1

declare dso_local i64 @get_opcode(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @get_reg2(i32) #1

declare dso_local i32 @get_reg1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
