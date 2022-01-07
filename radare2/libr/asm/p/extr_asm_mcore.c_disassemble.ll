; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_mcore.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_mcore.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [256 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @mcore_init(i32* @handle, i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %4
  store i32 -1, i32* %5, align 4
  br label %44

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 2, i32* %22, align 4
  %23 = call i32* @mcore_next(i32* @handle)
  store i32* %23, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @mcore_snprint(i8* %26, i32 256, i32 %29, i32* %30)
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @mcore_free(i32* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %36 = call i32 @r_asm_op_set_asm(%struct.TYPE_6__* %34, i8* %35)
  br label %40

37:                                               ; preds = %20
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = call i32 @r_asm_op_set_asm(%struct.TYPE_6__* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %25
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %19
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @mcore_init(i32*, i32*, i32) #1

declare dso_local i32* @mcore_next(i32*) #1

declare dso_local i32 @mcore_snprint(i8*, i32, i32, i32*) #1

declare dso_local i32 @mcore_free(i32*) #1

declare dso_local i32 @r_asm_op_set_asm(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
