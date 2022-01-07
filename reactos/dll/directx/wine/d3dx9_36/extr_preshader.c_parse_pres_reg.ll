; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_parse_pres_reg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_parse_pres_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_pres_reg = type { i32, i32 }

@parse_pres_reg.reg_table = internal constant [8 x i32] [i32 133, i32 132, i32 134, i32 133, i32 130, i32 131, i32 129, i32 128], align 16
@.str = private unnamed_addr constant [33 x i8] c"Unsupported register table %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.d3dx_pres_reg*)* @parse_pres_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_pres_reg(i32* %0, %struct.d3dx_pres_reg* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.d3dx_pres_reg*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.d3dx_pres_reg* %1, %struct.d3dx_pres_reg** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @parse_pres_reg.reg_table, i64 0, i64 0))
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* @parse_pres_reg.reg_table, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 133
  br i1 %16, label %17, label %21

17:                                               ; preds = %10, %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32* null, i32** %3, align 8
  br label %36

21:                                               ; preds = %10
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %4, align 8
  %24 = load i32, i32* %22, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* @parse_pres_reg.reg_table, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.d3dx_pres_reg*, %struct.d3dx_pres_reg** %5, align 8
  %29 = getelementptr inbounds %struct.d3dx_pres_reg, %struct.d3dx_pres_reg* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %4, align 8
  %32 = load i32, i32* %30, align 4
  %33 = load %struct.d3dx_pres_reg*, %struct.d3dx_pres_reg** %5, align 8
  %34 = getelementptr inbounds %struct.d3dx_pres_reg, %struct.d3dx_pres_reg* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %4, align 8
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %21, %17
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
