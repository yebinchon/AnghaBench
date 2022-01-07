; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_decode_r82ind16.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_decode_r82ind16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.h8300_cmd = type { i32 }

@H8300_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"r%u%c,@r%u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"@r%u,r%u%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.h8300_cmd*)* @decode_r82ind16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_r82ind16(i32* %0, %struct.h8300_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.h8300_cmd*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.h8300_cmd* %1, %struct.h8300_cmd** %5, align 8
  store i32 2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %9 = call i64 @decode_opcode(i32* %7, %struct.h8300_cmd* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 128
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 7
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 8
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 108, i32 104
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 4
  %38 = and i32 %37, 7
  %39 = call i32 @snprintf(i32 %21, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %33, i32 %38)
  br label %62

40:                                               ; preds = %12
  %41 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 4
  %49 = and i32 %48, 7
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 7
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 8
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 108, i32 104
  %61 = call i32 @snprintf(i32 %43, i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %53, i32 %60)
  br label %62

62:                                               ; preds = %40, %18
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %11
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @decode_opcode(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
