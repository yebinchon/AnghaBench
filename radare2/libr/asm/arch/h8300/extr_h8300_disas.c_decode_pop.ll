; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_decode_pop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_decode_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.h8300_cmd = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@H8300_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"r%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.h8300_cmd*)* @decode_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_pop(i32* %0, %struct.h8300_cmd* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.h8300_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.h8300_cmd* %1, %struct.h8300_cmd** %4, align 8
  store i32 2, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.h8300_cmd*, %struct.h8300_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 7
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %18 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @strncpy(i8* %13, i8* %17, i32 %19)
  %21 = load %struct.h8300_cmd*, %struct.h8300_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8 0, i8* %27, align 1
  %28 = load %struct.h8300_cmd*, %struct.h8300_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 7
  %36 = call i32 @snprintf(i32 %30, i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
