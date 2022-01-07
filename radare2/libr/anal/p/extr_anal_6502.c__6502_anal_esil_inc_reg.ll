; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_6502.c__6502_anal_esil_inc_reg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_6502.c__6502_anal_esil_inc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s,%s%s=\00", align 1
@_6502_FLAGS_NZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i8*)* @_6502_anal_esil_inc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_6502_anal_esil_inc_reg(%struct.TYPE_4__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %11 [
    i32 232, label %9
    i32 202, label %9
    i32 200, label %10
    i32 136, label %10
  ]

9:                                                ; preds = %3, %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %11

10:                                               ; preds = %3, %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %11

11:                                               ; preds = %3, %10, %9
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @r_strbuf_setf(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %14, i8* %15, i8* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = load i32, i32* @_6502_FLAGS_NZ, align 4
  %20 = call i32 @_6502_anal_update_flags(%struct.TYPE_4__* %18, i32 %19)
  ret void
}

declare dso_local i32 @r_strbuf_setf(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @_6502_anal_update_flags(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
