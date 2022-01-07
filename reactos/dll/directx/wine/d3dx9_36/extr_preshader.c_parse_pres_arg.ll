; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_parse_pres_arg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_parse_pres_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_pres_operand = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Byte code buffer ends unexpectedly, count %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Unknown relative addressing flag, word %#x.\0A\00", align 1
@PRES_REGTAB_COUNT = common dso_local global i64 0, align 8
@PRES_REGTAB_OBCONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, %struct.d3dx_pres_operand*)* @parse_pres_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_pres_arg(i32* %0, i32 %1, %struct.d3dx_pres_operand* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.d3dx_pres_operand*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.d3dx_pres_operand* %2, %struct.d3dx_pres_operand** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %15, 5
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @WARN(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32* null, i32** %4, align 8
  br label %68

20:                                               ; preds = %14, %10
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32* null, i32** %4, align 8
  br label %68

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %7, align 8
  %36 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %35, i32 0, i32 1
  %37 = call i32* @parse_pres_reg(i32* %34, %struct.TYPE_2__* %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32* null, i32** %4, align 8
  br label %68

41:                                               ; preds = %32
  br label %49

42:                                               ; preds = %20
  %43 = load i64, i64* @PRES_REGTAB_COUNT, align 8
  %44 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %7, align 8
  %45 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %5, align 8
  br label %49

49:                                               ; preds = %42, %41
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %7, align 8
  %52 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %51, i32 0, i32 0
  %53 = call i32* @parse_pres_reg(i32* %50, %struct.TYPE_2__* %52)
  store i32* %53, i32** %5, align 8
  %54 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %7, align 8
  %55 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PRES_REGTAB_OBCONST, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %7, align 8
  %62 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sdiv i32 %64, 4
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %49
  %67 = load i32*, i32** %5, align 8
  store i32* %67, i32** %4, align 8
  br label %68

68:                                               ; preds = %66, %40, %28, %17
  %69 = load i32*, i32** %4, align 8
  ret i32* %69
}

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32* @parse_pres_reg(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
