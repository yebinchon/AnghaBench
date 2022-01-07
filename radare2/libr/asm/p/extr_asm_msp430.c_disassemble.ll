; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_msp430.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_msp430.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.msp430_cmd = type { i32, i64* }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@R_ASM_SYNTAX_ATT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.msp430_cmd, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @msp430_decode_command(i32* %12, i32 %13, %struct.msp430_cmd* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %9, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %9, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27, i64* %29)
  %31 = call i32 @r_strbuf_set(i32* %25, i32 %30)
  br label %39

32:                                               ; preds = %17
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = call i32 @r_strbuf_set(i32* %34, i32 %37)
  br label %39

39:                                               ; preds = %32, %23
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @R_ASM_SYNTAX_ATT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = call i64 @r_strbuf_get(i32* %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @r_str_replace_ch(i8* %51, i8 signext 35, i32 0, i32 1)
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @r_str_replace_ch(i8* %53, i8 signext 38, i32 0, i32 1)
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @r_str_replace_ch(i8* %55, i8 signext 37, i32 0, i32 1)
  br label %57

57:                                               ; preds = %46, %40
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  ret i32 %58
}

declare dso_local i32 @msp430_decode_command(i32*, i32, %struct.msp430_cmd*) #1

declare dso_local i32 @r_strbuf_set(i32*, i32) #1

declare dso_local i32 @sdb_fmt(i8*, i32, ...) #1

declare dso_local i64 @r_strbuf_get(i32*) #1

declare dso_local i32 @r_str_replace_ch(i8*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
