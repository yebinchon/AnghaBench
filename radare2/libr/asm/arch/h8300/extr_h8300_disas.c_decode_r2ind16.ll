; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_decode_r2ind16.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_decode_r2ind16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.h8300_cmd = type { i32 }

@H8300_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"r%u%c,@r%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.h8300_cmd*)* @decode_r2ind16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_r2ind16(i32* %0, %struct.h8300_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.h8300_cmd*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.h8300_cmd* %1, %struct.h8300_cmd** %5, align 8
  store i32 4, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %9 = call i64 @decode_opcode(i32* %7, %struct.h8300_cmd* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 4
  %21 = and i32 %20, 7
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 108, i32 104
  %29 = trunc i32 %28 to i8
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  %34 = call i32 @snprintf(i32 %15, i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %21, i8 signext %29, i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %12, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @decode_opcode(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
